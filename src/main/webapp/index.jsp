<%String titulo = "HelloWeb | Inicio"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/nav.jsp" %> 

<span class="fas fa-eye-slash fa-spin"></span>
<span class="fas fa-eye"></span>
<section>
        <h2>Ejercicio HTML5, CSS3 y JAVASCRIPT</h2>
        <h2>ALUMN@S IPARTEK</h2>
        <h3>Voluntari@ <span id="nombre">X</span></h3>
        <p>Este ejercicio funciona de la siguiente forma:</p>
        <ol>
            <li><p>Lo primero que haremos será declarar un array de la siguiente manera: <code>var listaNombres = ['Endika', 'Joseba', 'Maria', 'Ana', 'Juan Carlos', 'Aitor', 'Iker', 'Kiryl', 'erlantz', 'mikel',
                    'alejandro', 'raul','cristian', 'iñigo'];</code></p></li>
            <li><p>Generamos un número aleatorio y cojemos el nombre que está en la posición generada. <code>Math.floor(Math.random()*listaNombres.length) </code></p></li>
            <li><p>Guardamos en una variable el nombre del array de la posicón aleatoria que hemos obtenido anteriormente.<code></code></p></li>
        </ol>
        
       
        <div>
            <button class="boton"  onclick="buscarVoluntario()">Buscar Voluntario</button>
        </div>
    </section>






    <a target="blank" href="https://www.w3schools.com/html/html_tables.asp">ENLACE DOCUMENTACIÓN</a>
    <br>
    <br>





    <div class="tabla">
        <table>
            <tr>
                <td>Endika</td>
                <td>JOSEBA</td>
            </tr>
            <tr>
                <td>MARIA</td>
                <td>Ana</td>
            </tr>
            <tr>
                <td>JUAN CARLOS</td>
                <td>AITOR</td>
            </tr>
            <tr>
                <td>IKER</td>
                <td>KiRyL</td>
            </tr>
            <tr>
                <td>ERLANTZ</td>
                <td>MIKEL</td>
            </tr>
            <tr>
                <td>ALEJANDRO</td>
                <td>Iñigo</td>
            </tr>
            <tr>
                <td>RAUL</td>
                <td>CRISTIAN</td>
            </tr>
            <tr>
                <td colspan="2" align="center">ANDER</td>
            </tr>

        </table>
    </div>
	
	
	
<%@include file="includes/footer.jsp" %> 





