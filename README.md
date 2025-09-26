# 🐾 Prueba Técnica Backend – API Laravel

Este proyecto es una **API simple en Laravel 12** que permite gestionar usuarios y consultar información de Pokémon de ejemplo. Ideal para pruebas técnicas y demostraciones.

---

## 🔹 Tecnologías

- **Backend:** Laravel 12
- **Frontend:** Vue.js (opcional, demo)
- **API:** RESTful JSON
- **Servidor local:** `php artisan serve`

---

## 🔹 Instalación

1. Clonar el repositorio:

```bash
git clone https://github.com/SeleneRoze/Prueba-t-cnica-Backend-API-Laravel-.git
cd Prueba-t-cnica-Backend-API-Laravel-
Instalar dependencias:

bash
Copiar código
composer install
Configurar archivo .env:

bash
Copiar código
cp .env.example .env
php artisan key:generate
Correr servidor de desarrollo:

bash
Copiar código
php artisan serve
Tu API estará disponible en http://127.0.0.1:8000

🔹 Rutas de la API
Usuarios
GET /api/users → Lista de usuarios

GET /api/users/{id} → Usuario por ID

Pokémon
GET /api/pokemon/{name} → Consulta Pokémon de ejemplo

Ejemplos:

bash
Copiar código
curl http://127.0.0.1:8000/api/users
curl http://127.0.0.1:8000/api/users/2
curl http://127.0.0.1:8000/api/pokemon/pikachu
🔹 Respuesta de ejemplo
Lista de usuarios
json
Copiar código
[
  {"id":1,"name":"Ash","email":"ash@poke.com"},
  {"id":2,"name":"Misty","email":"misty@poke.com"},
  {"id":3,"name":"Brock","email":"brock@poke.com"}
]
Pokémon
json
Copiar código
{
  "name": "Pikachu",
  "data": {
    "type": "Electric",
    "level": 25
  }
}
🔹 Frontend (opcional)
Puedes conectar cualquier frontend usando axios con la URL base:

js
Copiar código
import axios from 'axios';

export const api = axios.create({
  baseURL: 'http://127.0.0.1:8000/api'
});
🔹 Notas
Esta API es solo para demostración y pruebas técnicas.

Las rutas de Pokémon son mock, sin base de datos.

Se puede expandir agregando persistencia de usuarios y CRUD completo.
