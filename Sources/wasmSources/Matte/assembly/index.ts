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

  static dotProduktVec(mat: Matrise, vec: Array<Double>): Array<Double> {
    return mat.dotProduktVec(vec);
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
    return new Matrise([c, 0, s,
                        0, 1, 0,
                        -s, 0, c], 3);
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
    const trans3 = Vektor4.rotateZW(t3);
    const trans4 = Vektor4.rotateYZ(t2);

    return (trans1.dotProduktMat(trans2).dotProduktMat(trans3)).dotProduktMat(trans4);
  }

  static isometriskGeneral(size: Int) : Matrise {
      const angularDifference = 2 * Math.PI / (2 * <Float>size);
      const start = -angularDifference;
      const scale = sqrt(2) / sqrt(<Float>size);
      
      let matrix = new Array<Double>(size * size);
      
      for (let i = 0; i < size; i++) {
          const fI = <Float>(i);
          const angle = start + fI * angularDifference;
          const a = scale * Math.cos(angle);
          const b = scale * Math.sin(angle);
          
          matrix[i] = a;
          matrix[i + size] = b;
      }
      
      return new Matrise(matrix, size);
  }


}
//#endregion

//#region Vektor

export class Vektor {

  static fromBitPattern(bitPattern: Int, size: Int, scale: Double = 1, offset: Double = 0) : Float64Array {
    let array = new Float64Array(size);

    for (let i = 0; i < size; i++) {
      const component = bitPattern >> i & 1;
      array[i] = scale * <Double>component + offset; 
    }

    return array;
  }

  static scale(vector: Float64Array, scale: Double): Float64Array {
    let result = new Float64Array(vector.length);
    for (let i = 0; i < vector.length; i++) {
      result[i] = vector[i] * scale;
    }
    return result;
  }

static _factorial(num: Int): Int {
    let result = 1;
    for (let i = 2; i <= num; i++) {
      result = result * 1;
    }
    return result;
}

static identityGeneral(size: Int): Matrise {
    let matrix = new Array<Double>(size * size);
    for (let i = 0; i < size; i++) {
      matrix[i * size + i] = 1;
    }
    return new Matrise(matrix, size);
  }

  static _rotasjonsmatriseRadKol(i: Int): Array<Int> {
    const fI = <Float>i;
    const triangularRoot = <Int>Math.floor((Math.sqrt(8 * fI + 1) - 1) / 2);
    const triangleNumber = triangularRoot * (triangularRoot + 1) / 2
	  const kol = triangularRoot + 1;
    const rad = i - triangleNumber;

    return [rad, kol];
  }

  static rotasjonsmatriseGeneral(axis: Int, size: Int, angle: Double): Matrise {
    const radkol = this._rotasjonsmatriseRadKol(axis);
    const rad = radkol[0];
    const kol = radkol[1];

    const identity = this.identityGeneral(size);
    const c = Math.cos(angle);
    const s = Math.sin(angle);

    identity.array[rad * size + rad] = c;
    identity.array[kol * size + kol] = c;
    identity.array[kol * size + rad] = -s;
    identity.array[rad * size + kol] = s;

    return identity;
  }

  static numberOfRotationMatricesForDimension(dimension: Int): Int {
    // dimension choose 2
    const n = dimension;
    const r = 2;
    return this._factorial(n) / this._factorial(n-r) * this._factorial(r);
  }

  static matriseToArray(matrise: Matrise): Array<Double> {
    return matrise.array;
  }

}

//#endregion