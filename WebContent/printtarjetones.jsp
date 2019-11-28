<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>

  <jsp:useBean id="ejecuta" scope="request" class="Estacionamiento.tarjetones">
</jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>AAAADAM A.C.</title>
<style type="text/css">
<!--
.style6 {font-size: 24px}
.style9 {font-size: 11px}
.style7 {
	font-size: 14px;
	font-weight: bold;
}
.style8 {font-size: 14px}
-->
</style>
</head>
<script language="javascript">
	function imprime(){
		window.print();
		window.close();
	}	
	
	

</script>
<body topmargin=1.27 leftmargin=7.11 marginheight=4.23 marginwidth=4.23  onLoad="imprime()">	
	<form name="frmRegistro" method="post" action="" >
	<% int e=Integer.parseInt(request.getParameter("txtRini"));%>
	<% int m=Integer.parseInt(request.getParameter("txtRfin"));%>
	<%String[][] resultado=ejecuta.getValores(e,m);%>
	<%if(resultado.length!=0){ %>
		<%if(e==m){%>
 	  	
	    <table width="84%" height="398%" border="1" align="center" cellspacing="0" cellpadding="0" bordercolor="#000000" background-size="3%" background="web/images/p3.png">
          <tr>
            <td width="326" height="475"><table height="70%"  width="70%" border="0" align="center">
                <tr>
                  <br>
                  <td colspan="2"><div align="center"><img src="web/images/AAADAMNew400.png" width="291" height="51"></div></td>
                  </br>
                </tr>
                
                <tr>
                  	<td align= "center" colspan="1">_____________________________</td>
                </tr>
                
                <tr>
                <td  width="349" height="1"><table cellspacing="0" table-sm frame="void" rules="rows" width="70%"  height="%5" align="center">
                  <td colspan="2"><div align="center" class="style6"><span style="font-weight: bold; font-family: Arial, Helvetica, sans-serif;"> VIGENCIA <%=request.getParameter("vigencia")%></span></div></td>
                </tr>
                <tr>
                  <td  width="349" height="1"><table cellspacing="0" table-sm frame="void" rules="cols" width="70%"  height="%5" align="center">
                  <td width="50%"><div align="center" class="camposConsultas"><strong><%out.print(resultado[0][0]) ;%></strong></div></td>
                  <td width="50%"><div align="center"><span style="font-family: Arial, Helvetica, sans-serif;	font-size: 18px; font-weight: bold;"></span><%out.print(resultado[0][2]) ;%></div></td>
                  </table>
                </tr>
                  <td colspan="2"><%out.print(resultado[0][1]) ;%></td>
                </table>
                 <tr>
                  	<td align= "center" colspan="2">_____________________________</td>
                </tr>
              </tr>
                <tr>
                  <td height="149" colspan="2">&nbsp;</td>
                </tr>
              </table>
              <p align="center"><img src="web/images/codigobarras.jpg" width="289" height="35" /></p></td>
            <td width="327"><table width="92%" height="336" border="0" align="center">
              <tr>
                <td><p align="justify" class="style7 style8">No se permitir&aacute; el acceso a vehiculos que no presenten el tarjet&oacute;n.</p>
                  <p align="justify" class="style7">Queda prohibido dejar sobre las areas de estacionamiento objetos como basculas, pallets o cualquier herramienta de trabajo.</p>
                  <p align="justify" class="style7">La AAADAM no se hace responsable por la perdida parcial o total de los veh&iacute;culos.</p>
                  <p align="justify" class="style7">La AAADAM no se responsabiliza por da&ntilde;os o percances ocurridos dentro del estacionamiento.</p>
                <p align="justify" class="style7">Los da&ntilde;os ocurridos por otros veh&iacute;culos los pagaran los vehiculos involucrados por medio de la compa&ntilde;ia de seguros o arreglo personal de las partes.</p></td>
              </tr>
            </table>
 
            <br>
            <p align="center"><img src="web/images/codigobarras.jpg" width="289" height="35" /></p></td>
          	</br>
          </tr>
      </table>
      
	<%}else{//e==m %>
		<%if(e!=m){ %>
		
 	  			 	
	    <table width="84%" height="398%" border="1" align="center" cellspacing="0" cellpadding="0" bordercolor="#000000" background-size="3%" background="web/images/p3.png">
          <tr>
            <td width="326" height="475"><table height="70%"  width="70%" border="0" align="center">
                <tr>
                  <br>
                  <td colspan="2"><div align="center"><img src="web/images/AAADAMNew400.png" width="291" height="51"></div></td>
                  </br>
                </tr>
 	  
	
                
                <tr>
                  	<td align= "center" colspan="1">_____________________________</td>
                </tr>
                
                <tr>
                <td  width="349" height="1"><table cellspacing="0" table-sm frame="void" rules="rows" width="70%"  height="%5" align="center">
                  <td colspan="2"><div align="center" class="style6"><span style="font-weight: bold; font-family: Arial, Helvetica, sans-serif;"> VIGENCIA <%=request.getParameter("vigencia")%></span></div></td>
                </tr>
                <tr>
                  <td  width="349" height="1"><table cellspacing="0" table-sm frame="void" rules="cols" width="70%"  height="%5" align="center">
                 
                  <td width="50%"><div align="center" class="camposConsultas"><span style="font-family: Arial, Helvetica, sans-serif;font-weight: bold;font-size:11px"><strong><%out.print(resultado[0][0]);%></strong></span></div></td>
                  <td width="50%"><div align="center" class="style9" ><span style="font-family: Arial, Helvetica, sans-serif;font-weight: bold;"><strong><%out.print(resultado[0][2]) ;%></strong></span></div></td>
                  </table>
               	  </tr>
                  <td colspan="2"><span style="font-size:11px"><%out.print(resultado[0][1]) ;%></span></td>
                </table>
                 <tr>
                  	<td align= "center" colspan="2">_____________________________</td>
                </tr>
              </tr>
                <tr>
                  <td height="149" colspan="2">&nbsp;</td>
                </tr>
              </table>
              <p align="center"><img src="web/images/codigobarras.jpg" width="289" height="35" /></p></td>
            <td width="327"><table width="92%" height="336" border="0" align="center">
              <tr>
                <td><p align="justify" class="style7 style8">No se permitir&aacute; el acceso a vehiculos que no presenten el tarjet&oacute;n.</p>
                  <p align="justify" class="style7">Queda prohibido dejar sobre las areas de estacionamiento objetos como basculas, pallets o cualquier herramienta de trabajo.</p>
                  <p align="justify" class="style7">La AAADAM no se hace responsable por la perdida parcial o total de los veh&iacute;culos.</p>
                  <p align="justify" class="style7">La AAADAM no se responsabiliza por da&ntilde;os o percances ocurridos dentro del estacionamiento.</p>
                <p align="justify" class="style7">Los da&ntilde;os ocurridos por otros veh&iacute;culos los pagaran los vehiculos involucrados por medio de la compa&ntilde;ia de seguros o arreglo personal de las partes.</p></td>
              </tr>
            </table>
          
          
            <br>
            <p align="center"><img src="web/images/codigobarras.jpg" width="289" height="35" /></p></td>
          	</br>
          </tr>
      </table>
      
 	
	|<%for (int y=1;y<resultado.length-1;y++){%>		
 	 
 	 
 	  
	    <table width="84%" height="398%" border="1" align="center" cellspacing="0" cellpadding="0" bordercolor="#000000" background-size="3%" background="web/images/p3.png">
          <tr>
            <td width="326" height="475"><table height="70%"  width="70%" border="0" align="center">
                <tr>
                  <br>
                  <td colspan="2"><div align="center"><img src="web/images/AAADAMNew400.png" width="291" height="51"></div></td>
                  </br>
                </tr>
                
                <tr>
                  	<td align= "center" colspan="1">_____________________________</td>
                </tr>
                
                <tr>
                <td  width="349" height="1"><table cellspacing="0" table-sm frame="void" rules="rows" width="70%"  height="%5" align="center">
                  <td colspan="2"><div align="center" class="style6"><span style="font-weight: bold; font-family: Arial, Helvetica, sans-serif;">VIGENCIA <%=request.getParameter("vigencia")%></span></div></td>
                </tr>
                <tr>
                  <td  width="349" height="1"><table cellspacing="0" table-sm frame="void" rules="cols" width="70%"  height="%5" align="center">
                  <td width="50%"><div align="center" class="camposConsultas"><span style="font-family: Arial, Helvetica, sans-serif;font-weight: bold;font-size:11px"><strong><%out.print(resultado[y][0]) ;%></strong></span></div></td>
                  <td width="50%"><div align="center" class="style9" ><span style="font-family: Arial, Helvetica, sans-serif;font-weight: bold;"><strong><%out.print(resultado[y][2]) ;%></strong></span></div></td>
                  </table>
               	  </tr>
                  <td colspan="2"><span style="font-size:11px"><%out.print(resultado[y][1]) ;%></span></td>
                </table>
                 <tr>
                  	<td align= "center" colspan="2">_____________________________</td>
                </tr>
              </tr>
                <tr>
                  <td height="149" colspan="2">&nbsp;</td>
                </tr>
              </table>
              <p align="center"><img src="web/images/codigobarras.jpg" width="289" height="35" /></p></td>
            <td width="327"><table width="92%" height="336" border="0" align="center">
              <tr>
                <td><p align="justify" class="style7 style8">No se permitir&aacute; el acceso a vehiculos que no presenten el tarjet&oacute;n.</p>
                  <p align="justify" class="style7">Queda prohibido dejar sobre las areas de estacionamiento objetos como basculas, pallets o cualquier herramienta de trabajo.</p>
                  <p align="justify" class="style7">La AAADAM no se hace responsable por la perdida parcial o total de los veh&iacute;culos.</p>
                  <p align="justify" class="style7">La AAADAM no se responsabiliza por da&ntilde;os o percances ocurridos dentro del estacionamiento.</p>
                <p align="justify" class="style7">Los da&ntilde;os ocurridos por otros veh&iacute;culos los pagaran los vehiculos involucrados por medio de la compa&ntilde;ia de seguros o arreglo personal de las partes.</p></td>
              </tr>
            </table>
             
          
           <br>
            <p align="center"><img src="web/images/codigobarras.jpg" width="289" height="35" /></p></td>
          	</br>
          </tr>
      </table>
      
      

        	<p>
	    <table width="84%" height="398%" border="1" align="center" cellspacing="0" cellpadding="0" bordercolor="#000000" background-size="3%" background="web/images/p3.png">
          <tr>
            <td width="326" height="475"><table height="70%"  width="70%" border="0" align="center">
                <tr>
                  <br>
                  <td colspan="2"><div align="center"><img src="web/images/AAADAMNew400.png" width="291" height="51"></div></td>
                  </br>
                </tr>
                
                <tr>
                  	<td align= "center" colspan="1">_____________________________</td>
                </tr>
                
                <tr>
                <td  width="349" height="1"><table cellspacing="0" table-sm frame="void" rules="rows" width="70%"  height="%5" align="center">
                  <td colspan="2"><div align="center" class="style6"><span style="font-weight: bold; font-family: Arial, Helvetica, sans-serif;">VIGENCIA <%=request.getParameter("vigencia")%></span></div></td>
                </tr>
                <tr>
                  <td  width="349" height="1"><table cellspacing="0" table-sm frame="void" rules="cols" width="70%"  height="%5" align="center">
        		<td width="50%"><div align="center" class="camposConsultas"><span style="font-family: Arial, Helvetica, sans-serif;font-weight: bold;font-size:11px"><strong><%out.print(resultado[y+1][0]) ;%></strong></span></div></td>
                  <td width="50%"><div align="center" class="style9" ><span style="font-family: Arial, Helvetica, sans-serif;font-weight: bold;"><strong><%out.print(resultado[y][2]) ;%></strong></span></div></td>
                  </table>
               	  </tr>
                  <td colspan="2"><span style="font-size:11px"><%out.print(resultado[y][1]) ;%></span></td>
                </table>
                 <tr>
                  	<td align= "center" colspan="2">_____________________________</td>
                </tr>
              </tr>
               
                <tr>
                  <td height="149" colspan="2">&nbsp;</td>
                </tr>
                
                
              </table>
              <p align="center"><img src="web/images/codigobarras.jpg" width="289" height="35" /></p></td>
            <td width="327"><table width="92%" height="336" border="0" align="center">
              <tr>
                <td><p align="justify" class="style7 style8">No se permitir&aacute; el acceso a vehiculos que no presenten el tarjet&oacute;n.</p>
                  <p align="justify" class="style7">Queda prohibido dejar sobre las areas de estacionamiento objetos como basculas, pallets o cualquier herramienta de trabajo.</p>
                  <p align="justify" class="style7">La AAADAM no se hace responsable por la perdida parcial o total de los veh&iacute;culos.</p>
                  <p align="justify" class="style7">La AAADAM no se responsabiliza por da&ntilde;os o percances ocurridos dentro del estacionamiento.</p>
                <p align="justify" class="style7">Los da&ntilde;os ocurridos por otros veh&iacute;culos los pagaran los vehiculos involucrados por medio de la compa&ntilde;ia de seguros o arreglo personal de las partes.</p></td>
              </tr>
            </table>
            <br>
            <p align="center"><img src="web/images/codigobarras.jpg" width="289" height="35" /></p></td>
          	 </br>
          </tr>
      </table>
      </p>
     
	    	<%y++;}%>
		<%} %>
	<%} %>
	<%}else{ %>
		<%if(e==m){ %>
			<td width="400"  bgcolor="#CCCCCC">
				<div class="aviso" align="center">
		  			<strong>Aviso!</strong> El tarjetón  número <%out.print(e);%> no existe, Gracias por su consulta.
				</div>         
	     	</td>
		<%}else{ %>
			<td width="400"  bgcolor="#CCCCCC">
				<div class="aviso" align="center">
		  			<strong>Aviso!</strong> No existen tarjetones entre el rango <%out.print(e);%> y  <%out.print(m);%>   , Gracias por su consulta.
				</div>         
	     	</td>
		<%} %>
	<%}%>
</form>
</body>
</html>