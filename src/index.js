import chatbotGPT from "./openaiAPI.js";
import techzoneDB from "./db.js";
import express from "express";
import axios from "axios";
import { PORT } from "./config.js";

const app = express();
const WEBHOOK_URL = process.env.WEBHOOK_URL || "/webhook/pago";
// usar los métodos json() y urlencoded() para obtener el body
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use((req, res, next) => {
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  if (req.method === "OPTIONS") {
    res.header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
    return res.status(200).json({});
  }
  next();
});

app.post("/chatbot", async (req, res) => {
  let msg = req.body.msg;
  // imprimirlo por consola
  console.log(msg);

  // esperar a que la función chatbotGPT() te de una respuesta
  let chatbotResponse = await chatbotGPT(msg); // usar await para pausar la ejecución hasta que se resuelva la promesa

  // Accede a la propiedad content usando la notación de punto
  const chatbotMsg = chatbotResponse.content;
  console.log(chatbotMsg);
  // enviar una respuesta al cliente con el resultado de chatbotGPT()
  res.json({ mensaje: chatbotMsg });
});

// Ruta para el webhook de pago
app.post(WEBHOOK_URL, (req, res) => {
  try {
    // Validar los datos del evento de pago
    const jsonDatosPago = req.body;
    /*  if (!eventoPago || !eventoPago.nickname || !eventoPago.email || !eventoPago.monto) {
      throw new Error('Datos de evento de pago no válidos');
    }*/

    // Registro pago en consola y en la tabla sales
    const nombresProductos = JSON.stringify(jsonDatosPago.nombresProductos);
    console.log(
      `Evento de pago recibido: ${JSON.stringify(jsonDatosPago.nickname)}`
    );
    const nuevaVenta = {
      nickname: jsonDatosPago.nickname,
      correo: jsonDatosPago.correo,
      nombreProductos: nombresProductos,
      valorPagar: jsonDatosPago.valorAPagar,
      divisa: "ETH",
    };
    techzoneDB.insertarVenta(nuevaVenta, (err, id) => {
      if (err) {
        // manejar el error
        console.error("Error en la inserción de la venta: " + err);
      } else {
        console.log("ID de venta: ", id);

        /* Notificación a bonitasoft */
        const jsonDataBonita = {
          sale_id: id,
          customer: jsonDatosPago.nickname,
          email: jsonDatosPago.correo,
          product: nombresProductos,
        };

        const jsonVenta = JSON.stringify(jsonDataBonita);
        axios
          .post(
            "https://hooks.zapier.com/hooks/catch/15437481/3tyd0s9/",
            jsonVenta
          )
          .then((response) => {
            console.log(
              "La petición se envió correctamente a bonitasoft:\n" + jsonVenta
            );
            res.status(200).send("Evento de pago recibido y procesado correctamente");
          })
          .catch((error) => {
            console.error("Error al enviar la petición al webhook:", error);
            res.status(500).send("Error al procesar el evento de pago");
          });
      }
    });

  } catch (error) {
    console.error(`Error al procesar evento de pago: ${error.message}`);
    // Manejar los errores de manera adecuada y enviar una respuesta con un código de estado apropiado
    res.status(400).send(error.message);
  }
});

// Manejar rutas no encontradas
app.use((req, res) => {
  res.status(404).send("Ruta no encontrada");
});

// Manejar errores en el servidor
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Error en el servidor");
});

app.listen(PORT, () => {
  console.log("Servidor escuchando en el puerto " + PORT);
  console.log(`Webhook de pago Habilitado: ${WEBHOOK_URL}`);
});

// Llama a la función chatbot
//chatbotGPT();

//sql
/*


// Acceder a la conexión y utilizarla si es necesario
// techzoneDB.connection.query(...);

// Insertar un cliente en la tabla "customers"
const newCustomer = {name: 'name', email: 'email', nickname: 'nickname' };
techzoneDB.insertCustomer(newCustomer, (err, results) => {
  if (err) {
    // Manejar el error
    console.log(err);
    return;
  }
  // Hacer algo con los resultados
  
});
*/
