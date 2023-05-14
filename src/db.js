import mysql from 'mysql';

// Configuración de la base de datos
const dbConfig = {
  host: 'localhost', // Cambia esto si tu base de datos no está en tu máquina local
  user: 'root',
  password: 'karel123',
  database: 'techzone'
};

// Crear conexión a la base de datos
const connection = mysql.createConnection(dbConfig);

// Conectar a la base de datos
connection.connect((err) => {
  if (err) {
    console.error('Error al conectar a la base de datos: ', err);
    return;
  }
  console.log('Conexión exitosa a la base de datos');
});

// Función para insertar un cliente en la tabla "customers"
function insertCustomer(customer, callback) {
  connection.query('INSERT INTO customers SET ?', customer, (err, results) => {
    if (err) {
      console.error('Error al insertar un cliente: ', err);
      callback(err, null);
      return;
    }
    console.log('Cliente insertado exitosamente');
    callback(null, results);
  });
}

// Exportar las funciones y la conexión para su uso en otros archivos
export default { connection, insertCustomer };
