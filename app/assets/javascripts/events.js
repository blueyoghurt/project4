$(document).on('turbolinks:load', function() {
  console.log('Student DOM loaded');

  $(document).on('click','#editEvent',function(){
    $('#editingEvent').modal('show')
    console.log("Modal to edit event");
  })

  $("#eventTasks").click(function() {
    loadingAjax()

    $.ajax({
      url: '/tasks/search',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      appendTaskTable(data)
    })
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
