<?php
/**
 *
 */

class bomberos
{
    private $id;
    private $nombre;
    private $direccion;
    private $tipo;
    private $lat;
    private $lng;
    private $conn;
    private $tableEvento   = 'evento';
    private $tableEncuesta = 'encuesta';
/**
 *
 */
    public function setId($id)
    {$this->id = $id;}
    public function getId()
    {return $this->id;}
    public function setNombre($nombre)
    {$this->nombre = $nombre;}
    public function getNombre()
    {return $this->nombre;}
    public function setDireccion($direccion)
    {$this->direccion = $direccion;}
    public function getDireccion()
    {return $this->direccion;}
    public function setTipo($tipo)
    {$this->tipo = $tipo;}
    public function getTipo()
    {return $this->tipo;}
    public function setLat($lat)
    {$this->lat = $lat;}
    public function getLat()
    {return $this->lat;}
    public function setLng($lng)
    {$this->lng = $lng;}
    public function getLng()
    {return $this->lng;}
    /**
     *
     */

    public function __construct()
    {
        require_once 'Acceso_Datos/Conexion.php';
        $conn       = new Conecar_bd;
        $this->conn = $conn->Realizar_Conexion();
    }
/**
 *
 */
    public function obtenerColegios()
    {
        try {
            $sql = "SELECT * FROM $this->tableEvento INNER JOIN $this->tableEncuesta ON $this->tableEncuesta.id_encuesta = $this->tableEvento.encuesta";
            $stm = $this->conn->prepare($sql);

            if ($stm->execute()) {
                return $stm->fetchAll(PDO::FETCH_ASSOC);
            } else {
                return "Error de consulta";
            }

        } catch (Exeption $e) {
            die('Error' . $e->getMessage());
        }

    }

    public function obtenerInfoMarcador($id)
    {
        try {

            $sql = "SELECT * FROM bomberos.resultado_encuesta WHERE ID = ?";
            $stm = $this->conn->prepare($sql);
            $stm->bindParam(1, $id, PDO::PARAM_INT);

            if ($stm->execute()) {
                return $stm->fetchAll(PDO::FETCH_ASSOC);
            } else {
                return "Error de consulta";
            }

        } catch (Exeption $e) {
            die('Error' . $e->getMessage());
        }

    }

}
