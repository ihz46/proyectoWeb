<%String titulo = "HelloWeb | Etiquetas B�sicas HTML"; %>
<%String nombreTitulo = "Etiquetas b�sicas"; %>


<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/nav.jsp" %> 


 <style>
        /*Estilos para la p�gina etiquetasBasicas.html*/
        .botonEtiquetas {

            color: rgb(255, 255, 255);
            font-size: 20px;
            line-height: 20px;
            padding: 10px;
            border-radius: 20px;
            font-family: Georgia, serif;
            font-weight: normal;
            text-decoration: none;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
            background-image: linear-gradient(to right, rgb(28, 110, 164) 0%, rgb(35, 136, 203) 50%, rgb(20, 78, 117) 100%);
            box-shadow: rgb(0, 0, 0) 5px 5px 15px 5px;
            border: 3px solid rgb(28, 110, 164);
            display: inline-block;
        }

        .botonEtiquetas:hover {
            background: #1C6EA4;
        }

        .botonEtiquetas:active {
            background: #144E75;
        }
    </style>
    
     <p><a href="https://www.ipartek.com/">Enlace a IPARTEK.COM</a>
        <p>
            <br><br>

            <p><a href="ejemplos/css/animaciones.html">Enlace a animaciones.html</a></p>
            <br><br>
            <p><a href="tel:+34699566587">Llamar por tel�fono</a></p>
            <br><br>
            <p><a href="mailto:ihernandezzarraga@gmail.com?subject=Ipartek">Enviar email</a></p>

            <pre>Esto es un texto 
            preformateado.
            
