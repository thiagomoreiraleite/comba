const selectFuel = () =>{
    const btnGasolina = document.getElementById("btn-gasolina");
    const listGasolina = document.getElementById("list-gasolina");
    
    const btnDiesel = document.getElementById("btn-diesel");
    const listDiesel = document.getElementById("list-diesel");

    const btnEtanol = document.getElementById("btn-etanol");
    const listEtanol = document.getElementById("list-etanol");

    btnGasolina.onclick = function() {
    listGasolina.style.display = "block";
    listDiesel.style.display = "none";
    listEtanol.style.display = "none";
    btnDiesel.classList.remove("picked");
    btnEtanol.classList.remove("picked");
    btnGasolina.classList.add("picked");
    }

    btnDiesel.onclick = function() {
    listGasolina.style.display = "none";
    listDiesel.style.display = "block";
    listEtanol.style.display = "none";
    btnEtanol.classList.remove("picked");
    btnGasolina.classList.remove("picked");
    btnDiesel.classList.add("picked");
    }
    
    btnEtanol.onclick = function() {
    listGasolina.style.display = "none";
    listDiesel.style.display = "none";
    listEtanol.style.display = "block";
    btnGasolina.classList.remove("picked");
    btnDiesel.classList.remove("picked");
    btnEtanol.classList.add("picked");
    }

}
export { selectFuel };