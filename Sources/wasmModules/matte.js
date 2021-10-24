//#region Matrise
class Matrise {
    constructor(array, size) {
        this.array = array;
        this.kolonnar = size;
    }
    radar() {
        return this.array.length / this.kolonnar; //Unsure if this would return correct value (type casting).
    }
    rad(i) { return i / this.kolonnar; }
    kol(i) { return i % this.kolonnar; }
    idx(rad, kol) { return (rad * this.kolonnar) + kol; }
    getEl(kol, rad) { return this.array[this.idx(rad, kol)]; }
    setEl(value, kol, rad) { this.array[this.idx(rad, kol)] = value; }
    det2(a) {
        return (a[0] * a[3]) - (a[1] * a[2]);
    }
    //Untested
    submat(kol) {
        const numRows = this.kolonnar - 1;
        let res = [];
        for (let j = 0; j < numRows; j++) {
            const flrTerm = Math.floor(kol / (j + 1));
            const kolNum = (j + 1) - Math.min(1, flrTerm);
            for (let i = 0; i < this.kolonnar; i++) {
                if (this.kol(i) === 0) {
                    continue;
                }
                const apx = this.array[this.idx(i, kolNum)];
                res.push(apx);
            }
        }
        return res;
    }
    determinant() {
        if (this.kolonnar == 2) {
            return this.det2(this.array);
        }
        let res = 0;
        for (let k = 0; k < this.kolonnar; k++) {
            const minor = new Matrise(this.submat(k), this.kolonnar - 1);
            res += ((k % 2 == 0) ? 1 : -1) * this.array[k] * minor.determinant();
        }
        return res;
    }
    transpose() {
        let res = new Array(this.array.length);
        const kols = this.radar();
        for (let i = 0; i < this.array.length; i++) {
            const el = this.array[i];
            const transpIdx = this.idx(this.kol(i), this.rad(i));
            res[transpIdx] = el;
        }
        return new Matrise(res, kols);
    }
    skaler(skalar) {
        let res = [];
        for (let i = 0; i < this.array.length; i++) {
            const mul = skalar * this.array[i];
            res.push(mul);
        }
        return new Matrise(res, this.kolonnar);
    }
    dotProduktMat(matriseB) {
        const newRows = this.radar();
        const newKols = matriseB.kolonnar;
        let res = new Array(newRows * newKols);
        for (let i = 0; i < newRows; i++) {
            for (let j = 0; j < newKols; j++) {
                let sum = 0;
                for (let k = 0; k < this.kolonnar; k++) {
                    sum += this.getEl(k, i) * matriseB.getEl(j, k);
                }
                const idx = (i * newKols) + j;
                res[idx] = sum;
            }
        }
        return new Matrise(res, newKols);
    }
    dotProduktVec(vektorB) {
        const rads = this.radar();
        let res = [];
        for (let i = 0; i < rads; i++) {
            let sum = 0;
            for (let k = 0; k < rads; k++) {
                sum += this.getEl(k, i) * vektorB[k];
            }
            res.push(sum);
        }
        return res;
    }
}
//#endregion
//#region Punkt
class Punkt {
    constructor(x, y) {
        this.x = x;
        this.y = y;
    }
    toArray() {
        return [this.x, this.y];
    }
    add(rhs) {
        return new Punkt(this.x + rhs.x, this.y + rhs.y);
    }
    sub(rhs) {
        return new Punkt(this.x - rhs.x, this.y - rhs.y);
    }
    mul(rhs) {
        return new Punkt(this.x * rhs.x, this.y * rhs.y);
    }
    skal(lhs) {
        this.x *= lhs;
        this.y *= lhs;
        return new Punkt(lhs * this.x, lhs * this.y);
    }
    applyTransformation(matrix) {
        const res = matrix.dotProduktVec(this.toArray());
        this.x = res[0];
        this.y = res[1];
        //return new Punkt(res[0], res[1]);
    }
    static identity() {
        return new Matrise([1, 0,
            0, 1], 2);
    }
    //Rotation matrix
    static rotateXY(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([c, -s,
            s, c], 2);
    }
}
Punkt.zero = new Punkt(0, 0);
//#endregion
//#region Vektor3
class Vektor3 {
    constructor(x, y, z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    toArray() {
        return [this.x, this.y, this.z];
    }
    add(rhs) {
        return new Vektor3(this.x + rhs.x, this.y + rhs.y, this.z + rhs.z);
    }
    sub(rhs) {
        return new Vektor3(this.x - rhs.x, this.y - rhs.y, this.z - rhs.z);
    }
    mul(rhs) {
        return new Vektor3(this.x * rhs.x, this.y * rhs.y, this.z * rhs.z);
    }
    skal(lhs) {
        return new Vektor3(lhs * this.x, lhs * this.y, lhs * this.z);
    }
    applyTransformation(matrix) {
        const res = matrix.dotProduktVec(this.toArray());
        return new Vektor3(res[0], res[1], res[2]);
    }
    static identity() {
        return new Matrise([1, 0, 0,
            0, 1, 0,
            0, 0, 1], 3);
    }
    //Rotation matrices
    static rotateYZ(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([1, 0, 0,
            0, c, -s,
            0, s, c], 3);
    }
    static rotateXZ(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([c, 0, -s,
            0, 1, 0,
            s, 0, c], 3);
    }
    static rotateXY(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([c, -s, 0,
            s, c, 0,
            0, 0, 1], 3);
    }
}
Vektor3.zero = new Vektor3(0, 0, 0);
//#endregion
//#region Vektor4
class Vektor4 {
    constructor(x, y, z, w) {
        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }
    toArray() {
        return [this.x, this.y, this.z, this.w];
    }
    add(rhs) {
        return new Vektor4(this.x + rhs.x, this.y + rhs.y, this.z + rhs.z, this.w + rhs.w);
    }
    sub(rhs) {
        return new Vektor4(this.x - rhs.x, this.y - rhs.y, this.z - rhs.z, this.w - rhs.w);
    }
    mul(rhs) {
        return new Vektor4(this.x * rhs.x, this.y * rhs.y, this.z * rhs.z, this.w * rhs.w);
    }
    skal(lhs) {
        return new Vektor4(lhs * this.x, lhs * this.y, lhs * this.z, lhs * this.w);
    }
    applyTransformation(matrix) {
        const res = matrix.dotProduktVec(this.toArray());
        return new Vektor4(res[0], res[1], res[2], res[3]);
    }
    static identity() {
        return new Matrise([1, 0, 0, 0,
            0, 1, 0, 0,
            0, 0, 1, 0,
            0, 0, 0, 1], 4);
    }
    // Rotation matrices
    static rotateXY(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([c, -s, 0, 0,
            s, c, 0, 0,
            0, 0, 1, 0,
            0, 0, 0, 1], 4);
    }
    static rotateXZ(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([c, 0, -s, 0,
            0, 1, 0, 0,
            s, 0, c, 0,
            0, 0, 0, 1], 4);
    }
    static rotateYZ(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([1, 0, 0, 0,
            0, c, -s, 0,
            0, s, c, 0,
            0, 0, 0, 1], 4);
    }
    static rotateXW(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([c, 0, 0, -s,
            0, 1, 0, 0,
            0, 0, 1, 0,
            s, 0, 0, c], 4);
    }
    static rotateYW(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([1, 0, 0, 0,
            0, c, 0, -s,
            0, 0, 1, 0,
            0, s, 0, c], 4);
    }
    static rotateZW(theta) {
        const s = Math.sin(theta);
        const c = Math.cos(theta);
        return new Matrise([1, 0, 0, 0,
            0, 1, 0, 0,
            0, 0, c, -s,
            0, 0, s, c], 4);
    }
}
Vektor4.zero = new Vektor4(0, 0, 0, 0);
//#endregion
//#region Proj
class Proj {
    static isometrisk3D() {
        const t1 = Math.atan(1 / Math.sqrt(2));
        const t2 = Math.atan(1);
        const trans1 = Vektor3.rotateYZ(t1);
        const trans2 = Vektor3.rotateXZ(t2);
        return trans1.dotProduktMat(trans2);
    }
    static isometrisk4D() {
        const t1 = Math.atan(1);
        const t2 = Math.atan(1 / Math.sqrt(2));
        const t3 = Math.atan(1 / Math.sqrt(3));
        const trans1 = Vektor4.rotateXW(t1);
        const trans2 = Vektor4.rotateYW(t2);
        const trans3 = Vektor4.rotateZW(t2);
        return trans3.dotProduktMat(trans2).dotProduktMat(trans1);
    }
}
//#endregion
