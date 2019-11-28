<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>AAAADAM A.C.</title>
<link rel="stylesheet" href="../css/estilos.css" type="text/css" />
<script language="javascript">

//validación de valores para impresion por rango

/**
 * @version octubre 2019
 */
 
/**
 * Función validaCampos(txtRini,txtRfin,vigencia) 
 * se encarga de verificar que los valores no sean nulos
 * o mneores a la fecha actual en el caso de la vigencia.
 */
 
function validaCampos(txtRini,txtRfin,vigencia){
	if (document.frmRegistro.txtRini.value == '')  {
		alert('El Rango Inicial no puede ser Nulo.');
		document.frmRegistro.txtRini.focus();
		
	}else{
	if(document.frmRegistro.txtRfin.value == ''){
		alert('El Rango Final no puede ser Nulo.');
		document.frmRegistro.txtRfin.focus();
	
	}else{
		
	if(document.frmRegistro.vigencia.value == ''||document.frmRegistro.vigencia.value<2019){
		alert('Introduzca la vigencia o una vigencia válida');
		document.frmRegistro.vigencia.focus();
		
	
	}else{
		numeros();
		document.frmRegistro.vigencia.value=document.frmRegistro.vigencia.value.replace(/\s/gi,'');
		document.frmRegistro.txtRini.value=document.frmRegistro.txtRini.value.replace(/\s/gi,'');
		document.frmRegistro.txtRfin.value=document.frmRegistro.txtRfin.value.replace(/\s/gi,'');
		
		document.frmRegistro.submit();
  	 	document.frmRegistro.txtRini.value =" ";
  		document.frmRegistro.txtRfin.value =" ";
  		document.frmRegistro.vigencia.value =" ";
   	}

   }//segundo else
  }//primer else	
}//cierre funcion	

//validación para impresión de todos los tarjetones
function validaVigencia(){
	if(document.frm.vigente.value == ''||document.frm.vigente.value<2019){
		alert('Introduzca la vigencia o una vigencia válida.');
		document.frm.vigente.focus();
	
	}else{
		document.frm.vigente.value=document.frm.vigente.value.replace(/\s/gi,'');
  	    document.frm.submit();	
  	    document.frm.vigente.value =" ";
   	}
								
}	





//valida que sean numeros





function numeros(){
	if (event.keyCode > 47 || event.keyCode <58) 		
		event.returnValue = true;
		
	else{
		event.returnValue = false;
		
	    
	}
} 


//validacion valores para un tarjeton
function validaValores(){
	if(   document.frmUno.cad.value== ''||document.frmUno.cad.value<2019 ){
		
		alert('Introduzca un nombre valido')
		document.frmUno.cad.focus();
		
		
	}else{
	if(document.frmUno.uno.value==''){
		alert('Introduzca el id correspondiente');
		document.frmUno.uno.focus();
		
	}else{
		document.frmUno.uno.value =document.frmUno.uno.value.replace(/\s/gi,'');
		document.frmUno.cad.value =document.frmUno.cad.value.replace(/\s/gi,'');
		document.frmUno.submit();
		document.frmUno.cad.value =" ";
		document.frmUno.uno.value =" ";

	}
	}//primer else
	
}//funcion

//muestra y oculta tablas
var boton=null;
function mostrar(tabla,val,tab,tab1)
{
var targetId, srcElement, targetElement;
var targetElement = document.getElementById(tabla);
var targetElement1 = document.getElementById(tab);
var targetElement2= document.getElementById(tab1);

if (boton!=null) 
  boton.style.display='none';
boton=targetElement;
targetElement.style.display = "";
targetElement.style.visibility="visible"

	switch(val){
		case 1:
			document.frm.vigente.value =" ";
			document.frmUno.cad.value =" ";
			document.frmUno.uno.value =" ";
			targetElement1.style.display = 'none';
			targetElement2.style.display = 'none';
			break;
		case 2:
			document.frmRegistro.txtRini.value =" ";
			document.frmRegistro.txtRfin.value =" ";
			document.frmRegistro.vigencia.value =" ";
			document.frmUno.cad.value =" ";
			document.frmUno.uno.value =" ";
			targetElement1.style.display = 'none';
			targetElement2.style.display = 'none';
			break;
		case 3:
			document.frmRegistro.txtRini.value =" ";
			document.frmRegistro.txtRfin.value =" ";
			document.frmRegistro.vigencia.value =" ";
			document.frm.vigente.value =" ";
			targetElement1.style.display ='none';
			targetElement2.style.display = 'none';
			break;
			
	}

}
function resetea(){
	document.frmRegistro.txtRini.value =" ";
	document.frmRegistro.txtRfin.value =" ";
	document.frmRegistro.vigencia.value =" ";
	
}

