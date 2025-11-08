import axios from 'axios';

const API_URL = 'http://localhost:5000/api/palabras';

export const obtenerPalabras = async () => {
  const respuesta = await axios.get(`${API_URL}/buscar`);
  return respuesta.data;
};

export const buscarPalabras = async (termino) => {
  const respuesta = await axios.get(API_URL, { params: { termino } });
  return respuesta.data;
};

export const agregarPalabra = async (palabra) => {
  const respuesta = await axios.post(API_URL, palabra);
  return respuesta.data;
};

export const actualizarPalabra = async (id, palabra) => {
  const respuesta = await axios.put(`${API_URL}/${id}`, palabra);
  return respuesta.data;
};

export const eliminarPalabra = async (id) => {
  const respuesta = await axios.delete(`${API_URL}/${id}`);
  return respuesta.data;
};
