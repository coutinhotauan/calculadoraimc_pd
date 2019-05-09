<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
    <title>IMC</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="estilo.css" rel="stylesheet">

  </head>
  <body>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="panel-heading">
                <h3 class="panel-title">Calcule seu IMC</h3>
            </div>
            <br>
            <div class="col-md-auto">
                <form>
                    <fieldset>

                        <div class="form-group">
                        	<label for="altura">Altura</label>
                            <input class="form-control" placeholder="Altura" name="altura" type="text">
                        </div>

                        <div class="form-group">
                        	<label for="peso">Peso</label>
                            <input class="form-control" placeholder="Peso" name="peso" type="text">
                        </div>

                        <button class="btn btn-success">Calcular</a>

                        <br>
                    </fieldset>
                </form>

	                <!-- CODIGO JAVA -->
	    <%
	        String pesostr = request.getParameter("peso");
	        String alturastr = request.getParameter("altura");

	        if(pesostr != null && alturastr != null){
	            float peso = Float.parseFloat(pesostr);
	            float altura = Float.parseFloat(alturastr);

	            float imc = peso / (altura * altura);
	    %>
	    <br>

	    <%
	            if(imc < 16){
	    %>
	                <div class="alert alert-danger" role="alert">
	                	<h4>IMC: <%=imc%></h4>
	                	<p>Magreza grave</p>
	                </div>
	    <%
	            }else if(imc >= 16 && imc < 17){
	    %>            
	                <div class="alert alert-danger" role="alert">
	                	<h4>IMC: <%=imc%></h4>
	                	<p>Magreza moderada</p>
	                </div>
	    <%        
	            }else if(imc >= 17 && imc < 18.5){
	    %>
	    			<div class="alert alert-warning" role="alert">
	                	<h4>IMC: <%=imc%></h4>
	                	<p>Magreza leve</p>
	                </div>
	    <%
	            }else if(imc >= 18.5 && imc < 25){
	    %>
	    			<div class="alert alert-success" role="alert">	              
	                	<h4>IMC: <%=imc%></h4>
	                	<p>Saudavel</p>
	                </div>
	    <%
	            }else if(imc >= 25 && imc < 30){
	    %>
	                <div class="alert alert-warning" role="alert">
	                	<h4>IMC: <%=imc%></h4>
	                	<p>Sobrepeso</p>
	                </div>
	    <%
	            }else if(imc >= 30 && imc < 35){
	    %>
	                <div class="alert alert-danger" role="alert">
	                	<h4>IMC: <%=imc%></h4>
	                	<p>Obesidade</p>
	                </div>
	    <%
	            }else if(imc >= 35 && imc < 40){
	    %>
	                <div class="alert alert-danger" role="alert">
	                	<h4>IMC: <%=imc%></h4>
	                	<p>Obesidade severa</p>
	                </div>
	    <%        
	            }else if(imc >= 40){
	    %>
	                <div class="alert alert-danger" role="alert">
	                	<h4>IMC: <%=imc%></h4>
	                	<p>Obesidade mórbida</p>
	                </div>
	    <%
	        	}
	        }
	    %>

            </div>
        </div>
    </div>
 </body>
</html>
