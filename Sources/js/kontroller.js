
class InputTypeElement { constructor(key, value, name, attachment) { this.key = key; this.value = value; this.name = name; this.attachment = attachment; } }
class InputNumberType { constructor(min, max, current) { this.min = min; this.max = max; this.current = current; } }

const InputTypeKeys = {
    Number: 0,
    String: 1,
    Color: 2,
    Boolean: 3,
    Custom: 4
}

const InputType = {
    Number(name, type, attachment) { return new InputTypeElement(InputTypeKeys.Number, type, name, attachment); },
    String(name, type, attachment) { return new InputTypeElement(InputTypeKeys.String, type, name, attachment); },
    Color(name, type, attachment) { return new InputTypeElement(InputTypeKeys.Color, type, name, attachment); },
    Boolean(name, type, attachment) { return new InputTypeElement(InputTypeKeys.Boolean, type, name, attachment); },
    Custom(name, type, attachment) { return new InputTypeElement(InputTypeKeys.Custom, type, name, attachment); }
}

class Kontroller {

    constructor(selector, controllers) {
        this.element = document.querySelector(selector);
        this.controllers = controllers;
        this.handleController = this.handleController.bind(this);
        this.customInput = this.customInput.bind(this);
        this.setupLayout();
    }

    setupLayout() {
        for (const controller of this.controllers) {
            let el;

            const text = document.createElement("P");
            text.innerHTML = controller.name;

            const contrEl = document.createElement("DIV");
            contrEl.setAttribute("class", "kontroller");
            contrEl.appendChild(text);

            switch (controller.key) {
                case InputTypeKeys.Number:
                    el = document.createElement("INPUT");
                    el.setAttribute("type", "range");
                    const numberInput = controller.value;
                    el.setAttribute("min", numberInput.min);
                    el.setAttribute("max", numberInput.max);
                    el.setAttribute("step", "0.00001")
                    el.value = numberInput.current;
                    break;
                case InputTypeKeys.String:
                    el = document.createElement("INPUT");
                    el.setAttribute("type", "text")
                    el.value = controller.value;
                    break;
                case InputTypeKeys.Color:
                    el = document.createElement("INPUT");
                    el.setAttribute("type", "color");
                    el.value = controller.value;
                    break;
                case InputTypeKeys.Boolean:
                    el = document.createElement("INPUT");
                    el.setAttribute("type", "checkbox");
                    el.checked = controller.value*1;
                    break;
                case InputTypeKeys.Custom:
                    el = document.createElement("SELECT");
                    if (typeof controller.value == Object) { console.error(new Error("Custom type must implement a enum(object) as value.")); }
                    for (const [name, value] of Object.entries(controller.value)) {
                        const opt = document.createElement("OPTION");
                        opt.setAttribute("value", value);
                        opt.innerHTML = name;
                        el.appendChild(opt);
                    }
                    break;
            }
            if (controller.attachment) {
                el.setAttribute("attachment", controller.attachment);
                el.oninput = this.handleController;
            }else { console.warn("No attachment provided for input “" + controller.name + "”. Change will have no effect."); }
            el.setAttribute("controllerType", controller.key);
            el.id = controller.name.split(" ").join("_");
            
            contrEl.appendChild(el);

            if (controller.key === InputTypeKeys.Number) {
                const valueLabel = document.createElement("P");
                valueLabel.innerHTML = controller.value.current;
                valueLabel.id = el.id + "valueLabel";
                valueLabel.onclick = this.customInput;
                contrEl.appendChild(valueLabel);
            }

            this.element.appendChild(contrEl);
        }

        if (this.controllers.length === 0) {
            this.element.style.display = "none";
        }else {
            this.element.style.display = "";
        }
    }

    refresh() {
        this.element.textContent = "";
        this.setupLayout();
    }

    handleController(event) {
        const element = event.target;
        const attachment = element.getAttribute("attachment");
        const controllerType = element.getAttribute("controllerType");

        let value;
        if (controllerType == InputTypeKeys.Custom) { value = element.selectedIndex; }
        else if (controllerType == InputTypeKeys.Boolean) { value = element.checked*1; }
        else { value = element.value; }

        Theme[attachment] = value;

        if (controllerType == InputTypeKeys.Number) {
            const valueLabel = document.getElementById(element.id + "valueLabel");
            valueLabel.innerHTML = Math.round((parseFloat(value) * 1000)) / 1000;
        }
    }

    customInput(event) {
        const element = event.target;
        const sliderElement = document.getElementById(element.id.replace("valueLabel", ""));
        const val = prompt("New value");
        sliderElement.value = val;
        this.handleController({target: sliderElement});
    }

}