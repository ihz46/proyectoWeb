<%String titulo = "HelloWeb | SELECTORES B�SICOS"; %>
<%String nombreTitulo = "Selectores B�sicos"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %>  



 <style>
        /*Esto es un selector descendente*/
        .container p {
            color: rgb(31, 0, 167);
        }

        .container p span {
            background-color: cyan;
        }

        p .especial {
            font-weight: 600;
            /*bold, negrita*/
        }

        /* Selecciona solo los párrafos con la clase ‘especial¡ no es descendente.*/
        .especial {
            color: purple;
            background-color: rgb(20, 78, 117);
        }
    </style>
    
 <main>
    
    
    <section>
     <h2 class="subrayado">Selector de etiqueta</h2>
    <code>
        h1{
            color:red;
        }

        p{
            font-family: Times New Roman;
        }

    </code>
    <p>Es posible también en un mismo selector tener varias etiquetas, de manera que todas tengan el mismo estilo</p>
    <br>
    </section>
    
    <h2 class="subrayado">Selector</h2>

    <a href="https://code.tutsplus.com/es/tutorials/the-30-css-selectors-you-must-memorize--net-16048">Los 30 selectores
        que debes conocer</a>
    <br>
    <h2>Selector descendente A B</h2>
    <div class="container">
        <p>Vamos a dar estilos para estos párragos que estan dentro de un <code>div.container</code></p>
        <p>Lorem, ipsum dolor sit amet <span>adipisicing</span> elit. Assumenda, quae quidem, similique repellat quasi
            nobis at nihil sequi cum voluptates recusandae? Adipisci quia neque numquam rem architecto necessitatibus
            reprehenderit sit.</p>
        <p class="especial">Voluptatem, saepe <span class="especial">quasi in minus</span> alias, dignissimos dolorum
            suscipit <span>laboriosam</span> nulla tempore nisi deleniti earum. Perferendis magni dolores ratione, amet,
            rerum soluta saepe nulla quisquam possimus quod inventore? Vero, id?</p>

    </div>




</main>
	
<%@include file="/includes/footer.jsp" %> 