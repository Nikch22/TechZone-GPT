document.addEventListener('DOMContentLoaded', function() {
  const signinForm = document.getElementById('signinForm');
  const nickname = document.getElementById('nickname');
  const correo = document.getElementById('correo');
  
  signinForm.addEventListener('submit', function(event) {
    console.log(nickname)
    event.preventDefault(); // Detiene el envío del formulario
    // Valida que los campos no estén vacíos
    if (nickname.value === "" || correo.value === "") {
      alert('Por favor llena todos los campos');
    } else {
      console.log('Hola')
      // Guarda el nickname en LocalStorage
      localStorage.setItem('nickname', nickname.value);
      // Si todos los campos están llenos, redirige a index.html
      window.location.href = './index.html';
    }
  });
});

