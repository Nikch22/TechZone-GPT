import dotenv from 'dotenv';
dotenv.config();

// SERVIDOR
export const PORT = process.env.PORT || 3000;

// BASE DE DATOS
export const DB_HOST = process.env.DB_HOST || 'localhost';

export const DB_USER = process.env.DB_USER || 'root';

export const DB_PASSWORD = process.env.DB_PASSWORD || 'root';

export const DB_NAME= process.env.DB_NAME || 'techzone';

export const DB_PORT= process.env.DB_PORT || 3306;

// API KEYS
export const OPENAI_API_KEY = process.env.OPENAI_API_KEY || '';

