function mayus() {
    var nom = document.getElementById("txtNombre");
    var ApeP = document.getElementById("txtApellidoP");
    var ApeM = document.getElementById("txtApellidoM");
    nom.value = nom.value.toUpperCase();
    ApeP.value = ApeP.value.toUpperCase();
    ApeM.value = ApeM.value.toUpperCase();
}