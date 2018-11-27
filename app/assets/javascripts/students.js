$(document).ready(() => {
  attachStudentListeners()
})

function attachStudentListeners() {
  $('#new_student').on('submit', function(event) {
    $.post(this.action, $(this).serialize())
      .done(function(response) {
        let newStudent = new Student(response['data'])
        $('fieldset').html("")
        let newStudentPage = newStudent.showNewStudentPage()
        $('div#new-student-js').append(newStudentPage)
      })
    
    event.preventDefault()
  })
}

function addDeleteEventListener(studentId) {
  $(`button#studentid-${studentId}`).click(function(event) {
    event.preventDefault()
    
  $.ajax({
    method: "DELETE",
    url: `/students/${studentId}`
  }).done(function() {
      $(`[data-id=${studentId}]`).remove();
    });
  });
}

function Student(studentJson) {
  this.id = studentJson.id;
  this.name = studentJson.attributes.name;
  this.email = studentJson.attributes.email;
}

Student.prototype.showNewStudentPage = function() {
  return `<fieldset>
          <legend><h2>Student Info</h2></legend>
            <table>
              <tr>
                <td><strong>Name</strong></td>
                <td>${this.name}</td>
              </tr>
              <tr>
                <td><strong>Email</strong></td>
                <td>${this.email}</td>
              </tr>
            </table>
          </fieldset>`
} 