function reset(){
	document.frm.vigente.value =" ";	
}
function res(){
	document.frmUno.cad.value =" ";
	document.frmUno.uno.value =" ";
	
}



</script>

<style type="text/css">

.hovereffect {
  width: 100%;
  height: 100%;
  float: left;
  overflow: hidden;
  position: relative;
  text-align: center;
  cursor: default;
}



.hovereffect:hover .overlay {
  background-color: rgba(0,0,0,0.3);
}

.hovereffect img {
  display: block;
  position: relative;
  -webkit-transition: all 0.35s;
  transition: all 0.35s;
}

.hovereffect:hover img {
  filter: url('data:image/svg+xml;charset=utf-8,<svg xmlns="http://www.w3.org/2000/svg"><filter id="filter"><feComponentTransfer color-interpolation-filters="sRGB"><feFuncR type="linear" slope="1.4" /><feFuncG type="linear" slope="1.4" /><feFuncB type="linear" slope="1.4" /></feComponentTransfer></filter></svg>#filter');
  filter: brightness(1.4);
  -webkit-filter: brightness(1.4);
}

.hovereffect h2 {
  text-transform: uppercase;
  text-align: center;
  position: relative;
  font-size: 17px;
  padding: 10px;
  background-color: transparent;
  color: #FFF;
  padding: 1em 0;
  opacity: 0;
  filter: alpha(opacity=6);
  -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
  transition: opacity 0.35s, transform 0.35s;
  -webkit-transform: translate3d(-150%,-400%,0);
  transform: translate3d(-150%,-400%,0);
}

.hovereffect a, .hovereffect p {
  color: #FFF;
  padding: 1em 0;
  opacity: 0;
  filter: alpha(opacity=0);
  -webkit-transition: opacity 8.35s, -webkit-transform 0.35s;
  transition: opacity 0.35s, transform 0.35s;
  -webkit-transform: translate3d(-150%,-400%,0);
  transform: translate3d(-150%,-400%,0);
}

.hovereffect:hover a, .hovereffect:hover p, .hovereffect:hover h2, .hovereffect:hover .overlay {
  opacity: 1;
  filter: alpha(opacity=100);
  -webkit-transform: translate3d(0,0,0);
  transform: translate3d(0,0,0);
}


<!--

.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
-->
</style>

