/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*const $Eleccion = document.querySelector("#service");

// Escuchar cuando cambie
$Eleccion.addEventListener("click", () => {
  console.log("Funciona")  ;

  
  $("#codigo").removeAttr('hidden'); 
 
});*/

select.addEventListener('change',()=>{
    var selectedOption = this.options[select.selectedIndex];
    console.log(selectedOption.value + ': ' + selectedOption.text);
  });