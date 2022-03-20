let navbar = document.querySelector('.header .navbar');

document.querySelector('#menu-btn').onclick = () =>{
    navbar.classList.add('active');
}
document.querySelector('#nav-close').onclick = () =>{
  navbar.classList.remove('active');
}


window.onscroll = () =>{
  navbar.classList.remove('active');}






function scrollHeader(){
    const header = document.getElementById('header')
    if(this.scrollY >= 100) header.classList.add('scroll-header'); else header.classList.remove('scroll-header')
}
window.addEventListener('scroll', scrollHeader)

var swiper = new Swiper(".home-slider", {
    loop:true, 
    grabCursor:true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
});