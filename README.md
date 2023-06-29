## Desafío - Despliegue de una aplicación en internet utilizando Heroku, railway o AWS

Resumen del proyecto:  
Simón, un estudiante de cine, desea desarrollar una aplicación web para mostrar personajes de Harry Potter, así como su locación y la casa a la que pertenecen. Esta propuesta tiene como objetivo evaluar la viabilidad de crear este proyecto en formato de aplicación web.

## Requerimientos

1. Crear la aplicación con el nombre `howarts_rails`. Esta debe iniciar su desarrollo con el motor de base de datos postgresql.
2. Generar un modelo llamado Character que contenga los campos:
  a. `name`
  b. `location`
  c. `house`
  
4. Generar un controlador pages que muestre en una vista index los personajes, la locación y la casa a la que pertenece el mago.
5. Establecer como ruta raíz de la aplicación la acción index.
6. Subir la aplicación heroku, railway o aws.

### Creacion y instalacion de dependencies

1. Creación del proyecto:
```bash
    rails new howarts_rails -d postgresql
```

2. Generación del modelo:
```bash
    rails g model Character name location house
```

3. Generación del controlador:
```bash
    rails g controller pages index
```

4. Configuración de las rutas:
- En el archivo `config/routes.rb`, agregas las siguientes líneas:
```bash
    get 'pages/index'
    root "pages#index"
```

5. Agregar gema:
- En el archivo `Gemfile`, agregas la siguiente línea:
```bash
    gem 'faker', '~> 3.0'
```
Esta gema se utilizará para generar datos de personajes aleatorios.

6. Instalación de gemas:
- Ejecutas el comando `bundle install` para instalar la gema Faker y cualquier otra gema agregada al `Gemfile`.

7. Creación y migración de la base de datos:
- `rails db:create db:migrate`: Estos comandos crean la base de datos y migran las tablas definidas en las migraciones.

8. Configuración del archivo `seeds.rb`:
- Abres el archivo `db/seeds.rb` y agregas el siguiente código:
```bash
20.times do |i|
  Character.create(name: Faker::Movies::HarryPotter.character, location: Faker::Movies::HarryPotter.house)
end
```

9. Ejecución de los seeds:
- Ejecutas el comando `rails db:seed` para ejecutar el código del archivo `seeds.rb` y agregar los personajes a la base de datos.

10. Verificación en la consola de Rails:
- Ejecutas el comando `rails c` para abrir la consola de Rails
- Dentro de la consola, ejecutas `Character.all` para verificar que los personajes se hayan creado correctamente
- Finalmente, ejecutas `exit` para salir de la consola de Rails.
