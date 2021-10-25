type Int=i32;
type Float=f32;
type Double=f64

//#region Matrise
export class Matrise {

  array: Array<Double>;
  kolonnar: Int;

  constructor(array: Array<Double>, size: Int) {
      this.array = array;
      this.kolonnar = size;
  }


  radar(): Int {
    return this.array.length / this.kolonnar;
  }

  private rad(i: Int): Int { return i / this.kolonnar; }
  private kol(i: Int):Int { return i % this.kolonnar; }
  private idx(rad: Int, kol: Int): Int { return (rad * this.kolonnar) + kol; }
  getEl(kol: Int, rad: Int): Double { return this.array[this.idx(rad, kol)]; }
  setEl(value: Double, kol: Int, rad: Int):void { this.array[this.idx(rad, kol)] = value; }
  
  
  private det2(a:Array<Double>): Double {
	  return (a[0] * a[3]) - (a[1] * a[2]);
  }
  
  private submat(kol: Int): Array<Double> {
	  const numRows = this.kolonnar-1;
	  let res: Array<Double> = [];
	  for (let j=0; j < numRows; j++) {
		  const flrTerm = floor(kol / (j+1));
      const kolNum = (j+1)-min(1,flrTerm);
      for (let i=0; i < this.kolonnar; i++) {
        if (this.kol(i) === 0) { continue; }
        const apx = this.array[this.idx(i, kolNum)];
        res.push(apx);
      }
	  }
    return res;
  }
  
  determinant(): Double {
    if (this.kolonnar == 2) { return this.det2(this.array); }
    let res: Double = 0;
    for (let k=0; k < this.kolonnar; k++) {
      const minor = new Matrise(this.submat(k), this.kolonnar-1);
      res += ((k % 2 == 0) ? 1 : -1) * this.array[k] * minor.determinant();
    }
    return res;
  }

  transpose(): Matrise {
    let res: Array<Double> = new Array<Double>(this.array.length);
    const kols = this.radar();
    for (let i=0; i < this.array.length; i++) {
      const el = this.array[i];
      const transpIdx = this.idx(this.kol(i), this.rad(i));
      res[transpIdx] = el;
    }
    return new Matrise(res, kols);
  }

  skaler(skalar: Double): Matrise {
    let res:Array<Double> = [];

    for (let i=0; i < this.array.length; i++) {
      const mul = skalar * this.array[i];
      res.push(mul);
    }

    return new Matrise(res, this.kolonnar);
  }

  dotProduktMat(matriseB: Matrise): Matrise {
    const newRows = this.radar();
    const newKols = matriseB.kolonnar;
    let res = new Array<Double>(newRows * newKols);

    for (let i=0; i < newRows; i++) {
      for (let j=0; j < newKols; j++) {
        let sum: Double = 0;
        for (let k=0; k < this.kolonnar; k++) {
          sum += this.getEl(k, i) * matriseB.getEl(j, k);
        }
        const idx = (i * newKols) + j;
        res[idx] = sum;
      }
    }
    return new Matrise(res, newKols);
  }

  static dotProduktMat(matriseA: Matrise, matriseB: Matrise): void {
    const res = matriseA.dotProduktMat(matriseB);
    matriseA.array = res.array;
    matriseA.kolonnar = res.kolonnar;
  }

  dotProduktVec(vektorB: Array<Double>): Array<Double> {
    const rads = this.radar();
    let res: Array<Double> = [];

    for (let i=0; i < rads; i++) {
      let sum: Double = 0;
      for (let k=0; k < rads; k++) {
        sum += this.getEl(k, i) * vektorB[k];
      }
      res.push(sum);
    }

    return res;
  }
  
}

//#endregion

//#region Punkt
export class Punkt {
  x: Double
  y: Double

  constructor(x: Double, y: Double) {
    this.x = x;
    this.y = y;
  }

  private toArray(): Array<Double> {
    return [this.x, this.y];
  }

  add(rhs: Punkt): Punkt {
    return new Punkt(this.x + rhs.x, this.y + rhs.y);
  }

  sub(rhs: Punkt): Punkt {
    return new Punkt(this.x - rhs.x, this.y - rhs.y);
  }

  mul(rhs: Punkt): Punkt {
    return new Punkt(this.x * rhs.x, this.y * rhs.y);
  }

  skal(lhs: Double): void {
    this.x *= lhs; this.y *= lhs;
  }

  applyTransformation(matrix: Matrise):void {
    const res = matrix.dotProduktVec(this.toArray());
    this.x = res[0];
    this.y = res[1];
  }

  static identity(): Matrise {
    return new Matrise([1, 0,
                        0, 1], 2);
  }

  //Rotation matrix
  static rotateXY(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([c, -s,
                        s, c], 2);
  }

}
//#endregion

//#region Vektor3
export class Vektor3 {
  x: Double
  y: Double
  z: Double

