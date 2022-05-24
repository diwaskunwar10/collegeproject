
// function toogle() {
//   var x = document.getElementById("onee");
//   if (x.style.display === "none") {
//     x.style.display = "block";
//   } else {
//     x.style.display = "none";
//   }
// }


function toogle(){
let toggle_bar = document.querySelector(".toogler");

let sidebar = document.querySelector(".one");

toggle_bar.addEventListener("click", function(){
  
   sidebar.classList.toggle("showsidebar")
})
}