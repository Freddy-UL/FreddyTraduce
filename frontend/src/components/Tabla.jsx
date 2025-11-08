import { eliminarPalabra, actualizarPalabra, buscarPalabras } from "../servicios/api";
import { useState } from "react";
import "./Tabla.css";

function Tabla({ palabras, recargar }) {
  const [editando, setEditando] = useState(null);
  const [datosEditados, setDatosEditados] = useState({});
  const [termino, setTermino] = useState("");
  const [resultado, setResultado] = useState([]);

  // Buscar palabra
  const manejarBusqueda = async () => {
    if (termino.trim() === "") {
      recargar();
      setResultado([]);
      return;
    }

    const datos = await buscarPalabras(termino);
    if (datos.length === 0) {
      alert("No se encontraron resultados.");
    }
    setResultado(datos);
  };

  const manejarCambio = (e) => {
    const valor = e.target.value;
    setTermino(valor);
    if (valor === "") {
      recargar();
      setResultado([]);
    }
  };

  // Eliminar palabra
  const manejarEliminar = async (id) => {
    if (window.confirm("¿Deseas eliminar esta palabra?")) {
      await eliminarPalabra(id);
      recargar();
    }
  };

  // Guardar cambios
  const manejarGuardar = async (id) => {
    await actualizarPalabra(id, datosEditados);
    setEditando(null);
    recargar();
  };

  const lista = resultado.length > 0 ? resultado : palabras;

  return (
    <div className="tabla">
      <span id="registrados" className="material-icons">save</span>
      <h2>Palabras registradas</h2>
      {/* Barra de búsqueda */}
      <div className="buscador">
        <input
          type="text"
          placeholder="Buscar palabra..."
          value={termino}
          onChange={manejarCambio}
        />
        <button onClick={manejarBusqueda}><span id="buscar" className="material-icons">search</span></button>
      </div>

      {/* Tabla */}
      <table>
        <thead>
          <tr>
            <th>Español</th>
            <th>Inglés</th>
            <th>Categoría</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          {lista.length === 0 ? (
            <tr>
              <td colSpan="4">:/ No hay palabras registradas.</td>
            </tr>
          ) : (
            lista.map((p) => (
              <tr key={p.id}>
                <td>
                  {editando === p.id ? (
                    <input
                      type="text"
                      defaultValue={p.palabra_español}
                      onChange={(e) =>
                        setDatosEditados({
                          ...datosEditados,
                          palabra_español: e.target.value,
                        })
                      }
                    />
                  ) : (
                    p.palabra_español
                  )}
                </td>
                <td>
                  {editando === p.id ? (
                    <input
                      type="text"
                      defaultValue={p.palabra_ingles}
                      onChange={(e) =>
                        setDatosEditados({
                          ...datosEditados,
                          palabra_ingles: e.target.value,
                        })
                      }
                    />
                  ) : (
                    p.palabra_ingles
                  )}
                </td>
                <td>
                  {editando === p.id ? (
                    <input
                      type="text"
                      defaultValue={p.categoria}
                      onChange={(e) =>
                        setDatosEditados({
                          ...datosEditados,
                          categoria: e.target.value,
                        })
                      }
                    />
                  ) : (
                    p.categoria
                  )}
                </td>
                <td>
                  {editando === p.id ? (
                    <button onClick={() => manejarGuardar(p.id)}>Guardar</button>
                  ) : (
                    <div className="acciones">
                      <button
                        className="btn-editar"
                        onClick={() => setEditando(p.id)}
                      >
                        Editar
                      </button>
                      <button
                        className="btn-eliminar"
                        onClick={() => manejarEliminar(p.id)}
                      >
                        Eliminar
                      </button>
                    </div>
                  )}
                </td>
              </tr>
            ))
          )}
        </tbody>
      </table>
    </div>
  );
}

export default Tabla;