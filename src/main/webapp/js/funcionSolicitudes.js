const expreCorreo = /^(([^<>()\[\]\.,;:\s@\”]+(\.[^<>()\[\]\.,;:\s@\”]+)*)|(\”.+\”))@(([^<>()[\]\.,;:\s@\”]+\.)+[^<>()[\]\.,;:\s@\”]{2,})$/
const expreTarjeta = /^[0-9]{2}[-][0-9]{2}[-][0-9]{2}[-][0-9]{2}$/

function compruebaCorreo() {
    if (!expreCorreo.test(document.getElementById("mail").value)) {
        alert("Formato de correo incorrecto");
    }
}

function descuentoTarjeta() {
    if (document.getElementById("tarjeta").value !== "") {
        return 0.15;
    }
}

//funcion captcha


function enabledSubmit(response) {
    document.getElemenstByName('submit')[0].disabled = false;
}
