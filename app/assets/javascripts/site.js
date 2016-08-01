$(document).on('turbolinks:load', function() {
    rating();

    $('.img-zoom').elevateZoom({
      zoomType: "lens", 
      lensShape : "round", 
      lensSize: 200
    });
});

function rating() {
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });

  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
    return $(this).attr('data-score');}
  });
}