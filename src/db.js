import mysql from 'mysql';

// Configuración de la base de datos
const dbConfig = {
  host: 'localhost', // Cambia esto si tu base de datos no está en tu máquina local
  user: 'root',
  password: 'root',
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
function insertarCustomer(customer, callback) {
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

// Función para insertar un cliente en la tabla "customers"
function insertarVenta(sale, callback) {
  connection.query('INSERT INTO ventas SET ?', sale, (err, results) => {
    if (err) {
      console.error('Error al insertar la venta: ', err);
      callback(err, null);
      return;
    }
    console.log('Venta insertado exitosamente');
    callback(null, results.insertId);
  });
}

// Función para buscar un cliente en la tabla "customers" por su nickname
function buscarCustomerPorNickname(nickname, callback) {
  return connection.query('SELECT * FROM customers WHERE nickname = ?', nickname, (err, results) => {
    if (err) {
      console.error('Error al un cliente el nickname: ', err);
      callback(err, null);
      return;
    }
    console.log('Cliente encontrado exitosamente');
    callback(null, results);
  });
}

// Exportar las funciones y la conexión para su uso en otros archivos
export default { connection, insertarCustomer, insertarVenta };
