$(document).on('turbolinks:load', function() {

  $(document).on('click','#editEvent',function(){
    $('#editingEvent').modal('show')
  })

  $("#eventTasks").click(function() {
    loadingAjax()

    $.ajax({
      url: '/tasks/search',
      method: 'GET'
    }).done(function (data) {
      appendTaskTable(data)
    })
  })

  $(".studentSignedUp").click(function() {
    loadingAjax()
    // var taskID = this.id

    $.ajax({
      url: '/students/event',
      method: 'GET'
    }).done(function (data) {
      console.log("data returned from function", data);
      appendTaskTable(data)
    })
  })


  $('.teacherTaskButton').click(function() {
    var taskID = this.id
    $('#editing' + taskID + '').modal('show')

  })

  // ==================== FUNCTIONS ====================

  // APPEND LOADING SYMBOL WHILE LOADING AJAX
  function loadingAjax() {
    $("#taskListInput").empty()
    $("#taskListInput").append(
      '<div class="ui icon">' +
        '<i class="notched circle loading icon loadingIcon"></i>' +
        '<div class="content">' +
          '<div class="header">' +
            'Loading...' +
          '</div>' +
        '</div>' +
      '</div>'
    )
  }

  // APPEND TASKLISTS
  function appendTaskTable(data) {
    $("#taskListInput").empty()
    $("#taskListInput").append(
      '<div class="ui centered grid" id="addTaskBox">' +
          '<button class="ui yellow button" id="addTask">Add Task</button>' +
      '</div>' +
      '<div class="ui cards" id="appendTaskList"></div>'
    )

    // '<table class="ui sortable celled table">' +
    //   '<thead>' +
    //     '<tr>' +
    //       '<th class="sorted ascending">Level</th>' +
    //       '<th class="">Task</th>' +
    //     '</tr>' +
    //   '</thead>' +
    //   '<tbody>' +
    //   for (var i = 0; i < data.length; i++) {
    //     '<tr>' +
    //       '<td>' + data[i].level_id.name + '</td>' +
    //       '<td>' + data[i].description + '</td>' +
    //     '</tr>' +
    //   }
    //   '</tbody>' +
    // '</table>'
  }

})