</pre>
            <br><br>

            <noscript>
                <p class="script">
                    Debes activar Javascript en tu navegador para visualizar la web correctamente.
                    <br>
                    <br>
                    <a href="https://www.webex.es/no-javascript/nojavascript-mac-chrome.html">Enlace para activar
                        JavaScript en Google Chrome</a>
                    <br>
                    <br>
                    <a href="https://www.webex.es/no-javascript/nojavascript-firefox.html">Enlace para activar
                        JavaScript en Mozilla Firefox</a>

                </p>

                <script>
                    alert('Debes de activar JavaScript')
                </script>

            </noscript>

            <button onclick="mostrarAlert()" class="botonEtiquetas">Pincha para mostrar alert</button>
            <br>
            <br>
            <iframe width="800" height="600" src="https://www.youtube.com/embed/o5fuqdczxEE" frameborder="0"
                allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
            <br>
            <br>
            <div class="parrafoLorem">
                <p>


                    <h3>Esto es un meter</h3>
                    <meter min="0" max="100" value="50">
                        <span>1/5</span>
                    </meter>
                    <br>
                    <h3>Esto es un progress</h3>
                    <progress value="70" max="100">
                    </progress>
                    <br>
                    <br>

                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at aliquam ligula. Integer
                    scelerisque hendrerit quam, nec tincidunt ex cursus sed. Nullam tincidunt sem sit amet metus
                    volutpat pulvinar. Phasellus dictum vitae nibh quis luctus. Donec elit ex, malesuada bibendum
                    faucibus sit amet, ullamcorper in mi. Fusce eu tristique justo, id commodo felis. Sed facilisis
                    vulputate enim sit amet volutpat. Duis id est lectus. Morbi eu quam posuere lacus ullamcorper porta
                    vitae eget nibh. Etiam consequat fringilla tempus. Suspendisse ut tellus sagittis, lacinia purus
                    vel, fringilla leo. Aenean hendrerit vitae elit ac aliquam. Suspendisse potenti. Maecenas feugiat
                    urna ac mollis sodales. Maecenas commodo mollis faucibus.
                </p>
                <br>
                <p>
                    In hac habitasse platea dictumst. Donec metus libero, porttitor consequat lectus in, tempus
                    imperdiet ligula. Morbi turpis tortor, sollicitudin in ornare et, porttitor quis ipsum. Pellentesque
                    vehicula a lectus euismod pellentesque. Aliquam a sem in diam fringilla dictum a quis massa. Sed
                    cursus quis dolor eget euismod. Aliquam pellentesque mollis commodo. Aliquam fermentum vehicula quam
                    id porta. Phasellus faucibus molestie sem aliquet tempus. Morbi nec fermentum metus, quis tincidunt
                    lectus. Vestibulum velit ligula, interdum vestibulum pulvinar et, volutpat id dui. Nam a ante id
                    neque vestibulum euismod. Curabitur pulvinar consectetur nunc, vel consequat massa porta in.
                </p>
                <br>
                <p>
                    Etiam pulvinar, ante id tristique consequat, nunc dui lacinia enim, eget molestie diam nunc eu
                    magna. Morbi venenatis est at odio rutrum, non facilisis sapien bibendum. Integer non posuere massa.
                    Vestibulum in iaculis arcu. Nulla pharetra odio in dui eleifend dapibus. Curabitur at nisi in tortor
                    lacinia molestie. Ut eget nulla diam.
                </p>

                <br>
                <p>
                    Vivamus sed congue nulla, nec cursus augue. Integer et nisi id turpis consequat dictum et quis nisl.
                    Nullam maximus, sapien at porttitor laoreet, lacus tortor mollis lectus, ut aliquam leo est ac
                    tellus. Mauris sagittis, dui molestie eleifend rhoncus, velit tellus gravida leo, nec egestas risus
                    magna et justo. Vestibulum luctus sollicitudin nisl nec hendrerit. Vestibulum pulvinar ante eu felis
                    sollicitudin, quis tincidunt libero placerat. Nulla placerat dapibus efficitur. Sed et consectetur
                    tortor. Nulla placerat felis et turpis commodo tristique. Vestibulum aliquet nibh vitae magna
                    condimentum, at bibendum ligula posuere. Suspendisse at turpis lacus. Integer pretium nisl ac dolor
                    tincidunt, in pellentesque ligula suscipit. Donec gravida porttitor ipsum, ac blandit ligula
                    consectetur non. Mauris sagittis rhoncus ante vel suscipit. Sed elementum, ligula non suscipit
                    molestie, sem justo aliquet tellus, at malesuada metus libero quis magna. Praesent eu justo dolor.
                </p>
                <br>
                <p>
                    Praesent imperdiet risus vitae arcu pulvinar, ut auctor augue tincidunt. Proin lobortis odio quis ex
                    scelerisque, vel vulputate ligula semper. Cras consequat, justo eget tristique lacinia, urna velit
                    tempus turpis, sit amet interdum nisi ligula a nisi. Sed nec massa vel est sollicitudin viverra.
                    Curabitur porta nisl eu elit suscipit egestas. Suspendisse potenti. Vivamus vitae nulla porttitor,
                    lobortis nunc ac, vehicula sapien. Nam tristique, purus id ultrices elementum, sem metus varius
                    sapien, a congue augue sapien eu magna. Vivamus in metus a enim varius lobortis ac id magna. Integer
                    pulvinar libero in vehicula vehicula. Vivamus et dolor viverra, blandit purus et, mattis lacus.
                    Vivamus sit amet velit ante. Aliquam varius sagittis lacinia. Integer pellentesque quam in arcu
                    posuere scelerisque. Sed porta vehicula vulputate. Morbi bibendum urna tincidunt, finibus ante nec,
                    tincidunt est.
                </p>
                <br>
                <p>
                    Ut imperdiet, nisl quis fermentum maximus, sapien nunc aliquet libero, sed suscipit augue lorem
                    ullamcorper lacus. Aliquam molestie eget neque eget feugiat. Interdum et malesuada fames ac ante
                    ipsum primis in faucibus. Vestibulum scelerisque consectetur lacus. Nunc ac porta erat. Sed varius
                    vehicula odio. Morbi vehicula massa massa, sed molestie neque scelerisque ut. Nulla sed vulputate
                    enim, a ultrices turpis.
                </p>
            </div>
            <br>
            <hr>
            <h2 class="tachado">Seccion de listas</h2>
            <hr>

            <h2 class="tituloListas">Lista ordenada</h2>
            <ol>
                <li>Esto ser�a el primer elemento</li>
                <li>Esto ser�a el segundo elemento</li>
                <li>Esto ser�a el tercer elemento</li>
                <li>Esto ser�a el cuarto elemento</li>
                <li>Esto ser�a el quinto elemento</li>
                <li>Esto ser�a el sexto elemento</li>
            </ol>
            <br>
            <h2 class="tituloListas">Lista no numerada</h2>
            <ul>
                <li>PRIMERA PARTE</li>
                <li>SEGUNDA PARTE</li>
                <li>TERCERA PARTE</li>
            </ul>
            <br>
            <h2 class="tituloListas">Lista de definiciones</h2>
            <p>Cryptids of Cornwall:</p>

            <dl>
                <dt>Beast of Bodmin</dt>
                <dd>A large feline inhabiting Bodmin Moor.</dd>

                <dt>Morgawr</dt>
                <dd>A sea serpent.</dd>

                <dt>Owlman</dt>
                <dd>A giant owl-like creature.</dd>
            </dl>

            <img class="imagen" src="images/html5-cheat-sheet.png" alt="Tabla chuletilla HTML5">
            
            
            
  <%@include file="/includes/footer.jsp" %> 
      