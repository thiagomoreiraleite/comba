const selectFuel = () =>{
      const btnGasolina = document.getElementById("btn-gasolina");
    //   const Gasolina = document.querySelectorAll(".Gasolina");
    //   const GasolinaAditivada = document.querySelectorAll(".Gasolina Aditivada");
    const listGasolina = document.getElementById("list-gasolina");
    
      const btnDiesel = document.getElementById("btn-diesel");
      const Diesel = document.querySelectorAll(".Diesel");
      const DieselS10 = document.querySelectorAll(".Diesel S10");


      const btnEtanol = document.getElementById("btn-etanol");
      const Etanol = document.querySelectorAll(".Etanol");
      const fuel = document.querySelectorAll(".fuel");
    
      var i;
      btnGasolina.onclick = function() {
        for (i = 0; i < fuel.length; i++) {
            fuel[i].style.display = "none";
        }
        // for (i = 0; i < Gasolina.length; i++) {
        //     Gasolina[i].style.display = "block";
        // }
        // for (i = 0; i < GasolinaAditivada.length; i++) {
        //     GasolinaAditivada[i].style.display = "block";
        // }
        listGasolina.style.display = "block";
        btnDiesel.classList.remove("picked");
        btnEtanol.classList.remove("picked");
        btnGasolina.classList.add("picked");
      }
    
      btnDiesel.onclick = function() {
        for (i = 0; i < fuel.length; i++) {
            fuel[i].style.display = "none";
        }
        for (i = 0; i < Diesel.length; i++) {
            Diesel[i].style.display = "block";
        }
        for (i = 0; i < DieselS10.length; i++) {
            DieselS10[i].style.display = "block";
        }
        btnEtanol.classList.remove("picked");
        btnGasolina.classList.remove("picked");
        btnDiesel.classList.add("picked");
      }
      
      btnEtanol.onclick = function() {
        for (i = 0; i < fuel.length; i++) {
            fuel[i].style.display = "none";
        }
        for (i = 0; i < Etanol.length; i++) {
            Etanol[i].style.display = "block";
        }
        btnGasolina.classList.remove("picked");
        btnDiesel.classList.remove("picked");
        btnEtanol.classList.add("picked");
      }
   
    }
    export { selectFuel };