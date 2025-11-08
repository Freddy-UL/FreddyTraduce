import mysql from 'mysql2/promise';
import cors from 'cors';
import express from 'express';
import dotenv from 'dotenv';

dotenv.config();
const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createPool({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASS || '',
  database: process.env.DB_NAME || 'Freddytraduce',
  port: process.env.DB_PORT || 3306
});

// Guardar una nueva palabra
app.post('/api/palabras', async (req, res) => {
  try {
    const { palabra_español, palabra_ingles, categoria } = req.body;
    const [resultado] = await db.query(
      'INSERT INTO palabras (palabra_español, palabra_ingles, categoria) VALUES (?, ?, ?)',
      [palabra_español, palabra_ingles, categoria]
    );
    res.status(201).json({ mensaje: 'Palabra guardada exitosamente', id: resultado.insertId });
  } catch (error) {
    res.status(500).json({ mensaje: 'Error al guardar la palabra', error });
  }
});

// Obtener todas las palabras
app.get('/api/palabras/buscar', async (req, res) => {
  try {
    const [palabras] = await db.query('SELECT * FROM palabras ORDER BY id DESC');
    res.json(palabras);
  } catch (error) {
    res.status(500).json({ mensaje: 'Error al buscar palabras', error });
  }
});

// Buscar por término
app.get('/api/palabras', async (req, res) => {
  try {
    const termino = req.query.termino || '';
    const [palabras] = await db.query(
      'SELECT * FROM palabras WHERE palabra_español LIKE ? OR palabra_ingles LIKE ?',
      [`%${termino}%`, `%${termino}%`]
    );
    res.json(palabras);
  } catch (error) {
    res.status(500).json({ mensaje: 'Error al buscar palabras', error });
  }
});

// Actualizar palabra
app.put('/api/palabras/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const { palabra_español, palabra_ingles, categoria } = req.body;
    await db.query(
      'UPDATE palabras SET palabra_español=?, palabra_ingles=?, categoria=? WHERE id=?',
      [palabra_español, palabra_ingles, categoria, id]
    );
    res.json({ mensaje: 'Palabra actualizada' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Eliminar palabra
app.delete('/api/palabras/:id', async (req, res) => {
  try {
    const { id } = req.params;
    await db.query('DELETE FROM palabras WHERE id=?', [id]);
    res.json({ mensaje: 'Palabra eliminada' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Servidor en http://localhost:${PORT}`);
});