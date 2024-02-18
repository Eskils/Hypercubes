class Scene {
    constructor(selector, rotationControllsKontroller=null) {
        this.canvas = document.querySelector(selector);
        this.ctx = this.canvas.getContext("2d");
        this.rotationControllsKontroller = rotationControllsKontroller;
        this.fps = 60;
        this.onInit();
        this.sizeCanvas();
        this.animationInterval(1000/this.fps, this.update.bind(this));
        window.addEventListener("resize", this.sizeCanvas.bind(this));
    }

    onInit() {
        this.projmat3D = Proj.isometrisk3D();
        this.projmat4D = Proj.isometrisk4D();
        this.origPoints = [];
        this.points = [];
        this.shouldAnimate = true;
        this.size = 50;
        this.rpm = 60;
        this.modelType = ModelType.kvadrat;
        this.delta = this.rpm / (this.fps * 60);
        this.t = 0;

        Theme.shouldColorConnection = 1;

        this.animAkse2D = "rXY";
        this.animAkse3D = "rYZ";
        this.animAkse4D = "rZW";

        this.configureVerticesFromModel();
    }

    configureVerticesFromModel() {
        const size = ModelTypeDimensionSize(this.modelType);
        this.generalNCube(size);

        this.updateRotationControls();
    }

    updateRotationControls() {
        if (this.rotationControllsKontroller) {
            this.rotationControllsKontroller.controllers = this.getRotationControlls();
            this.rotationControllsKontroller.refresh();
        }
    }

    draw(ctx) {
        ctx.setTransform(1, 0, 0, 1, this.canvas.width/2, this.canvas.height/2);
        ctx.clearRect(-this.canvas.width/2, -this.canvas.height/2, this.canvas.width, this.canvas.height);
        ctx.fillStyle = Theme.primary;
        ctx.strokeStyle = Theme.secondary;
        ctx.lineWidth = Theme.lineWidth;
        this.drawLines();
        for (const pnt of this.points) {
            addPoint(ctx, pnt);
        }
    }


    update() {
        this.doChecksWithVariables();
        this.size = Theme.size;
        this.points = [];
        this.updateGeneral();
        this.draw(this.ctx);
        this.t = (this.t + this.delta) % (2*Math.PI);

        
    }

    doChecksWithVariables() {
        if (Theme.modelType != this.modelType) {
            this.modelType = parseInt(Theme.modelType);
            this.resetRotationVariables();
            this.configureVerticesFromModel();
        }

        if (Theme.shouldAnimate != this.shouldAnimate) {
            this.shouldAnimate = parseInt(Theme.shouldAnimate);
            this.t = 0;
            this.resetRotationVariables(true);
            this.updateRotationControls();
        }
    }

    resetRotationVariables(animate = false) {
        if (animate) {
            this._animateResetRotationVariables();
            return;
        }

        for (const plane of this.generalRotationPlanes()) {
            const key = "r" + plane;
            Theme[key] = 0
        }
    }

    _animateResetRotationVariables() {
        let planesToAnimate = [];
        let totalFrames = 0;

        for (const plane of this.generalRotationPlanes()) {
            const key = "r" + plane;
            const angle = +Theme[key];
            if (angle != 0) {
                const targetAngle = Math.ceil(angle / (Math.PI / 2)) * Math.PI / 2;
                const frames = Math.ceil((targetAngle - angle) / this.delta);
                if (frames > totalFrames) {
                    totalFrames = frames;
                }
                planesToAnimate.push([key, angle, frames]);
            }
        }

        if (planesToAnimate.length === 0) {
            return
        }

        let frame = 0;
        let finishedKeys = new Set();

        this.animationInterval(1000/this.fps, () => {
            for (const [key, angle, frames] of planesToAnimate) {
                if (finishedKeys.has(key)) {
                    continue;
                }

                const value = angle + this.t;
                Theme[key] = value;
                this.rotationControllsKontroller.setValueOfInput(key.slice(1, key.length), value);

                if (frame === frames) {
                    finishedKeys.add(key);
                }
            }
            frame += 1;

            if (frame == totalFrames) {
                this.resetRotationVariables(false);
                return false;
            }

            return true;
        });
    }

    updateKvadrat() {
        if (this.shouldAnimate) { Theme[this.animAkse2D] = this.t }

        const rotmat = Punkt.identity();
        Matrise.dotProduktMat(rotmat, Punkt.rotateXY(Theme.rXY));

        for (let pnt of this.origPoints) {
            const point = Punkt(pnt.x, pnt.y);
            point.skal(this.size);
            point.applyTransformation(rotmat);
            this.points.push(point);
        }
    }

    updateKube() {
        if (this.shouldAnimate) { Theme[this.animAkse3D] = this.t }

        const rotmat = Vektor3.identity();
        Matrise.dotProduktMat(rotmat, Vektor3.rotateXY(Theme.rXY));
        Matrise.dotProduktMat(rotmat, Vektor3.rotateYZ(Theme.rYZ));
        Matrise.dotProduktMat(rotmat, Vektor3.rotateXZ(Theme.rXZ));

        for (let pnt of this.origPoints) {
            const point = Vektor3(pnt.x, pnt.y, pnt.z);
            point.skal(this.size);
            point.applyTransformation(rotmat);
            point.applyTransformation(this.projmat3D);
            this.points.push(Punkt(point.x, point.y));
        }
    }

    updateHyperkube() {
        if (this.shouldAnimate) { Theme[this.animAkse4D] = this.t }

        const rotmat = Vektor4.identity();
        Matrise.dotProduktMat(rotmat, Vektor4.rotateXY(Theme.rXY));
        Matrise.dotProduktMat(rotmat, Vektor4.rotateYZ(Theme.rYZ));
        Matrise.dotProduktMat(rotmat, Vektor4.rotateXZ(Theme.rXZ));
        Matrise.dotProduktMat(rotmat, Vektor4.rotateXW(Theme.rXW));
        Matrise.dotProduktMat(rotmat, Vektor4.rotateYW(Theme.rYW));
        Matrise.dotProduktMat(rotmat, Vektor4.rotateZW(Theme.rZW));

        for (let pnt of this.origPoints) {
            const point = Vektor4(pnt.x, pnt.y, pnt.z, pnt.w);
            point.skal(this.size);
            point.applyTransformation(rotmat);
            point.applyTransformation(this.projmat4D);

            //const point3D = Vektor3(point.x, point.y, point.z);
            //point3D.applyTransformation(this.projmat3D);
            this.points.push(Punkt(point.x, point.y));
        }
    }

    updateGeneral() {
        if (this.shouldAnimate) { 
            const value = Math.PI * Math.sin(((this.t % Math.PI) - Math.PI / 2)) + Math.PI;
            Theme[this.currentRotationAxis()] = value;
         }

        const dimensionSize = ModelTypeDimensionSize(this.modelType);

        const rotationPlanes = this.generalRotationPlanes(dimensionSize);

        const rotmat = Vektor.identityGeneral(dimensionSize);
        for (const axis in rotationPlanes) {
            const plane = rotationPlanes[axis];
            const angle = Theme["r" + plane] || 0;
            const mat = Vektor.rotasjonsmatriseGeneral(axis, dimensionSize, angle);
            Matrise.dotProduktMat(rotmat, mat);
        }

        const projmat = Proj.isometriskGeneral(dimensionSize);

        for (const pnt of this.origPoints) {
            const point = Vektor.scale(pnt, this.size);
            const rotated = Matrise.dotProduktVec(rotmat, point);

            const projected = __getArray(Matrise.dotProduktVec(projmat, rotated));
            this.points.push(Punkt(projected[0], projected[1]));
        }
    }

    formatAsMatrix(array, size) {
        size = size || Math.sqrt(array.length);
        let text = "";
        for (let i = 0; i < size; i++) {
            for (let j = 0; j < size; j++) {
                const index = i * size + j;
                text += array[index] + " ";
            }
            text += "\n";
        }
        return text;
    }

    connectLinesGeneral(ctx, i, num, count, color) {
        const modulo = num * 2;
        if (i + num < count && Math.floor((i % modulo) / num) == 0) {
            const p1 = this.points[i];
            const p2 = this.points[i + num];
            if (color) {
                ctx.strokeStyle = color;
            }
            addLine(ctx, p1, p2);
            ctx.strokeStyle = Theme.secondary;
        }
    }

    drawLines() {
        const ctx = this.ctx;
        const count = this.points.length;
        const numDimensions = ModelTypeDimensionSize(this.modelType);
        for (let i = 0; i < count; i++) {
            const p1 = this.points[i];
            if (i+1 < count && i % 2 == 0) {
                const p2 = this.points[i+1];
                addLine(ctx, p1, p2);
            }
            for (let j = 0; j < numDimensions; j++) {
                const color = (j == numDimensions - 2 && Theme.shouldColorConnection == 1) ? `hsl(50 90% 80%)`: null;
                this.connectLinesGeneral(ctx, i, Math.pow(2, j), count, color);
            }
        }
    }

    kvadrat() {
        const p1 = Punkt(-1, -1);   // 0 0
        const p2 = Punkt(1, -1);    // 1 0
        const p3 = Punkt(1, 1);     // 1 1
        const p4 = Punkt(-1, 1);    // 0 1
        this.origPoints = [p1, p2, p3, p4];
    }

    kube() {
        const p1 = Vektor3(-1, -1, -1); // 0 0 0 
        const p2 = Vektor3(1, -1, -1);  // 1 0 0
        const p3 = Vektor3(1, 1, -1);   // 1 1 0
        const p4 = Vektor3(-1, 1, -1);  // 0 1 0
        const p5 = Vektor3(-1, -1, 1);  // 0 0 1
        const p6 = Vektor3(1, -1, 1);   // 1 0 1
        const p7 = Vektor3(1, 1, 1);    // 1 1 1
        const p8 = Vektor3(-1, 1, 1);   // 0 1 1
        this.origPoints = [p1, p2, p3, p4, p5, p6, p7, p8];
    }

    hyperkube() {
        const p1 = Vektor4(-1, -1, -1, -1);
        const p2 = Vektor4(1, -1, -1, -1);
        const p3 = Vektor4(1, 1, -1, -1);
        const p4 = Vektor4(-1, 1, -1, -1);
        const p5 = Vektor4(-1, -1, 1, -1);
        const p6 = Vektor4(1, -1, 1, -1);
        const p7 = Vektor4(1, 1, 1, -1);
        const p8 = Vektor4(-1, 1, 1, -1);
        const p9 = Vektor4(-1, -1, -1, 1);
        const p10 = Vektor4(1, -1, -1, 1);
        const p11 = Vektor4(1, 1, -1, 1);
        const p12 = Vektor4(-1, 1, -1, 1);
        const p13 = Vektor4(-1, -1, 1, 1);
        const p14 = Vektor4(1, -1, 1, 1);
        const p15 = Vektor4(1, 1, 1, 1);
        const p16 = Vektor4(-1, 1, 1, 1);
        this.origPoints = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16];
    }

    generalNCube(size) {
        const numPoints = Math.pow(2, size); 

        let points = [];

        for (let i = 0; i < numPoints; i++) {
            const pointPtr = Vektor.fromBitPattern(i, size, 2, -1);
            const point = pointPtr;
            points.push(point);
        }

        this.origPoints = points;
    }

    currentRotationAxis() {
        if (!this.shouldAnimate) { return ""; }
        switch (this.modelType) {
            case ModelType.kvadrat:
                return this.animAkse2D;
            case ModelType.kube:
                return this.animAkse3D;
            case ModelType.hyperkube:
                return this.animAkse4D;
            default:
                const size = ModelTypeDimensionSize(this.modelType);
                const rotationPlanes = this.generalRotationPlanes(size);
                const lastPlane = rotationPlanes[rotationPlanes.length - 1];
                return "r" + lastPlane;
        }
    }

    rotationControlls(axes) {
        const currentRotationAxis = this.currentRotationAxis().replace("r", "");
        const type = new InputNumberType(0, 2*Math.PI, 0);
        let res = [];
        for (const axis of axes) {
            if (axis === currentRotationAxis) { continue; }
            res.push(InputType.Number(axis, type, "r"+axis));
        }
        return res;
    }

    pointRotationControlls() { return this.rotationControlls(["XY"]); }
    vektor3RotationControlls() { return this.rotationControlls(["XY", "XZ", "YZ"]); }
    vektor4RotationControlls() { return this.rotationControlls(["XY", "XZ", "YZ", "XW", "YW", "ZW"]); }
    generalRotationControls(size) {
        const rotationPlanes = this.generalRotationPlanes(size);
        return this.rotationControlls(rotationPlanes);
    }
    generalRotationPlanes(size) {
        size = size || ModelTypeDimensionSize(this.modelType);
        const alphabet = "XYZWVUTSRQPONMLKJIHGFEDCBA";
        const axes = alphabet.slice(0, Math.min(size, alphabet.length));
        let rotationPlanes = [];

        for (const i in axes) {
            const axis = axes[i];
            const previousAxes = i
            for (let j = 0; j < previousAxes; j++) {
                const previousAxis = axes[j];
                const name = previousAxis + axis;
                rotationPlanes.push(name);
            }
        }

        return rotationPlanes;
    }

    getRotationControlls() {
        switch (this.modelType) {
            case ModelType.kvadrat:
                return this.pointRotationControlls();
            case ModelType.kube:
                return this.vektor3RotationControlls();
            case ModelType.hyperkube:
                return this.vektor4RotationControlls();
            default:
                return this.generalRotationControls(ModelTypeDimensionSize(this.modelType));
        }
    }

    sizeCanvas() {
        const width = parseInt(getComputedStyle(this.canvas).width);
        const height = parseInt(getComputedStyle(this.canvas).height);

        this.canvas.width = width;
        this.canvas.height = height;

        this.draw(this.ctx);
    }

    animationInterval(ms, callback) {
        function frame() {
            if (callback() === false) {
                return;
            }
            scheduleFrame();
        }

        function scheduleFrame() {
            setTimeout(() => requestAnimationFrame(frame), ms);
        }

        scheduleFrame();
    }
}