
jQuery(document).on 'turbolinks:load', ->
  $('.scroller').slick({
    dots: true,
    autoplay: true,
    infinite: true,
    speed: 5000,
    autoplaySpeed: 1000,
    slidesToShow: 1,
    adaptiveHeight: true
  })

