<%String titulo = "HelloWeb | BOX MODEL"; %>
<%String nombreTitulo = "Box Model"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %> 




 <style>
        /*Damos formato a la caja, en este caso al elemento p*/
        p {

            padding: 2px;
        }


        span {
            border: 3px dotted red;
            padding: 5px;
        }

        p.prueba {
            color: teal;
            border: 5px solid green;
            margin: 10px;
            padding: 20px;
            /*padding: 20px shorthand: 4lados*/

        }
        
        
			
		.content-box { 
		  box-sizing: content-box; 
		  /* Ancho  total: 160px + (2 * 20px) + (2 * 8px) = 216px
		     Altura total: 80px + (2 * 20px) + (2 * 8px) = 136px
		     Ancho de la caja de contenido: 160px
		     Altura de la caja de contenido: 80px */
		}
		
		.border-box { 
		 
		  box-sizing: border-box;
		  /* Ancho total: 160px
		     Altura total: 80px
		     Ancho de la caja de contenido: 160px - (2 * 20px) - (2 * 8px) = 104px
		     Altura de la caja de contenido: 80px - (2 * 20px) - (2 * 8px) = 24px */
		}

        
</style>
    
    <p>Toda etiqueta de HTML tiene una estructura de caja</p>

    <div class="box">1</div>
    <div class="box">2</div>
    <br>
    
    
    <section>
        <h2>Display</h2>
        <p><code>Display es el atributo para gestionar si es línea o bloque. Existen muchos más tipos de display, ejemplo:flexbox</code>
        </p>
        <p>trick: usar el inspector para verlo</p>

        <dl>
            <dt>Block</dt>
            <dd>Elemento que ocupa todo el ancho del elemento padre</dd>

            <dt>Inline</dt>
            <dd>Elemento que ocupa lo que este escrito en su contenido</dd>

            <dt>Inline-block</dt>
            <dd>Es una cosa hibrida de las dos anteriores</dd>
        </dl>
        <p>Lorem ipsum dolor, sit amet consectetur <span>adipisicing elit</span>. Commodi distinctio porro nemo
            perferendis
            harum voluptatum nihil autem error aut doloremque fugiat, maxime vero ipsa hic, modi numquam iusto!
            Distinctio,
            mollitia!</p>
    </section>
    
    <section>
    	<h2>Box Sizing</h2>
    	<p>Box sizing es una propiedad que indica como el user agent del navegador debe calcular el ancho y alto total de un elemento</p>
    	<p>Existen dos tipos de comportamiento.</p>
    	
    	<ol>
    		<li><code>content-box</code> En este caso el borde que se le añade a un contenedor no esta incluido en el tamaño del mismo, sino que se debe de sumar. Por ejemplo si tenemos un contenedor con 100px de ancho y le añadimos un borde de 2px, el contenedor contará 100px más los 2px de cada borde, en total 104px.</li>
    		<li><code>content-border</code>En este caso, el user agent calcula que el contenedor comprende el tamaño de borde. Por ejemplo, si creamos un contenedor de 100px de ancho y le añadimos 2px de border, el contará 100px de ancho.</li>
    	</ol>
    	
    	<div class="box content-box"></div>
    	
    	<div class="box content-border"></div>
    </section>
    
    
    <section>
    
        <h2>Visibilidad</h2>
        <p>Existen dos maneras de ocultar elementos en html</p>
        <p>1. Usando <code>visibility</code></p>
        <div class="box">1</div>
        <div class="box" style="visibility: hidden">2</div>
        <div class="box">3</div>
        <p>En este caso, la caja ocupa espacio, aunque este invisible</p>
        <p>2. Usando <code>display:none</code></p>
        <div class="box" style="display:none">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
        <p>En este caso, la caja no ocupa espacio.</p>


    </section>

    <section>
        <h2>Overflow</h2>
        <p>Como se muestra la información de los elementos cuando no entran en el contenedor
            padre.<code>visible | hidden | scroll | auto </code></p>
        <p>También se suele utilizar <code>overflow-x | overflow-y</code></p>
        <div class="box-texto" style="overflow: hidden">
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Minima in fuga aut, ipsum numquam ducimus
                placeat assumenda, ad culpa, distinctio molestiae molestias facilis necessitatibus! Necessitatibus
                perspiciatis hic iusto illum! Cupiditate!</p>
        </div>
        <div class="box-texto" style="overflow: scroll">
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sunt ea nam itaque temporibus repellendus
                consectetur atque numquam, laborum iusto facere, natus architecto porro aut iste, hic corrupti ipsum
                fuga veniam.</p>
        </div>
        <div class="box-texto" style="overflow: auto">
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus impedit minima minus dolorem
                accusamus cumque quod, quasi mollitia unde ut voluptas temporibus deleniti excepturi tempore praesentium
                aperiam in illo reprehenderit.</p>
        </div>
        <div class="box-texto" style="overflow:visible">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, accusantium ab similique voluptatem
                suscipit recusandae obcaecati possimus, a, ea ut id sed vel beatae. Dolores delectus nam praesentium
                tempora ipsa!</p>
        </div>


    </section>

    <section>
        <h2>Z-index</h2>
        <p>Se encarga de la profundidad de los elementos cuando se solapan</p>

        <div class="box" style="position: relative;  left: 134px;  z-index: 2;   background-color: green;   bottom: -10px;"> 1</div>
        <div class="box" style="z-index: 1;position: relative; bottom:20px; left: 50px; background-color: red;">2</div>
        <div class="box" style="z-index: 3;position: relative;">3</div>
    </section>
    
    <%@include file="/includes/footer.jsp" %> 