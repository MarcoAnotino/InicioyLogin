document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('.btn-menu').addEventListener('click', function() {
        document.querySelector('.sidebar').classList.toggle('show');
    });
});