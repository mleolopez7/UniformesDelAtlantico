<?php
class Views {

    public function getView($controlador, $vista, $data="")  
    {
        $controlador = get_class($controlador);  // Obtener el nombre del controlador actual.
        if ($controlador == "Home") {
            $vista = "Views/".$vista.".php";
        }else{
            $vista = "Views/".$controlador."/".$vista.".php";
        }
        require $vista;
    }
}

?>