let p = document.getElementById('header-right-nav-id');
let q = document.getElementById('header-nav-menu-id');

p.addEventListener('click',() =>{
  q.classList.toggle("display_p");
  q.classList.toggle("display_n");
});
