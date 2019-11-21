<%String titulo = "HelloWeb | ESPECIFICIDAD"; %>
<%String nombreTitulo = "Especificidad"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %>  




    <p style="color: red;font-size: 20px;">Este párrafo es un estilo en línea</p>

    <style>
        /*También se puede usar CSS dentro de HTML*/

        p {
            color: teal;
        }

        #texto-rojo {
            color: red;
        }

        #texto-verde {
            color: green;
        }

        .super-importante {
            color: orangered !important;
        }
    </style>



    <p class="texto-rojo">Una regla de clase tiene más importancia que una regla de etiqueta.</p>


    <p id="texto-verde" class="texto-rojo super-importante">Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Consectetur odio, nisi, voluptate eveniet voluptates exercitationem fugit voluptatum amet debitis dolor placeat.
        Accusamus, nulla. Ipsa dignissimos iste natus nobis. Harum, at?</p>
    <p>Ducimus numquam nobis fugiat magni aliquam alias doloremque magnam nisi sequi. Sapiente voluptate, deleniti quod,
        quisquam natus aliquam minus magnam odit, facilis iusto reiciendis omnis. Quidem voluptatem quibusdam
        necessitatibus veniam.</p>
    <p>Veniam quo aliquam vitae! Aperiam inventore labore ex libero dolorem repellat aliquam error iure voluptatum id,
        aliquid obcaecati non veniam voluptates delectus officiis odio veritatis, dolorum quam rerum nesciunt
        consequuntur.</p>
    <p>Necessitatibus, quas aperiam sunt aspernatur inventore aliquid totam maxime cum architecto obcaecati a,
        consequuntur quos ratione culpa delectus magnam recusandae eligendi ab dolor, aut ullam mollitia cumque
        asperiores. Ratione, deserunt.</p>
    <p>Commodi id veniam deleniti fugiat dolore eveniet repellendus, nemo modi aut ad sed nisi amet incidunt tempora.
        Fugit est corporis aliquid libero cupiditate, perferendis, quia sequi, explicabo beatae omnis autem.</p>


    <iframe width="560" height="315" src="https://www.youtube.com/embed/nBzVvBxTQPU" frameborder="0"
        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>




	
<%@include file="/includes/footer.jsp" %> 