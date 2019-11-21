<%String titulo = "HelloWeb | FORMULARIO"; %>
<%String nombreTitulo = "Formulario"; %>


<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %> sp" %> 



    <style>
        form {
            border: 1px solid grey;
            padding: 20px;
            margin: auto;
        }
    </style>
    
     <p> Siempre hay que usar la etiqueta <code>form</code> junto con botón de submit.</p><br>
    <p> El atributo <code>action</code> sirve para indicar el nombre del controlador en el servidor.</p><br>
    <p> El atributo <code>name</code> de un input sirve para especificar el nombre de parámetro a enviar al servidor.
    </p><br>
    <p> El atributo <code>required</code> sirve para obligar al usuario a rellenar un campo de un formulario </p><br>
    <p>El atributo <code>placeholder</code> sirve para mostrar un texto con información dentro del input</p><br>
    <p>El atributo <code>pattern</code> se utiliza para introducir expresiones regulares(validar)</p><br>
    <p>El atributo <code>autofocus</code> sirve para que cuando el usuario entre en la página se le ponga el ratón
        dentro del primer textfield</p><br>
    <p>Estas son los input type nuevos de html5</p>
    <code>
    <ul>
        <li>search</li>
        <li>email</li>
        <li>url</li>
        <li>tel</li>
        <li>number</li>
        <li>range</li>
        <li>date</li>
        <li>month</li>
        <li>week</li>
        <li>time</li>
        <li>datetime</li>
        <li>datetime-locale</li>
        <li>color </li>
    </ul>
    </code>
    <p>Fieldset te permite agrupar varios input en categorías.</p>
    <br>
    <br>
    <form action="#" method="post">
        <h1 class="subrayado">Formulario</h1>
        <fieldset>
            <legend>Datos Personales</legend>
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" id="nombre" required placeholder="Mínimo 3 letras, máximo 10"
                pattern=".{3,10}" autofocus>
            <br>
            <br>
            <label for="edad">Edad:</label>
            <input type="number" name="edad" id="edad" required placeholder="0-99 años" min=0; max=99; step="1" ;>
            <br>
            <br>

            <label for="sexo">Sexo:</label>
            <select name="sexo" id="sexo">
                <option value="h">Hombre</option>
                <option value="m">Mujer</option>
                <option value="se" selected>Sin especificar</option>
            </select>
            <br>
            <br>
            <label for="contrasena">Contraseña</label>
            <input type="password"
                name="contrasena"
                id="contrasena">
            <button onclick="verTexto()">Ver</button>
        </fieldset>

        <label for="deportes">Deportes:</label><br><br>
        <input type="checkbox" name="deportes" id="deportes" value="1">Fútbol<br>
        <input type="checkbox" name="deportes" id="deportes" value="2">Rugby<br>
        <input type="checkbox" name="deportes" id="deportes" value="3">Paddle<br>
        <input type="checkbox" name="deportes" id="deportes" value="4" checked>Surf<br>
        <br>




        <br>
        <br>

        <label for="situacion">Situación actual:</label><br><br>
        <input type="radio" name="situacion" id="situacion" value="1" checked>Trabajando<br>
        <input type="radio" name="situacion" id="situacion" value="0">Desempleado<br>

        <br>

        <label for="observaciones">Observaciones:</label><br>
        <textarea name="observaciones" id="observaciones" cols="50" rows="10"
            placeholder="Tu opinión es muy importante para nosotros"></textarea>

        <input type="submit" value="Enviar">

    </form>
    
    
  
    <%@include file="/includes/footer.jsp" %> 