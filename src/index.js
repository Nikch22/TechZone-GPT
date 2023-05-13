import chatbotGPT from "./openaiAPI.js";
import express from "express";
import axios from "axios";

const app = express();
const WEBHOOK_URL = process.env.WEBHOOK_URL || "/webhook/pago";
// usar los métodos json() y urlencoded() para obtener el body
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use((req, res, next) => {
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
  res.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization");
  next();
});

// Ruta para el webhook de pago
app.post(WEBHOOK_URL, (req, res) => {
  try {
    // Validar los datos del evento de pago
    const eventoPago = req.body;
    /*  if (!eventoPago || !eventoPago.id || !eventoPago.monto) {
      throw new Error('Datos de evento de pago no válidos');
    }*/

    // Procesar los datos del evento de pago
    console.log(`Evento de pago recibido: ${JSON.stringify(eventoPago)}`);
    // Aquí es donde realizarías las acciones necesarias en respuesta al evento de pago

    // Enviar una respuesta al webhook para confirmar que has recibido y procesado el evento
    res.status(200).send("Evento de pago recibido");
  } catch (error) {
    console.error(`Error al procesar evento de pago: ${error.message}`);
    // Manejar los errores de manera adecuada y enviar una respuesta con un código de estado apropiado
    res.status(400).send(error.message);
  }
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

//Petición de ejemplo al webhook
app.post("/enviar-webhook", (req, res) => {
  const jsonData = {
    sale_id: "002",
    customer: "Sanse",
    email: "sanse@customer.es",
    product: "Monitor TN",
  };

  const jsonSale = JSON.stringify(jsonData);
  axios
    .post("https://hooks.zapier.com/hooks/catch/15227573/362unrx/", jsonSale)
    .then((response) => {
      console.log("La petición se envió correctamente a bonitasoft:\n" + jsonSale);
      res.sendStatus(200);
    })
    .catch((error) => {
      console.error("Error al enviar la petición al webhook:", error);
      res.sendStatus(500);
    });
});


//Petición a blockchain

// Manejar rutas no encontradas
app.use((req, res) => {
  res.status(404).send("Ruta no encontrada");
});

// Manejar errores en el servidor
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Error en el servidor");
});

app.listen(3000, () => {
  console.log("Servidor escuchando en el puerto 3000");
  console.log(`Webhook de pago: ${WEBHOOK_URL}`);
});

// Llama a la función chatbot
//chatbotGPT();
