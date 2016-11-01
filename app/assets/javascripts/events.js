$(document).on('turbolinks:load', function() {
  console.log('Student DOM loaded');

  $(document).on('click','#editEvent',function(){
    $('#editingEvent').modal('show')
    console.log("Modal to edit event");
  })

})
