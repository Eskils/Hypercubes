// GENERATED FILE. DO NOT EDIT.
var loader = (function(exports) {
  "use strict";
  
  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.instantiate = instantiate;
  exports.instantiateSync = instantiateSync;
  exports.instantiateStreaming = instantiateStreaming;
  exports.demangle = demangle;
  exports.default = void 0;
  // Runtime header offsets
  const ID_OFFSET = -8;
  const SIZE_OFFSET = -4; // Runtime ids
  
  const E_NO_EXPORT_RUNTIME = "Operation requires compiling with --exportRuntime";
  
  const F_NO_EXPORT_RUNTIME = () => {
    throw Error(E_NO_EXPORT_RUNTIME);
  };
  const THIS = Symbol();
  const STRING_SMALLSIZE = 192; // break-even point in V8
  
  const STRING_CHUNKSIZE = 1024; // mitigate stack overflow
  
  const utf16 = new TextDecoder("utf-16le", {
    fatal: true
  }); // != wtf16
  
  /** polyfill for Object.hasOwn */
  
  Object.hasOwn = Object.hasOwn || function (obj, prop) {
    return Object.prototype.hasOwnProperty.call(obj, prop);
  };
  /** Gets a string from memory. */
  
  
  function getStringImpl(buffer, ptr) {
    let len = new Uint32Array(buffer)[ptr + SIZE_OFFSET >>> 2] >>> 1;
    const wtf16 = new Uint16Array(buffer, ptr, len);
    if (len <= STRING_SMALLSIZE) return String.fromCharCode(...wtf16);
  
    try {
      return utf16.decode(wtf16);
    } catch {
      let str = "",
          off = 0;
  
      while (len - off > STRING_CHUNKSIZE) {
        str += String.fromCharCode(...wtf16.subarray(off, off += STRING_CHUNKSIZE));
      }
  
      return str + String.fromCharCode(...wtf16.subarray(off));
    }
  }
  /** Prepares the base module prior to instantiation. */
  
  
  function preInstantiate(imports) {
    const extendedExports = {};
  
    function getString(memory, ptr) {
      if (!memory) return "<yet unknown>";
      return getStringImpl(memory.buffer, ptr);
    } // add common imports used by stdlib for convenience
  
  
    const env = imports.env = imports.env || {};
  
    env.abort = env.abort || function abort(msg, file, line, colm) {
      const memory = extendedExports.memory || env.memory; // prefer exported, otherwise try imported
  
      throw Error(`abort: ${getString(memory, msg)} at ${getString(memory, file)}:${line}:${colm}`);
    };
  
    env.trace = env.trace || function trace(msg, n, ...args) {
      const memory = extendedExports.memory || env.memory;
      console.log(`trace: ${getString(memory, msg)}${n ? " " : ""}${args.slice(0, n).join(", ")}`);
    };
  
    env.seed = env.seed || Date.now;
    imports.Math = imports.Math || Math;
    imports.Date = imports.Date || Date;
    return extendedExports;
  }
  /** Prepares the final module once instantiation is complete. */
  
  
  function postInstantiate(extendedExports, instance) {
    const exports = instance.exports;
    const memory = exports.memory;
    const table = exports.table;
  
    const __new = exports.__new || F_NO_EXPORT_RUNTIME;
  
    const __pin = exports.__pin || F_NO_EXPORT_RUNTIME;
  
    const __unpin = exports.__unpin || F_NO_EXPORT_RUNTIME;
  
    const __collect = exports.__collect || F_NO_EXPORT_RUNTIME;
  
    const __rtti_base = exports.__rtti_base;
    const getRttiCount = __rtti_base ? arr => arr[__rtti_base >>> 2] : F_NO_EXPORT_RUNTIME;
    extendedExports.__new = __new;
    extendedExports.__pin = __pin;
    extendedExports.__unpin = __unpin;
    extendedExports.__collect = __collect;
  
    function __instanceof(ptr, baseId) {
      const U32 = new Uint32Array(memory.buffer);
      let id = U32[ptr + ID_OFFSET >>> 2];
  
      if (id <= getRttiCount(U32)) {
        do {
          if (id == baseId) return true;
          id = getRttBase(id);
        } while (id);
      }
  
      return false;
    }
  
    extendedExports.__instanceof = __instanceof; // Pull basic exports to extendedExports so code in preInstantiate can use them
  
    extendedExports.memory = extendedExports.memory || memory;
    extendedExports.table = extendedExports.table || table; // Demangle exports and provide the usual utility on the prototype
  
    return demangle(exports, extendedExports);
  }
  
  function isResponse(src) {
    return typeof Response !== "undefined" && src instanceof Response;
  }
  
  function isModule(src) {
    return src instanceof WebAssembly.Module;
  }
  /** Asynchronously instantiates an AssemblyScript module from anything that can be instantiated. */
  
  
  async function instantiate(source, imports = {}) {
    if (isResponse(source = await source)) return instantiateStreaming(source, imports);
    const module = isModule(source) ? source : await WebAssembly.compile(source);
    const extended = preInstantiate(imports);
    const instance = await WebAssembly.instantiate(module, imports);
    const exports = postInstantiate(extended, instance);
    return {
      module,
      instance,
      exports
    };
  }
  /** Synchronously instantiates an AssemblyScript module from a WebAssembly.Module or binary buffer. */
  
  
  function instantiateSync(source, imports = {}) {
    const module = isModule(source) ? source : new WebAssembly.Module(source);
    const extended = preInstantiate(imports);
    const instance = new WebAssembly.Instance(module, imports);
    const exports = postInstantiate(extended, instance);
    return {
      module,
      instance,
      exports
    };
  }
  /** Asynchronously instantiates an AssemblyScript module from a response, i.e. as obtained by `fetch`. */
  
  
  async function instantiateStreaming(source, imports = {}) {
    if (!WebAssembly.instantiateStreaming) {
      return instantiate(isResponse(source = await source) ? source.arrayBuffer() : source, imports);
    }
  
    const extended = preInstantiate(imports);
    const result = await WebAssembly.instantiateStreaming(source, imports);
    const exports = postInstantiate(extended, result.instance);
    return { ...result,
      exports
    };
  }
  /** Demangles an AssemblyScript module's exports to a friendly object structure. */
  
  
  function demangle(exports, extendedExports = {}) {
    const setArgumentsLength = exports["__argumentsLength"] ? length => {
      exports["__argumentsLength"].value = length;
    } : exports["__setArgumentsLength"] || exports["__setargc"] || (() => {
      /* nop */
    });
  
    for (let internalName of Object.keys(exports)) {
      const elem = exports[internalName];
      let parts = internalName.split(".");
      let curr = extendedExports;
  
      while (parts.length > 1) {
        let part = parts.shift();
        if (!Object.hasOwn(curr, part)) curr[part] = {};
        curr = curr[part];
      }
  
      let name = parts[0];
      let hash = name.indexOf("#");
  
      if (hash >= 0) {
        const className = name.substring(0, hash);
        const classElem = curr[className];
  
        if (typeof classElem === "undefined" || !classElem.prototype) {
          const ctor = function (...args) {
            return ctor.wrap(ctor.prototype.constructor(0, ...args));
          };
  
          ctor.prototype = {
            valueOf() {
              return this[THIS];
            }
  
          };
  
          ctor.wrap = function (thisValue) {
            return Object.create(ctor.prototype, {
              [THIS]: {
                value: thisValue,
                writable: false
              }
            });
          };
  
          if (classElem) Object.getOwnPropertyNames(classElem).forEach(name => Object.defineProperty(ctor, name, Object.getOwnPropertyDescriptor(classElem, name)));
          curr[className] = ctor;
        }
  
        name = name.substring(hash + 1);
        curr = curr[className].prototype;
  
        if (/^(get|set):/.test(name)) {
          if (!Object.hasOwn(curr, name = name.substring(4))) {
            let getter = exports[internalName.replace("set:", "get:")];
            let setter = exports[internalName.replace("get:", "set:")];
            Object.defineProperty(curr, name, {
              get() {
                return getter(this[THIS]);
              },
  
              set(value) {
                setter(this[THIS], value);
              },
  
              enumerable: true
            });
          }
        } else {
          if (name === 'constructor') {
            (curr[name] = function (...args) {
              setArgumentsLength(args.length);
              return elem(...args);
            }).original = elem;
          } else {
            // instance method
            (curr[name] = function (...args) {
              // !
              setArgumentsLength(args.length);
              return elem(this[THIS], ...args);
            }).original = elem;
          }
        }
      } else {
        if (/^(get|set):/.test(name)) {
          if (!Object.hasOwn(curr, name = name.substring(4))) {
            Object.defineProperty(curr, name, {
              get: exports[internalName.replace("set:", "get:")],
              set: exports[internalName.replace("get:", "set:")],
              enumerable: true
            });
          }
        } else if (typeof elem === "function" && elem !== setArgumentsLength) {
          (curr[name] = (...args) => {
            setArgumentsLength(args.length);
            return elem(...args);
          }).original = elem;
        } else {
          curr[name] = elem;
        }
      }
    }
  
    return extendedExports;
  }
  
  var _default = {
    instantiate,
    instantiateSync,
    instantiateStreaming,
    demangle
  };
  exports.default = _default;
  return exports;
})({});
if (typeof define === 'function' && define.amd) define([], function() { return loader; });
else if (typeof module === 'object' && typeof exports==='object') module.exports = loader;