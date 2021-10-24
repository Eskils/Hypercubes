const Theme = new Proxy({}, {
    get: function(_, prop, _) {
        return getComputedStyle(document.documentElement).getPropertyValue('--' + prop);
    },
    set: function(_, prop, value) {
        document.documentElement.style.setProperty("--" + prop, value);
        return true;
    }
});

var Matrise, Punkt, Vektor3, Vektor4, Proj;

function init() {
    loader.instantiate(fetch("./Sources/wasmModules/matte.wasm")).then(({ exports })=>{
        Punkt = exports.Punkt;
        Matrise = exports.Matrise;
        Vektor4 = exports.Vektor4;
        Vektor3 = exports.Vektor3;
        Proj = exports.Proj;
        main();
    });
}

init();