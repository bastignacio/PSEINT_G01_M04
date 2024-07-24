Algoritmo AccidenteTrabajador
	Escribir "�De que tipo es el accidente?"
	Escribir "Seleccione una opci�n"
	Escribir "1) Laboral"
	Escribir "2) Trayecto"
	
	Leer tipoAccidente
	
	Si tipoAccidente = 1 Entonces
		tipoAccidenteDetalle = "Laboral"
	SiNo
		tipoAccidenteDetalle = "Trayecto"
	Fin Si
	
	
	Escribir "Ingrese su Nombre completo"
	Leer nombreCompleto
	Escribir "Ingrese su RUT"
	Leer rutTrabajador
	Escribir "Ingrese su domicilio"
	Leer domicilioTrabajador
	Escribir "Ingrese su genero (F/M)"
	Leer generoTrabajador
	Escribir "Ingrese su tel�fono"
	Leer telefonoTrabajador
	Escribir "Ingrese la fecha del accidente"
	Leer fechaAccidente
	Escribir "Ingrese la fecha de la denuncia"
	Leer fechaDenuncia
	
	Si tipoAccidente = 1 Entonces
		Escribir "Se�ale que estaba haciendo el trabajador en el momento o justo antes del accidente"
		Leer preAccidente
		Escribir "Indique donde ocurrio el accidente"
		Leer lugarAccidente
		Escribir "Indique que sucedio o como ocurrio el accidente"
		Leer descripcionAccidente
		Escribir "Indique cual era su trabajo habitual"
		Leer trabajoHabitual
		Escribir "Posee medios de pruebas? Parte policial, declaraci�n, testigos, otro."
		Leer mediosPrueba
		
	SiNo
		Escribir "Se�ale que estaba haciendo el trabajador en el momento o justo antes del accidente"
		Leer preAccidente
		Escribir "Indique donde ocurrio el accidente"
		Leer lugarAccidente
		Escribir "Indique que sucedio o como ocurrio el accidente"
		Leer descripcionAccidente
		Escribir "Indique cual era su trabajo habitual"
		Leer trabajoHabitual
		Escribir "Seleccione el tipo de accidente de trayecto: (Ingrese opci�n num�rica)"
		Escribir "1) Domicilio - Trabajo"
		Escribir "2) Trabajo - Domicilio"
		Escribir "3) Entre dos trabajos"
		Leer trayectoAccidente
		
		Segun trayectoAccidente Hacer
			1:
				descripcionAccidente = "Domicilio - Trabajo"
			2:
				descripcionAccidente = "Trabajo - Domicilio"
			De Otro Modo:
				descripcionAccidente = "Entre dos trabajos"
		Fin Segun
		
		Escribir "Posee medios de pruebas? Parte policial, declaraci�n, testigos, otro."
		Leer mediosPrueba
	Fin Si
	
	Escribir "El denunciante del accidente es trabajador accidentado (Si/No)?"
	Leer denunciante
	Si denunciante = "no" o denunciante = "No" o denunciante = "NO"  Entonces
		Escribir "Ingrese su nombre completo"
		Leer nombreCompletoDenunciante
		Escribir "Ingrese su RUT"
		Leer rutDenunciante
		Escribir "Ingrese su telefono"
		Leer telefonoDenunciante
		Escribir "Clasificaci�n del denunciante: (Ingrese opci�n num�rica)"
		Escribir "1) Empleador"
		Escribir "2) Trabajador/a"
		Escribir "3) Familiar"
		Escribir "4) Medico Tratante"
		Escribir "5) Comite Paritario"
		Escribir "6) Empresa Usuaria"
		Escribir "7) Otro (indique)"
		Leer clasificacionDenuncianteOpcion
		
		Segun clasificacionDenuncianteOpcion Hacer
			1:
				clasificacionDenunciante <- "Empleador"
			2:
				clasificacionDenunciante <- "Trabajador/a"
			3:
				clasificacionDenunciante <- "Familiar"
			4:
				clasificacionDenunciante <- "Medico Tratante"
			5:
				clasificacionDenunciante <- "Comite Paritario"
			De Otro Modo:
				clasificacionDenunciante <- "Empresa Usuaria"
		Fin Segun
		
	SiNo
	Fin Si
	
	Escribir "Desea agregar alguna informaci�n m�s? (Si/No)"
	Leer masInfo
	Si masInfo = "Si" o masInfo = "si" o masInfo = "SI" Entonces
		Escribir "Por favor indique:"
		Leer masInfoDetalle
		Escribir "Se ha enviado exitosamente su denuncia, a continuaci�n se detallar�:"
	SiNo
		Escribir "Se ha enviado exitosamente su denuncia, a continuaci�n se detallar�:"
	Fin Si
	
	
	Escribir ""
	Escribir "####################################################################"
	Escribir "--------------------------------------------------------------------"
	Escribir "Tipo de Accidente: " tipoAccidenteDetalle 
	Escribir "Nombre Accidentado: " nombreCompleto
	Escribir "RUT Accidentado: " rutTrabajador
	
	Escribir "--------------------------------------------------------------------"
	Escribir "Fecha Accidente: " fechaAccidente
	Escribir "Hechos antes del accidente: " preAccidente
	Escribir "Lugar del accidente: " lugarAccidente
	Escribir "Trabajo habitual del accidentado: " trabajoHabitual
	Escribir "Descripci�n del accidente: " descripcionAccidente
	Si tipoAccidente = 1 Entonces
		Escribir "Tipo de accidente: Laboral" 
	SiNo
		Escribir "Tipo de accidente: Trayecto" 
	Fin Si
	Escribir "Medios de prueba: " mediosPrueba
	Escribir "--------------------------------------------------------------------"
	Si denunciante = "no" o denunciante = "No" o denunciante = "NO"  Entonces
		Escribir "Nombre denunciante: " nombreCompletoDenunciante
		Escribir "RUT denunciante: " rutDenunciante
		Escribir "Tel�fono denunciante: " telefonoDenunciante
		Escribir "Clasificacion denunciante: " clasificacionDenuncianteOpcion
		
	SiNo
		Escribir "Nombre denunciante: " nombreCompleto
		Escribir "RUT denunciante: " rutTrabajador
		Escribir "Tel�fono denunciante: " telefonoTrabajador
		
	Fin Si
	Escribir "--------------------------------------------------------------------"
	Escribir "####################################################################"
	
FinAlgoritmo
