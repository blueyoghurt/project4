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
    var taskID = this.id
    console.log("id is:",taskID);

    $.ajax({
      url: '/students/event',
      method: 'GET',
      dataType: "json",
      data: {id : taskID}
    }).done(function (data) {
      console.log("data returned from function", data);
      appendAllStudentCards(data)
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
  }

})

    // APPENDING ALL STUDENT CARDS FOR SCHOOL
    function appendAllStudentCards(data) {

      $("#taskListInput").empty()
      $("#taskListInput").append('<div class="ui cards" id="studentAppendCards"></div>')
      for (var i = 0; i < data.length; i++) {
        $("#studentAppendCards").append(
          '<div class="ui yellow card">' +
          '<div class="image">' +
          '<img class="logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_250,h_250,c_lfill/'+ data[i].user.profile_pic + '"/>'  +
          '</div>' +
          '<div class="content">' +
          '<a class="header">' + data[i].user.first_name + " " + data[i].user.last_name + '</a>' +
          '<div class="meta">' +
          '<span class="date">' + data[i].level.description + '</span>' +
          '</div>' +
          '<div class="description">' +
          data[i].level.description +
          '</div>' +
          '</div>' +
          '<div class="extra content">' +
          '<div class="right floated">' +
          '<a class="cardLinkIcons" href="mailto:' + data[i].user.email + '">' +
          '<i class="mail icon right" id="mailIcon' + i + '"></i>' +
          'Email' +
          '</a>' +
          '</div>' +
          '</div>' +
          '</div>'
        )
      }
    }



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
