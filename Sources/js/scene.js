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

        this.animAkse2D = "rXY";
        this.animAkse3D = "rXZ";
        this.animAkse4D = "rZW";

        this.configureVerticesFromModel();
    }

    configureVerticesFromModel() {
        switch (this.modelType) {
            case ModelType.kvadrat:
                this.kvadrat(); break;
            case ModelType.kube:
                this.kube(); break;
            case ModelType.hyperkube:
                this.hyperkube(); break;
        }

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
        switch (this.modelType) {
            case ModelType.kvadrat:
                this.updateKvadrat(); break;
            case ModelType.kube:
                this.updateKube(); break;
            case ModelType.hyperkube:
                this.updateHyperkube(); break;
        }
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
            this.resetRotationVariables();
            this.updateRotationControls();
            this.t = 0;
        }
    }

    resetRotationVariables() {
        Theme.rXY = 0;
        Theme.rXZ = 0;
        Theme.rXW = 0;
        Theme.rYZ = 0;
        Theme.rYW = 0;
        Theme.rZW = 0;
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

            const point3D = Vektor3(point.x, point.y, point.z);
            point3D.applyTransformation(this.projmat3D);
            this.points.push(Punkt(point3D.x, point3D.y));
        }
    }

    drawLines() {
        const ctx = this.ctx;
        const count = this.points.length;
        for (let i = 0; i < count; i++) {
            const p1 = this.points[i];
            if (i+1 < count && i % 2 == 0) {
                const p2 = this.points[i+1];
                addLine(ctx, p1, p2);
            }
            if (i+2 < count && Math.floor((i % 4)/2) == 0) {
                let p2;
                if (i % 4 == 0) { p2 = this.points[i+3]; }
                else { p2 = this.points[i+1]; }
                addLine(ctx, p1, p2);
            }
            if (i+4 < count && Math.floor((i % 8)/4) == 0) {
                const p2 = this.points[i+4];
                addLine(ctx, p1, p2);
            }
            if (i+8 < count) {
                const p2 = this.points[i+8];
                addLine(ctx, p1, p2);
            }
        }
    }

    kvadrat() {
        const p1 = Punkt(-1, -1);
        const p2 = Punkt(1, -1);
        const p3 = Punkt(1, 1);
        const p4 = Punkt(-1, 1);
        this.origPoints = [p1, p2, p3, p4];
    }

    kube() {
        const p1 = Vektor3(-1, -1, -1);
        const p2 = Vektor3(1, -1, -1);
        const p3 = Vektor3(1, 1, -1);
        const p4 = Vektor3(-1, 1, -1);
        const p5 = Vektor3(-1, -1, 1);
        const p6 = Vektor3(1, -1, 1);
        const p7 = Vektor3(1, 1, 1);
        const p8 = Vektor3(-1, 1, 1);
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

    currentRotationAxis() {
        if (!this.shouldAnimate) { return ""; }
        switch (this.modelType) {
            case ModelType.kvadrat:
                return this.animAkse2D;
            case ModelType.kube:
                return this.animAkse3D;
            case ModelType.hyperkube:
                return this.animAkse4D;
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

    getRotationControlls() {
        switch (this.modelType) {
            case ModelType.kvadrat:
                return this.pointRotationControlls();
            case ModelType.kube:
                return this.vektor3RotationControlls();
            case ModelType.hyperkube:
                return this.vektor4RotationControlls();
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
            callback();
            scheduleFrame();
        }

        function scheduleFrame() {
            setTimeout(() => requestAnimationFrame(frame), ms);
        }

        scheduleFrame();
    }
}