  constructor(x: Double, y: Double, z: Double) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  private toArray(): Array<Double> {
    return [this.x, this.y, this.z];
  }

  add(rhs: Vektor3): Vektor3 {
    return new Vektor3(this.x + rhs.x, this.y + rhs.y, this.z + rhs.z);
  }

  sub(rhs: Vektor3): Vektor3 {
    return new Vektor3(this.x - rhs.x, this.y - rhs.y, this.z - rhs.z);
  }

  mul(rhs: Vektor3): Vektor3 {
    return new Vektor3(this.x * rhs.x, this.y * rhs.y, this.z * rhs.z);
  }

  skal(lhs: Double): void {
    this.x *= lhs; this.y *= lhs; this.z *= lhs;
  }

  applyTransformation(matrix: Matrise): void {
    const res = matrix.dotProduktVec(this.toArray());
    this.x = res[0];
    this.y = res[1];
    this.z = res[2];
  }

  static identity(): Matrise {
    return new Matrise([1, 0, 0,
                        0, 1, 0,
                        0, 0, 1], 3);
  }

  //Rotation matrices
  static rotateYZ(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([1, 0, 0,
                        0, c, -s,
                        0, s, c], 3);
  }

  static rotateXZ(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([c, 0, -s,
                        0, 1, 0,
                        s, 0, c], 3);
  }

  static rotateXY(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([c, -s, 0,
                        s, c, 0,
                        0, 0, 1], 3);
  }

}
//#endregion

//#region Vektor4
export class Vektor4 {
  x: Double
  y: Double
  z: Double
  w: Double

  constructor(x: Double, y: Double, z: Double, w: Double) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = w;
  }

  private toArray(): Array<Double> {
    return [this.x, this.y, this.z, this.w];
  }

  add(rhs: Vektor4): Vektor4 {
    return new Vektor4(this.x + rhs.x, this.y + rhs.y, this.z + rhs.z, this.w + rhs.w);
  }

  sub(rhs: Vektor4): Vektor4 {
    return new Vektor4(this.x - rhs.x, this.y - rhs.y, this.z - rhs.z, this.w - rhs.w);
  }

  mul(rhs: Vektor4): Vektor4 {
    return new Vektor4(this.x * rhs.x, this.y * rhs.y, this.z * rhs.z, this.w * rhs.w);
  }

  skal(lhs: Double): void {
    this.x *= lhs; this.y *= lhs; this.z *= lhs; this.w *= lhs;
  }

  applyTransformation(matrix: Matrise): void {
    const res = matrix.dotProduktVec(this.toArray());
    this.x = res[0];
    this.y = res[1];
    this.z = res[2];
    this.w = res[3];
  }

  static identity(): Matrise {
    return new Matrise([1, 0, 0, 0,
                        0, 1, 0, 0,
                        0, 0, 1, 0,
                        0, 0, 0, 1], 4);
  }

  // Rotation matrices
  static rotateXY(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([c, -s, 0, 0,
                        s, c, 0, 0,
                        0, 0, 1, 0,
                        0, 0, 0, 1], 4);
  }

  static rotateXZ(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([c, 0, -s, 0,
                        0, 1, 0, 0,
                        s, 0, c, 0,
                        0, 0, 0, 1], 4);
  }

  static rotateYZ(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([1, 0, 0, 0,
                        0, c, -s, 0,
                        0, s, c, 0,
                        0, 0, 0, 1], 4);
  }

  static rotateXW(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([c, 0, 0, -s,
                        0, 1, 0, 0,
                        0, 0, 1, 0,
                        s, 0, 0, c], 4);
  }

  static rotateYW(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([1, 0, 0, 0,
                        0, c, 0, -s,
                        0, 0, 1, 0,
                        0, s, 0, c], 4);
  }

  static rotateZW(theta: Double): Matrise {
    const s = Math.sin(theta); const c = Math.cos(theta);
    return new Matrise([1, 0, 0, 0,
                        0, 1, 0, 0,
                        0, 0, c, -s,
                        0, 0, s, c], 4);
  }
}

//#endregion

//#region Proj
export class Proj {

  static isometrisk3D() : Matrise {
    const t1 = Math.atan(1/sqrt(2));
    const t2 = Math.atan(1);

    const trans1 = Vektor3.rotateYZ(t1);
    const trans2 = Vektor3.rotateXZ(t2);

    return trans1.dotProduktMat(trans2);
  }

  static isometrisk4D() : Matrise {
    const t1 = Math.atan(1);
    const t2 = Math.atan(1/sqrt(2));
    const t3 = Math.atan(1/sqrt(3));

    const trans1 = Vektor4.rotateXW(t1);
    const trans2 = Vektor4.rotateYW(t2);
    const trans3 = Vektor4.rotateZW(t2);

    return trans3.dotProduktMat(trans2).dotProduktMat(trans1);
  }


}
//#endregion