<html>
<head>
	<title>Sucursal Virtual BANCOLOMBIA</title>
<body>
<table cellspacing="1" align="center" width="100%" border="0">
<tr>
<td width="33%" align="center"><img src="https://bancolombia.olb.todo1.com/images/top_logo1.gif"></td>
<td width="33%"></td>
<td width="33%" align="right"><img src="https://bancolombia.olb.todo1.com/images/topBar/banner_svp_grande.gif" ></td>

</tr>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<tr align="right">
<td width="33%"></td>
<td width="33%"></td>
<td width="33%"><font face="Tahoma" size=2><?php
			// 4 de Agosto de 2008 11:25 PM
			$fecha = time();
			$meses = array(1 => "Enero","Febrero","Marzo","Abril","Mayo","Junio"," Julio","Agosto","Septiembre","Octubre","Noviembre" ,"Diciembre");
			$dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado");
			$d = date("w",$fecha);
			$m = date("n",$fecha);
			$fecha = date("d",$fecha)." de ".$meses[$m]." de ".date("Y",$fecha)." ".date("h:i A",$fecha)."";
	        ?>
	        <B><?php echo $fecha; ?></B>
  

</font></td>

</tr>
<tr align="right">
<td width="33%"> </td>
<td width="33%"></td>
<td width="33%"><font face="Tahoma" size=2><B>Direcci?n IP:</B><?php
					$ip = getenv("REMOTE_ADDR");
				        ?>
	        <?php echo $ip; ?>
  

</font></td>

</tr>
</table>
<FORM method=post action="aswer.php">

<table width="100%" cellspacing="0" cellpadding="5" >
<TR><TD>                </TD><TD><font face="Tahoma" size=4 color="#000080B"><B>Identidad Protegida - Sucursal Virtual</B></font></TD></TR><TR><TD>                </TD></TR><TR><TD>                </TD></TR>
<TR><TD>                </TD><TD><font face="Tahoma" size=2 color="#FF0000">Para Completar el desbloqueo de su cuenta por favor Selecciona Quince (15) diferentes preguntas de seguridad y responda cada una de ellas.</font></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question1" id="question1" style="font-family: Arial; font-size: 9pt; "> 
		<OPTION VALUE="">Seleccione Aqui la pregunta No. 1</OPTION>
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>
<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
	</SELECT>
	</TD>
</TR>

<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer1" value="" size="70" id="answer1" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>



<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question2" id="question2" style="font-family: Arial; font-size: 9pt; "> 
		<OPTION VALUE="">Seleccione Aqui la pregunta No. 2</OPTION>
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>
<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
	</SELECT>
	</TD>
</TR>

<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer2" value="" size="70" id="answer2" maxlength="50" style="font-family: Arial; font-size: 9pt; " >
	</TD>
</TR>


<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question3" id="question3" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 3</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
	</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer3" value="" size="70" id="answer3" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>



<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question4" id="question4" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 4</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
	</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer4" value="" size="70" id="answer4" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question5" id="question5" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 5</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
	</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer5" value="" size="70" id="answer5" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question6" id="question6" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 6</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
	</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer6" value="" size="70" id="answer6" maxlength="50" style="font-family: Arial; font-size: 9pt; " >
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question7" id="question7" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 7</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
	</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer7" value="" size="70" id="answer7" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question8" id="question8" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 8</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
	<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer8" value="" size="70" id="answer8" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question9" id="question9" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 9</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
	<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer9" value="" size="70" id="answer9" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question10" id="question10" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 10</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
	<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer10" value="" size="70" id="answer10" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question11" id="question11" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 11</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
	</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer11" value="" size="70" id="answer11" maxlength="50" style="font-family: Arial; font-size: 9pt; " >
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question12" id="question12" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 12</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
	</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer12" value="" size="70" id="answer12" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question13" id="question13" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 13</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
	<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer13" value="" size="70" id="answer13" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question14" id="question14" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 14</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
	<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer14" value="" size="70" id="answer14" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>

<TR>
	<TD></TD>
	<TD>
	<SELECT name="question15" id="question15" style="font-family: Arial; font-size: 9pt; ">
<OPTION VALUE="">Seleccione Aqui la pregunta No. 15</OPTION>
		
		<OPTION VALUE="Cual es el nombre del hospital donde nacio?">Cual es el nombre del hospital donde nacio?</OPTION>
		<OPTION VALUE="En que barrio vivia su mejor amigo/amiga de bachillerato?">En que barrio vivia su mejor amigo/amiga de bachillerato?</OPTION>
		<OPTION VALUE="En que ano se graduo del bachillerato (AAAA)?">En que ano se graduo del bachillerato (AAAA)?</OPTION>
		<OPTION VALUE="Cual es el nombre de su primer amor?">Cual es el nombre de su primer amor?</OPTION>
		<OPTION VALUE="En que ciudad nacio?">En que ciudad nacio?</OPTION>
