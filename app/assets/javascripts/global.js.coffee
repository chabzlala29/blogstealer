$(window).load ->
  $('.content-wrapper').masonry
    itemSelector : '.post-item',
    isAnimated: true,
    animationOptions:
      duration: 200,
      easing: 'swing',
      queue: false,
      fadeIn: 'slow'
