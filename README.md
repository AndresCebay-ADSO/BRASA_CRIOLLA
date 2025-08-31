# README - Sistema de Gestión para Asadero Diana "Brasa Criolla"

![Banner Brasa Criolla](https://via.placeholder.com/800x200?text=Brasa+Criolla+Sistema+de+Gestión) <!-- Reemplazar con logo real -->

## 📌 Descripción del Proyecto
Sistema de gestión integral desarrollado para el Asadero Diana "Brasa Criolla" que incluye:
- **Punto de Venta (POS)** multiplataforma
- **Gestión de inventario** con descuento automático de insumos
- **Módulo de facturación** electrónica DIAN
- **Control de usuarios** con roles diferenciados
- **Sistema de pedidos** para llevar

## 🛠 Stack Tecnológico
<div align="center">
  <img src="https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white" alt="Laravel">
  <img src="https://img.shields.io/badge/XAMPP-FB7A24?style=for-the-badge&logo=xampp&logoColor=white" alt="XAMPP">
  <img src="https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white" alt="Tailwind CSS">
  <img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
</div>

## 🚀 Características Clave
- **Interfaz responsive** adaptada a tablets y celulares
- **Personalización corporativa** con logo y colores de "Brasa Criolla"
- **Sistema de roles** completo (Admin, Meseros, Cocina, Cajero)
- **Inventario inteligente** con recetario automático
- **Soporte offline** para continuar operando sin internet

## 📂 Documentación y Recursos
| Documento | Enlace |
|-----------|--------|
| 📝 **Plan de Trabajo** | [Ver documento](https://drive.google.com/drive/folders/1HUMvx9gBuDJc_wHRgE9R1NfUJhjKJl7L) |
| 📋 **IEEE830 (Requisitos)** | [Ver especificaciones](https://drive.google.com/drive/folders/1gqPV3z8_jhZWuTCL4Yh63VEus35bx-AT) |
| 👥 **Historias de Usuario** | [Ver casos de uso](https://drive.google.com/drive/folders/1f1u2YOILo5UoTCE1DbkH7m0JtcvENMfn) |
| 🔄 **Control de Cambios** | [Ver registro](https://drive.google.com/drive/folders/18dKKMuOrSwK4uwjnD76cBqn5RcWF39fL) |
| 🗃️ **Modelo de Base de Datos** | [Ver diseño](https://drive.google.com/drive/folders/1R86WNAIqrTnZQHNMqRXsUzqYdL0g5Ktk) |

## 🖥️ Estructura del Proyecto (Laravel)
```
asadero-diana/
├── app/                  # Lógica de aplicación
│   ├── Models/           # Modelos Eloquent
│   ├── Http/             # Controladores
│   └── Providers/        # Service Providers
├── config/               # Configuraciones
├── database/             # Migraciones y Seeds
├── public/               # Assets públicos
├── resources/
│   ├── views/            # Vistas Blade + Tailwind
│   └── css/              # Estilos compilados
├── routes/               # Definición de rutas
└── tests/                # Pruebas automatizadas
```

## 👨‍💻 Roles y Permisos
| Rol | Acceso | Dispositivos |
|-----|--------|--------------|
| **Administrador** | Configuración completa, reportes, usuarios | PC/Tablet |
| **Mesero** | Tomar pedidos, modificar órdenes | Tablet/Móvil |
| **Cocina** | Ver órdenes, marcar como preparado | Pantalla dedicada |
| **Cajero** | Facturación, cierre de caja | PC principal |

## 🛠️ Instalación con XAMPP

1. **Requisitos previos**:
   - XAMPP con PHP ≥ 8.0
   - Composer instalado
   - Node.js (para Tailwind)

2. **Configuración inicial**:
```bash
git clone [repo-url]
cd asadero-diana
composer install
npm install
cp .env.example .env
php artisan key:generate
```

3. **Base de datos**:
   - Crear DB en phpMyAdmin
   - Configurar `.env`:
     ```ini
     DB_DATABASE=brasacriolla
     DB_USERNAME=root
     DB_PASSWORD=
     ```

4. **Ejecución**:
```bash
php artisan migrate --seed
php artisan serve
npm run dev
```

## 📅 Próximos Hitos
- [ ] Módulo básico de POS (80%)
- [ ] Integración con inventario (50%)
- [ ] Sistema de facturación (0%)
- [ ] Panel de administración (30%)

## 🤝 ¿Cómo Contribuir?
1. Revisa los [issues abiertos](https://github.com/tu-repo/issues)
2. Sigue nuestro [guía de estilos](https://drive.google.com/drive/folders/1gqPV3z8_jhZWuTCL4Yh63VEus35bx-AT)
3. Envía tus PRs con descripción clara

## 📜 Licencia
MIT License © 2025 - [Asadero Diana](https://github.com/tu-repo)