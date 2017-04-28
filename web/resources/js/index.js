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

function handle(e){
    if(e.keyCode === 13){
        e.preventDefault(); // Ensure it is only this code that rusn

        redirect('search/'+$('#searchQuery').val());
    }
}