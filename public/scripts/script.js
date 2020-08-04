document.addEventListener('DOMContentLoaded', function(){
    let modalOpenLinks = document.querySelectorAll('.image_small');
    let modalCloseLink = document.querySelectorAll('.modal_close');
    let overlay = document.querySelector('#overlay-modal');
    let modalImg = document.querySelector('.modalContent');
    let LinksToFullsize = document.querySelectorAll('.linkToFullSize');

    modalOpenLinks.forEach(function(element) {
        element.addEventListener('click', function(event){
            event.preventDefault();
            modalEl = document.querySelector('.modal');
            
            modalEl.classList.add('active');
            overlay.classList.add('active');
            modalImgSrc = element.firstElementChild;
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
LinksToFullsize.forEach(function(element){
    element.addEventListener('click', function(event){
        
        img = element.parentElement.firstElementChild;
        element.href = img.id
        

    });
});
});