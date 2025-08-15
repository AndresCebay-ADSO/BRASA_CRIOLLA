<?php

use Illuminate\Support\Facades\Route;

Route::get('/test-db', function () {
    try {
        $tables = DB::select('SHOW TABLES');
        $html = "<h2 style='color: green;'>¡Conexión exitosa!</h2>";
        $html .= "<h3>Tablas encontradas:</h3><ul>";
        
        foreach($tables as $table) {
            $tableName = array_values((array)$table)[0];
            $html .= "<li><strong>" . $tableName . "</strong></li>";
        }
        $html .= "</ul>";
        
        // Verificar estructura de la tabla users
        $userColumns = DB::select("DESCRIBE users");
        $html .= "<h3>Estructura de la tabla 'users':</h3><ul>";
        foreach($userColumns as $column) {
            $html .= "<li>" . $column->Field . " (" . $column->Type . ")</li>";
        }
        $html .= "</ul>";
        
        return $html;
        
    } catch (\Exception $e) {
        return "<h2 style='color: red;'>Error: " . $e->getMessage() . "</h2>";
    }
});
