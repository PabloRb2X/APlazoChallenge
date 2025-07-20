# APlazoChallenge
Aplazo challenge flutter app

Mi app de recetas consta de las siguientes funcionalidades:
1. Scroll infinito para mostrar todas las recetas disponibles en pantalla (se combinaron algunos servicios para poder obtener todas las recetas disponibles ya que no había un endpoint que directamente nos diera esa información y mucho menos, que estuviera paginado).
2. Pantalla de detalle de la receta, esta muestra la información de la receta, junto con los ingredientes que puede tener y la forma de preparación, además, si el api devuelve una ruta de youtube, muestra el video correspondiente para la preparación. Una funcionalidad más es que puedes colapsar la parte de los ingredientes y de la preparación con el objetivo de tener mejor visibilidad en la pantalla.
Finalmente, se incluyó la opción de "Agregar a favoritos" tocando el corazón que está en la parte de la cabecera donde viene el nombre de la receta, los favoritos se guardan localmente haciendo uso de SharedPreferences.
3. Pantalla de búsqueda, esta muestra un textfield donde podemos escribir el nombre de algún platillo y se hace una petición web para poder obtener un listado de las posibles recetas que coinciden con la búsqueda. Al seleccionar alguna de ellas, se va a la pantalla de detalle (mencionada en la opción 2).

El proyecto fue construido usando una arquitectura CLEAN y utilizando como gestor de estados BLoC, para la inyección de dependencias de nuestros BLoC's se usó get_it.
El proyecto fue hecho utilizando VSCode con los frameworks de Flutter v3.32.6 y Dart v3.8.1 por lo que para correr localmente es necesario tener la misma o versiones superiores.
Se hizo el diseño basado en algunas aplicaciones que vi de cocina y con los conocimientos de UI/UX que he aprendido en mi etapa profesional.
Los empty states se manejaron con mensajes en widgets en la sección de búsqueda y en el error de las peticiones, se creó un widget que te permite reintentar la petición.
Para el manejo de navegaciones (y animaciones de pop y push) se usó Fluro. Estas son las dependencias que se usaron en el proyecto:
	dio: ^5.5.0+1
  	equatable: ^2.0.5
  	fluro: 2.0.5
  	flutter_bloc: ^8.1.3
  	freezed_annotation: ^3.1.0
  	get_it: ^7.6.0
  	json_annotation: ^4.9.0
  	shared_preferences: ^2.5.3
  	youtube_player_flutter: ^9.1.1

Dentro de las limitaciones que tuve, me hubiese gustado hacer una pantalla extra para mostrar los favoritos pero por cuestiones de tiempo, no lo pude hacer, por lo que eso sería parte de las mejoras a futuro que se podrían hacer.