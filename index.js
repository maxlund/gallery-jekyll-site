const options = {
    keyboard: false,
    size: 'fullscreen',

};

document.querySelectorAll('.my-lightbox-toggle').forEach((el) => el.addEventListener('click', (e) => {
    e.preventDefault();
    e.stopPropagation();
    console.log(e)
    const lightbox = new Lightbox(el, options);
    lightbox.show();
}));