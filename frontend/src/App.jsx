import { useEffect, useState } from "react";
import Traductor from "./components/Traductor";
import Tabla from "./components/Tabla";
import Logo from "./imagenes/logotipo.png";
import { obtenerPalabras } from "./servicios/api";
import "./components/Traductor.css";
import "./components/Tabla.css";
import "./App.css";

function App() {
  const [palabras, setPalabras] = useState([]);

  const cargarPalabras = async () => {
    const datos = await obtenerPalabras();
    setPalabras(datos);
  };

  useEffect(() => {
    cargarPalabras();
  }, []);

  return (
    <div className="contenedor">
      <div className="contenedor-header">
       <img className="logo" src={Logo} alt="Logo" />
       <h1>FreddyTraduce</h1>
      </div> 
      <Traductor onGuardar={cargarPalabras} />
      <Tabla palabras={palabras} recargar={cargarPalabras} />
    </div>
  );
}

export default App;
