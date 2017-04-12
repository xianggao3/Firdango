$(document).ready(function() {
    $('#topMoviesDiv .card').hover(function() {
        $('#topMoviesDiv .card').css({
            opacity: '0.3'
        });
        $(this).css({
            opacity: '1'
        });
    }, function() {
        $('.card').css({
            opacity: '1'
        })
    });
});