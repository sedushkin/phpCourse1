document.addEventListener('DOMContentLoaded', function(){
    let modalOpenLinks = document.querySelectorAll('.image_small');
    let modalCloseLink = document.querySelectorAll('.modal_close');
    let overlay = document.querySelector('#overlay-modal');
    let modalImgSrc = document.querySelector('.gallery_img');
    let modalImg = document.querySelector('.modalContent');
    
    modalOpenLinks.forEach(function(element) {
        element.addEventListener('click', function(event){
            event.preventDefault();
            modalEl = document.querySelector('.modal');
            
            modalEl.classList.add('active');
            overlay.classList.add('active');
            
            modalImg.src = modalImgSrc.src;
        });
    });
modalCloseLink.forEach(function(element){
    element.addEventListener('click', function(event){
        event.preventDefault();
        modalEl = document.querySelector('.modal');
        modalEl.classList.remove('active');
        overlay.classList.remove('active');
    });

});
/*
    modalCloseLink.forEach(function(element) {
        element.addEventListener('click', function(event) {
            console.log('закрытие модального окна :)');
        });
    });

    modalCloseLink.onclick = function(){
        modal.style.visibility = "hidden";
        overlay.style.visibility = "hidden";
        modal.style.opacity = "0";
        overlay.style.opacity = "0";
    };*/
});