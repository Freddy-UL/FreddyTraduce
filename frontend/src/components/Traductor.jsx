import { useState } from "react";
import { agregarPalabra } from "../servicios/api";
import "./Traductor.css";

function Traductor({ onGuardar }) {
  const [palabra_español, setPalabraEspanol] = useState("");
  const [palabra_ingles, setPalabraIngles] = useState("");
  const [categoria, setCategoria] = useState("");

  const manejarEnvio = async (e) => {
    e.preventDefault();
    if (!palabra_español || !palabra_ingles)
      return alert("Completa todos los campos");

    await agregarPalabra({ palabra_español, palabra_ingles, categoria });
    alert("Palabra guardada correctamente");

    // Recargar tabla
    onGuardar();

    // Limpiar formulario
    setPalabraEspanol("");
    setPalabraIngles("");
    setCategoria("");
  };

  return (
    <div className="traductor">
      <h2>Agregar nueva palabra</h2>
      <form onSubmit={manejarEnvio}>
        <input
          type="text"
          placeholder="Escriba la palabra en español"
          value={palabra_español}
          onChange={(e) => setPalabraEspanol(e.target.value)}
        />
        <input
          type="text"
          placeholder="Escriba su traducción en inglés"
          value={palabra_ingles}
          onChange={(e) => setPalabraIngles(e.target.value)}
        />
        <input
          type="text"
          placeholder="Ingrese una Categoría (opcional)"
          value={categoria}
          onChange={(e) => setCategoria(e.target.value)}
        />
        <button type="submit">Guardar</button>
      </form>
    </div>
  );
}

export default Traductor;