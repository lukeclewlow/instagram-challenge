$(document).ready(function() {



  $('[class^=likes-link]').on('click', function(event){
  		
      event.preventDefault();

      var likeCount = $("[class^=likes_count]");

      console.log(likeCount);

      $.post(this.href, function(response){
        likeCount.text(response.new_like_count);
    })
  })
})
