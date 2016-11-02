// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function() {
  console.log('CARDS DOM loaded');

  $('.studentTaskButton').click(function() {
    console.log("HELLO");

    var taskID = this.id
    console.log(taskID);

    $('#editing' + taskID + '').modal('show')

  })


})
