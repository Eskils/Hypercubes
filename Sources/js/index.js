class ThemeProxyObject {

    constructor() {
        this.usedKeys = new Set();
    }

}

const Theme = new Proxy(new ThemeProxyObject(), {
    get: function(_, prop, _) {
        return getComputedStyle(document.documentElement).getPropertyValue('--' + prop);
    },
    set: function(instance, prop, value) {
        instance.usedKeys.add(prop);
        document.documentElement.style.setProperty("--" + prop, value);
        return true;
    }
});

var Matrise, Punkt, Vektor3, Vektor4, Proj, Vektor, __getArray, __pin, __unpin;

function init() {
    loader.instantiate(fetch("./Sources/wasmModules/matte.wasm")).then(({ exports })=>{
        Punkt = exports.Punkt;
        Matrise = exports.Matrise;
        Vektor4 = exports.Vektor4;
        Vektor3 = exports.Vektor3;
        Proj = exports.Proj;
        Vektor = exports.Vektor;
        __getArray = exports.__getArray;
        __pin = exports.__pin;
        __unpin = exports.__unpin;
        main();
    });
}

init();