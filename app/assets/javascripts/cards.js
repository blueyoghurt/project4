// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function() {

  $('.studentTaskButton').click(function() {

    var taskID = this.id

    $('#editing' + taskID + '').modal('show')

  })


})
