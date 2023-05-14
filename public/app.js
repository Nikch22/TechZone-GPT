document.addEventListener("DOMContentLoaded", function () {
  const nickname = localStorage.getItem("nickname");

  if (nickname) {
    // Aquí puedes utilizar el nickname para personalizar la página
    // Por ejemplo, puedes mostrar un mensaje de bienvenida
    console.log(`¡Bienvenido ${nickname}!`);
  } else {
    // Si no hay un nickname guardado, puedes redirigir al usuario a la página de inicio de sesión
    window.location.href = "./signin.html";
  }
});

const productos = [
  {
    id: 1,
    nombre: "Libro",
    precio: 0.01,
    imagen: "img/book.png",
    descripcion:
      "'Fuerzas invisibles' es un thriller apasionante que le mantendrá en vilo de principio a fin. Cuando una serie de sucesos inexplicables ocurren en una pequeña ciudad, un grupo de héroes improbables debe unirse para descubrir la verdad que se esconde tras las misteriosas fuerzas en juego.",
  },
  {
    id: 2,
    nombre: "Focos",
    precio: 2,
    imagen: "img/light.png",
    descripcion:
      "Presentamos nuestros nuevos focos LED: ¡el complemento perfecto para cualquier hogar o negocio! Con un diseño energético, estos focos le ayudarán a ahorrar dinero en la factura de la luz al tiempo que proporcionan una luz brillante y duradera. Además, su diseño elegante y moderno añadirá un toque de elegancia a cualquier espacio.",
  },
  {
    id: 3,
    nombre: "Ordenador",
    precio: 10,
    imagen: "img/pc.png",
    descripcion:
      "Presentamos nuestro nuevo PC de última generación: la máquina definitiva para todas sus necesidades informáticas. Con velocidades de procesamiento ultrarrápidas, gráficos de alta calidad y un disco duro espacioso, este PC podrá con todo, desde los juegos hasta la edición de vídeo profesional.",
  },
  {
    id: 4,
    nombre: "Consola",
    precio: 8.27,
    imagen: "img/console.png",
    descripcion:
      "Presentamos la videoconsola más avanzada del mercado: ¡nuestra flamante consola cambia las reglas del juego! Con impresionantes gráficos 8K, velocidades de procesamiento ultrarrápidas y una biblioteca de juegos sin igual, esta consola te transportará a nuevos mundos y te proporcionará interminables horas de entretenimiento.",
  },
];

const cartBtn = document.getElementById("cartBtn");
const cart = document.querySelector(".cart");

// cartBtn.addEventListener("click", function() {
//   cart.classList.toggle("active");
// });

const carrito = [];

function agregarAlCarrito(producto) {
  carrito.push(producto);
  mostrarCarrito();
}

function mostrarCarrito() {
  // const carritoEl = document.querySelector('.carrito');
  const totalCarritoEl = document.querySelector("#total-carrito");
  const tbodyEl = document.querySelector("#carrito tbody");
  const cantidadCarritoEl = document.querySelector("#cantidad-carrito");
  tbodyEl.innerHTML = "";
  totalCarritoEl.innerText = "";
  cantidadCarritoEl.innerText = carrito.length;

  // if (carrito.length === 0) {
  //     carritoEl.classList.remove('active');
  //     return;
  // }

  // carritoEl.classList.add('active');

  carrito.forEach((producto) => {
    const trEl = document.createElement("tr");

    const nombreEl = document.createElement("td");
    nombreEl.innerText = producto.nombre;
    trEl.appendChild(nombreEl);

    const precioEl = document.createElement("td");
    precioEl.innerText = producto.precio;
    trEl.appendChild(precioEl);

    const eliminarEl = document.createElement("td");
    const eliminarBtnEl = document.createElement("button");
    eliminarBtnEl.classList = "btn btn-outline-danger";
    eliminarBtnEl.innerText = "Eliminar";
    eliminarBtnEl.addEventListener("click", () => {
      eliminarDelCarrito(producto.id);
    });
    eliminarEl.appendChild(eliminarBtnEl);
    trEl.appendChild(eliminarEl);

    tbodyEl.appendChild(trEl);
  });

  const pagoBtn = document.createElement("button");
  pagoBtn.classList = "btn btn-outline-success offset-md-4 text-light";
  pagoBtn.innerHTML = 'Pagar <i class="fab fa-ethereum"></i>';

  const total = carrito.reduce((total, producto) => total + producto.precio, 0);

  pagoBtn.addEventListener('click', () => {
    realizarPago(carrito,total);
  })

  totalCarritoEl.innerText = `Total a pagar: $${total}`;
  totalCarritoEl.appendChild(pagoBtn);
}