<style type="text/css">
<!--
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style16 {font-size: 12px}
.style19 {color: #003366}
.style23 {
	color:#008000;
	font-size: 16px;
}
.style24 {
	font-family: Arial, Helvetica, sans-serif;
	color: #3D4B09;
	font-size: 16px;
}
.style25 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
</head>

<body>	
	<table align="left" width="100%"  border="0" align="center">
 
		<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12"></div>
			
		    <div class="hovereffect">
		        	<img align="left" width="100%" height="101" class="img-responsive" src="web/images/v++.png" alt=""></img>
		       	 	<div class="overlay"></div>
		    </div>	
		 <tr>
  <div class="hovereffect">
		        	<img align="left" width="40%" height="71" class="img-responsive" src="web/images/beneficios.png" alt=""></img>
		       	 	<div class="overlay"></div>
		    </div>	
  </tr>
  <tr valign="top">
    <td>      
    
    <%//Presentación y botones %>
        <p>&nbsp;</p>
        <table     bgcolor="#FFFFFF" width="100%"  border="3" align="center" class="tituloServiciosExclusivos">
          <tr>
            <td><div align="center"><span class="style25">V++ </span></div></td>
          </tr>
            </span></td>
        </table >
        <p>&nbsp;</p>
    <p>
    <table width="50%"  align="center">
	<div align="center" class="radio" >

    <label class="botones" align="center">
      <input  id="boton1" type="radio" name="op1"   onclick="mostrar('tabla1',1,'tabla2','tabla3')" ondblclick="resetea()" checked>Tu ritmo
    </label>
    <label class="radio-inline" align="center">
      <input id="boton2" type="radio" name="op1" onclick="mostrar('tabla2',2,'tabla1','tabla3')" ondblclick="reset()" unchecked>Tu gráfica
    </label>
     <label class="radio-inline" align="center">
      <input id="boton3" type="radio" name="op1" onclick="mostrar('tabla3',3,'tabla1','tabla2')" ondblclick="res()"unchecked>Tu historial
    </label>
	</div>
	</table><%//tabla de botones %>
	
	</p>
	<%//Impresión de un rango de tarjetones %>
	<form name="frmRegistro" method="post" action="printtarjetones.jsp" action="tarjetones.java" onsubmit="restaura('txtRini','txtRfin','vigencia')">
	<table  id="tabla1" style="visibility:show" width="77%" border="0" align="center" cellpadding="0" cellspacing="0"  >
          <tr class="style1">
           
            <td width="200"  height="15" bgcolor="#CCCCCC">
            	<div align="left" class="style19">
                <div align="left" class="style24"><span class="style23">Edad </span>&nbsp;</div>
            </div></td>
            <td width="60"><input name="txtRfin" type="text" id="txtRfin" onkeypress="numeros()" size="15" maxlength="10" onblur="document.frmRegistro.txtPassConfirm.value = document.frmRegistro.txtPassConfirm.value.toUpperCase();document.frmRegistro.txtUsuario.value = document.frmRegistro.txtUsuario.value.trim();" /></td>
            <td width="200"  height="15" bgcolor="#CCCCCC">
            	<div align="left" class="style19">
                <div align="left" class="style24"><span class="style23">Usuario </span>&nbsp;</div>
            </div></td>
            <td width="60"><input name="vigencia" type="text" id="vigencia" onkeypress="numeros()" size="15" maxlength="10" onblur="document.frmRegistro.txtPassConfirm.value = document.frmRegistro.txtPassConfirm.value.toUpperCase();document.frmRegistro.txtUsuario.value = document.frmRegistro.txtUsuario.value.trim();" /></td>
            
            <td width="71"><span class="style12 style16"> </span>
    		<input align="left" type="button" name="btEnviar"   value="Buscar"  onclick="validaCampos();"  />
           	
           </td>
          </tr>
	</table>
 </form>	</td>
 
 <%//Impresión de todos los tarjetones %>
<form name="frm" method="post" action="prinTodos.jsp" action="tarjetones.java">
	<table id="tabla2"  style="visibility:hidden" width="47%" border="0" align="center" cellpadding="0" cellspacing="0">
		 <tr class="style1">
           
            <td width="200"  height="15" bgcolor="#CCCCCC">
            	<div align="left" class="style19">
                <div align="left" class="style24"><span class="style23">Edad </span>&nbsp;</div>
            </div></td>
            <td width="60"><input name="txtRfin" type="text" id="txtRfin" onkeypress="numeros()" size="15" maxlength="10" onblur="document.frmRegistro.txtPassConfirm.value = document.frmRegistro.txtPassConfirm.value.toUpperCase();document.frmRegistro.txtUsuario.value = document.frmRegistro.txtUsuario.value.trim();" /></td>
            <td width="200"  height="15" bgcolor="#CCCCCC">
            	<div align="left" class="style19">
                <div align="left" class="style24"><span class="style23">Usuario </span>&nbsp;</div>
            </div></td>
            <td width="60"><input name="vigencia" type="text" id="vigencia" onkeypress="numeros()" size="15" maxlength="10" onblur="document.frmRegistro.txtPassConfirm.value = document.frmRegistro.txtPassConfirm.value.toUpperCase();document.frmRegistro.txtUsuario.value = document.frmRegistro.txtUsuario.value.trim();" /></td>
            
            <td width="71"><span class="style12 style16"> </span>
    		<input align="left" type="button" name="btEnviar"   value="Buscar"  onclick="validaCampos();"  />
           	
           </td>
          </tr>
		
	</table>

</form>	

<%//Imprimir un solo tarjeton %>
	<form name="frmUno" method="post" action="prinUno.jsp" action="tarjetones.java">
		<table id="tabla3"  style="visibility:hidden" width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
			  <tr class="style1">
           
            <td width="200"  height="15" bgcolor="#CCCCCC">
            	<div align="left" class="style19">
                <div align="left" class="style24"><span class="style23">Edad </span>&nbsp;</div>
            </div></td>
            <td width="60"><input name="txtRfin" type="text" id="txtRfin" onkeypress="numeros()" size="15" maxlength="10" onblur="document.frmRegistro.txtPassConfirm.value = document.frmRegistro.txtPassConfirm.value.toUpperCase();document.frmRegistro.txtUsuario.value = document.frmRegistro.txtUsuario.value.trim();" /></td>
            <td width="200"  height="15" bgcolor="#CCCCCC">
            	<div align="left" class="style19">
                <div align="left" class="style24"><span class="style23">Usuario </span>&nbsp;</div>
            </div></td>
            <td width="60"><input name="vigencia" type="text" id="vigencia" onkeypress="numeros()" size="15" maxlength="10" onblur="document.frmRegistro.txtPassConfirm.value = document.frmRegistro.txtPassConfirm.value.toUpperCase();document.frmRegistro.txtUsuario.value = document.frmRegistro.txtUsuario.value.trim();" /></td>
            
            <td width="71"><span class="style12 style16"> </span>
    		<input align="left" type="button" name="btEnviar"   value="Buscar"  onclick="validaCampos();"  />
           	
           </td>
          </tr>
		</table>
  	
	</form>	
</body>
</html>