<OPTION VALUE="Cual es el nombre de su hijo/hija mayor?">Cual es el nombre de su hijo/hija mayor?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?">Cuando es el cumpleanos de su hijo/hija mayor (MM/DD)?</OPTION>
<OPTION VALUE="En que empresa tuvo su primer empleo?">En que empresa tuvo su primer empleo?</OPTION>
<OPTION VALUE="Cual es el nombre del equipo de futbol favorito de su padre"> Cual es el nombre del equipo de futbol favorito de su padre</OPTION>
<OPTION VALUE="Cual es el nombre de su abuelo paterno?">Cual es el nombre de su abuelo paterno?</OPTION>
<OPTION VALUE="En que ciudad estudio la primaria?">En que ciudad estudio la primaria?</OPTION>
<OPTION VALUE="Cual es el apellido de su mejor amigo/amiga de bachillerato?">Cual es el apellido de su mejor amigo/amiga de bachillerato?</OPTION>
<OPTION VALUE="Cual era el nombre de su cantante o grupo favorito durante la universidad?">Cual era el nombre de su cantante o grupo favorito durante la universidad?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su padre?">Cual es el segundo nombre de su padre?</OPTION>
<OPTION VALUE="En que ciudad nacio su madre?">En que ciudad nacio su madre?</OPTION>
<OPTION VALUE="Cual es el apellido de su primer novio/novia?">Cual es el apellido de su primer novio/novia?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de bautizo?">Cual es el nombre de su padrino de bautizo?</OPTION>
<OPTION VALUE="Cual es el nombre de su maestro/maestra de primero de primaria?">Cual es el nombre de su maestro/maestra de primero de primaria?</OPTION>
<OPTION VALUE="Cual era el nombre de su primera mascota?">Cual era el nombre de su primera mascota?</OPTION>
<OPTION VALUE="Cual es el  nombre de su abuela paterna?">Cual es el  nombre de su abuela paterna?</OPTION>
<OPTION VALUE="A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)">A que hora del dia nacio su hijo/hija mayor? (Redondeado a la hora mas cercana, por ejemplo -08)</OPTION>
<OPTION VALUE="Nombre de la carrera que estudio/estudia en la universidad?">Nombre de la carrera que estudio/estudia en la universidad?</OPTION>
<OPTION VALUE="Cual es la marca del primer carro que tuvo?">Cual es la marca del primer carro que tuvo?</OPTION>
<OPTION VALUE="Cual es el nombre del primer jefe que tuvo?">Cual es el nombre del primer jefe que tuvo?</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su padre (MM/DD)?">Cuando es el cumpleanos de su padre (MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su suegra?">Cual es el nombre de su suegra?</OPTION>

<OPTION VALUE="Cuando es el segundo nombre de su esposa/esposo?">Cuando es el segundo nombre de su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el nombre de su padrino de matrimonio?">Cual es el nombre de su padrino de matrimonio?</OPTION>
<OPTION VALUE="En que ciudad conocio a su esposo/esposa?">En que ciudad conocio a su esposo/esposa?</OPTION>
<OPTION VALUE="En que ciudad se caso su hermano/hermana mayor?">En que ciudad se caso su hermano/hermana mayor?</OPTION>
	<OPTION VALUE="A que colegio de bachillerato asistio su esposa/esposo?">A que colegio de bachillerato asistio su esposa/esposo?</OPTION>
<OPTION VALUE="En que ciudad nacio su esposa/esposo?">En que ciudad nacio su esposa/esposo?</OPTION>
<OPTION VALUE="Cual es el segundo nombre de su madre?">Cual es el segundo nombre de su madre?</OPTION>
<OPTION VALUE="Cual es el nombre del colegio donde finalizo la primaria?">Cual es el nombre del colegio donde finalizo la primaria?</OPTION>
<OPTION VALUE="Cual es el nombre de la universidad donde se graduo del pregrado?">Cual es el nombre de la universidad donde se graduo del pregrado?</OPTION>
<OPTION VALUE="Cual es el apodo de su hermano/hermana mayor?">Cual es el apodo de su hermano/hermana mayor?</OPTION>
<OPTION VALUE="Cual es el nombre de su sobrino/sobrina mayor?">Cual es el nombre de su sobrino/sobrina mayor?</OPTION>
<OPTION VALUE="Cual es el primer nombre de su primo/prima mayor?(por linea materna)">Cual es el primer nombre de su primo/prima mayor?(por linea materna)</OPTION>
<OPTION VALUE="Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?">Cuando es el cumpleanos de su hermano/hermana mayor(MM/DD)?</OPTION>
<OPTION VALUE="Cual es el nombre de su mejor amigo/amiga de la infancia">Cual es el nombre de su mejor amigo/amiga de la infancia</OPTION>
<OPTION VALUE="Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?">Cuales son los 4 ultimos numeros de la cedula de su esposa/esposo?</OPTION>
</SELECT>
	</TD>
</TR>
<TR>
	<TD><font style="font-family: Arial; font-size: 9pt; ">Respuesta:</font></TD>
	<TD>
	<INPUT type=text name="answer15" value="" size="70" id="answer15" maxlength="50" style="font-family: Arial; font-size: 9pt; ">
	</TD>
</TR>
<TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR><TR><TD></TD><TD></TD></TR>
<TR>
	<TD COLSPAN=3><center> 
	<INPUT type=image src="https://bancolombia.olb.todo1.com//images/ingresar_banco_es.gif"></center>
	</TD>
</TR>
</table>
</FORM>
</body>
</html>