const realizarPago = (carrito,valorAPagar) => {
  let nombresProductos = [];
    if (carrito !== '' && carrito.length > 0) {
      //Obtengo los datos para el objeto a enviar
      carrito.forEach((producto) => {
        nombresProductos.push(producto.nombre)
      })
      const nickname = localStorage.getItem("nickname");
      const correo = localStorage.getItem("correo");

    // Armar el JSON
    const data = {
      nickname: nickname,
      correo: correo,
      nombresProductos: nombresProductos,
      valorAPagar: valorAPagar
    };

    // Convertir el JSON a texto
    const jsonDatosPago = JSON.stringify(data);

    console.log(jsonDatosPago);
    fetch('http://localhost:3000/webhook/pago', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: jsonDatosPago // el mensaje de parámetro que quieres enviar
      })
      .then(response => response.json())
      .then(data => {

        if (data !== '') {
          alert('Pago Realizado Exitosamente!')

        }
      })
      .catch(error => console.error(error));
    }
    
}

function eliminarDelCarrito(id) {
  const index = carrito.findIndex((producto) => producto.id === id);
  carrito.splice(index, 1);
  mostrarCarrito();
}

function inicializarProductos() {
  const gridProductosEl = document.getElementById("grid-productos");

  //For de productos
  productos.forEach((producto) => {
    // Crear los elementos
    var colDiv = document.createElement("div");
    var cardDiv = document.createElement("div");
    var img = document.createElement("img");
    var cardBodyDiv = document.createElement("div");
    var h5 = document.createElement("h5");
    var p = document.createElement("p");
    var dFlexDiv = document.createElement("div");
    var small = document.createElement("small");
    var btnGroupDiv = document.createElement("div");
    var btnVer = document.createElement("button");
    var btnAgregar = document.createElement("button");

    // Añadir las clases a los elementos
    colDiv.className = "g-col";
    cardDiv.className = "card shadow-sm h-100";
    img.className = "bd-placeholder-img card-img-top";
    cardBodyDiv.className = "card-body";
    h5.className = "card-title text-center fw-bold";
    dFlexDiv.className = "d-flex align-items-center";
    btnGroupDiv.className = "btn-group offset-md-3";
    btnVer.className = "btn btn-md btn-outline-secondary";
    btnAgregar.className = "btn btn-md btn-outline-success";
    small.className = "text-success text-start";

    // Añadir el texto a los elementos
    img.src = producto.imagen;
    img.alt = producto.nombre;
    h5.textContent = producto.nombre;
    p.textContent = producto.descripcion;
    small.textContent = `$${producto.precio} ETH`;
    btnVer.setAttribute("data-id", producto.id);
    btnAgregar.setAttribute("data-id", producto.id);
    btnVer.id = "v-" + producto.id;
    btnAgregar.id = "a-" + producto.id;
    btnVer.textContent = "Ver";
    btnAgregar.textContent = "Añadir";

    // Crear la estructura
    colDiv.appendChild(cardDiv);
    cardDiv.appendChild(img);
    cardDiv.appendChild(cardBodyDiv);
    cardBodyDiv.appendChild(h5);
    cardBodyDiv.appendChild(p);
    cardBodyDiv.appendChild(dFlexDiv);
    dFlexDiv.appendChild(small);
    dFlexDiv.appendChild(btnGroupDiv);
    btnGroupDiv.appendChild(btnVer);
    btnGroupDiv.appendChild(btnAgregar);

    // Añadir la estructura a tu contenedor principal
    // Suponiendo que tu contenedor principal tenga un id 'mainContainer'
    gridProductosEl.appendChild(colDiv);

    //     //Antiguo
    //   const productoEl = document.createElement('div');
    //   productoEl.classList.add('producto');
    //   productoEl.innerHTML = `
    //       <img src="${producto.imagen}" alt="${producto.nombre}" />
    //       <h3>${producto.nombre}</h3>
    //       <p class="descripcion">${producto.descripcion}</p>
    //       <br/>
    //       <p class="precio">$${producto.precio}</p>
    //       <button class="btn-agregar" data-id="${producto.id}">
    //           Agregar al carrito
    //       </button>
    //   `;
    //   gridProductosEl.appendChild(productoEl);

    btnAgregar.addEventListener("click", () => {
      const id = parseInt(btnAgregar.getAttribute("data-id"));
      const producto = productos.find((producto) => producto.id === id);
      agregarAlCarrito(producto);
    });
  });
}

inicializarProductos();
