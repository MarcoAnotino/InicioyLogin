var header = document.getElementById('HeaderId');
var btn = document.getElementById('btnId');
var textItems = document.querySelectorAll('.item');

// Configurar listeners al cargar la página
btn.addEventListener('mouseenter', () => {
    if (window.scrollY > 10) {
        btn.style.backgroundColor = '#714B38';
    } else {
        btn.style.backgroundColor = '#228f14';
    }
});

btn.addEventListener('mouseleave', () => {
    if (window.scrollY > 10) {
        btn.style.backgroundColor = '#553825';
    } else {
        btn.style.backgroundColor = '#2ebf1b';
    }
});

textItems.forEach(text => {
    text.addEventListener('mouseenter', () => {
        if (window.scrollY > 10) {
            text.style.color = '#000000';
        } else {
            text.style.color = '#2ebf1b';
        }
    });

    text.addEventListener('mouseleave', () => {
        if (window.scrollY > 10) {
            text.style.color = '#fefeff';
        } else {
            text.style.color = '#fefeff';
        }
    });
});

window.addEventListener('scroll', () => {
    var scroll = window.scrollY;

    if (scroll > 10) {
        header.style.backgroundColor = '#2ebf1b';
        btn.style.backgroundColor = '#553825';
    } else {
        header.style.backgroundColor = 'transparent';
        btn.style.backgroundColor = '#2ebf1b';
    }
});

