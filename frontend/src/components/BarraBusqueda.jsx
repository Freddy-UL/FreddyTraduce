import { useState } from "react";
import { obtenerPalabras } from "../servicios/api";
import "./BarraBusqueda.css";

function BarraBusqueda({ setResultados }) {
  const [termino, setTermino] = useState("");

  const manejarCambio = async (e) => {
    const valor = e.target.value;
    setTermino(valor);

    if (valor.trim() === "") {
      setResultados([]);
      return;
    }

    try {
      const resultados = await obtenerPalabras(valor);
      setResultados(resultados);
    } catch (error) {
      console.error("Error al buscar palabras:", error);
    }
  };

  return (
    <div className="busqueda-contenedor">
      <input
        type="text"
        placeholder="🔍 Buscar palabra..."
        value={termino}
        onChange={manejarCambio}
        className="busqueda-input"
      />
    </div>
  );
}

export default BarraBusqueda;
