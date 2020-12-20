$(document).ready(function () {
  $('#email_check').on('click', function(){
    if ($('#email_check:checked').length > 0){
      $('#modal-mailer').show('500')
      email_list()
     } else {
      $('#modal-mailer').hide('500')
     }
  })
})


function email_list() {
  var email_list = []
  $('#email_check:checked').each(function(){
    email_list.push(this.value)
  })
  $('#email_list').val(email_list)
}