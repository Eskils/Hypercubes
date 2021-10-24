const ModelType = {
    kvadrat: 0,
    kube: 1,
    hyperkube: 2
}
const ModelTypeNames = {"2-cube": ModelType.kvadrat, "3-cube": ModelType.kube, "4-cube": ModelType.hyperkube};

function main() {
    const controllers = [
        InputType.Custom("Model Type", ModelTypeNames, "modelType"),
        InputType.Number("Size", new InputNumberType(0, 500, 100), "size"),
        InputType.Color("Background Color", Theme.background, "background"),
        InputType.Color("Node Color", Theme.primary, "primary"),
        InputType.Color("Line Color", Theme.secondary, "secondary"),
        InputType.Number("Line Width", new InputNumberType(0.5, 10, 2), "lineWidth"),
        InputType.Boolean("Rotate", true, "shouldAnimate"),
    ];

    new Kontroller("#kontroller", controllers);
    const rotationController = new Kontroller("#rotationKontroller", []);
    new Scene("#canvas", rotationController);
}

//Extensions

function addPoint(ctx, point, radii=2.5) {
    ctx.beginPath();
    ctx.ellipse(point.x, point.y, radii, radii, 0, 0, 2*Math.PI);
    ctx.closePath();
    ctx.fill();
}

function addLine(ctx, point1, point2) {
    ctx.beginPath();
    ctx.moveTo(point1.x, point1.y);
    ctx.lineTo(point2.x, point2.y);
    ctx.stroke();
}