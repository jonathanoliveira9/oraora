$(document).ready(function () {
  $('#email_check').on('click', function(){
    if ($('#email_check:checked').length > 0){
      $('#modal-mailer').show('500')
     } else {
      $('#modal-mailer').hide('500')
     }
  })
})


