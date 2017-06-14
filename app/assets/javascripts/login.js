function check_password () {
  var password = document.getElementById('login_password');
  var password_confirmation = document.getElementById('login_password_confirmation');

  if (password.value !== password_confirmation.value) {
    alert('As senhas devem ser iguais.');
    password.value = '';
    password_confirmation.value = '';
    password.focus();
    return false;
  }

  if (password.value.length < 4) {
    alert('A senha deve ter 4 ou mais caracteres.');
    password.value = '';
    password_confirmation.value = '';
    password.focus();
    return false;
  }

  var letters = /^(?=.*\d)(?=.*[a-z]).{6,}$/;

  if (password.value.match(letters)) {
    return true;
  }
  else{
    alert('A senha deve iniciar com letras e conter apenas letras e números.');
    password.value = '';
    password_confirmation.value = '';
    password.focus();
    return  false;
  }
}

function enable_submit(){
  $('input[type="submit"]').prop('disabled',false);
}
