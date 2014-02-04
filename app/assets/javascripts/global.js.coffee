App =
  loadMasonry: ->
    $('.content-wrapper').masonry
      itemSelector : '.post-item',
      isAnimated: true,
      animationOptions:
        duration: 200,
        easing: 'swing',
        queue: false,
        fadeIn: 'slow'

$(window).load ->
  App.loadMasonry()
$(window).ready ->
  $('.side-bar-wrapper').hover ( ->
    $('.hide-toggle').show()
  ), ->
    $('.hide-toggle').hide()

  $('.side-bar-wrapper').find('.hide-toggle').click ->
    $(".side-bar-footer").hide()
    $('.side-bar-wrapper').animate 
      right: "120%"
    $('.featured-wrapper').animate 
      width: "99%"
      marginLeft: "1.5%"
    $('.content-wrapper').animate (
      width: "99%"
      marginLeft: "1.5%"
    ), 500, ->
      App.loadMasonry()
      $('.side-bar-hidden').show()
      
      $('.side-bar-hidden').find('.hide-toggle2').click ->
        $('.side-bar-hidden').hide()
        $(".side-bar-footer").show()
        $('.featured-wrapper').animate 
          width: "79%";
          marginLeft: "21%";
        $('.side-bar-wrapper').animate 
          right: "0"
        $('.content-wrapper').animate (
          width: "79%"
          marginLeft: "21%"
        ), 500, ->
          App.loadMasonry()
