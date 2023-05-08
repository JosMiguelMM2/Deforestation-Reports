import * as dotenv from 'dotenv';

// Cargar variables de entorno del archivo .env
dotenv.config();

export default () => ({
  port: parseInt(process.env.PORT, 10) || 3000,
  database: {
    host: process.env.DB_HOST || 'localhost',
    port: parseInt(process.env.DB_PORT, 10) || 5432,
    username: process.env.DB_USERNAME || 'root',
    password: process.env.DB_PASSWORD || 'password',
    database: process.env.DB_NAME || 'mydatabase',
  },
  jwt: {
    secret: process.env.JWT_SECRET || 'mysecretkey',
    expiresIn: process.env.JWT_EXPIRES_IN || '1d',
  },
});
