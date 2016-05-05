oSocio = CREATEOBJECT("socio")
oSocio.nombre = "Juan"
oSocio.apellido = "Perez"
oSocio.email = "jperez@gmail.com"
oSocio.domicilio = "Jujuy 1341"
oSocio.telefono = "4544567"
oSocioData = CREATEOBJECT("sociodata")
?oSocioData.insertSocio(oSocio)

	
DEFINE CLASS socio as Custom
	idSocio=.f.
	nombre=.f.
	apellido=.f.
	email=.f.
	domicilio=.f.
	telefono=.f.
ENDDEFINE

DEFINE CLASS sociodata as Custom

	FUNCTION insertSocio
		PARAMETERS oSoc
		OPEN DATABASE c:\fox\g2\data\biblioteca
		INSERT INTO socio(nombre,apellido,email,domicilio,telefono) ;
			values(oSoc.nombre,oSoc.apellido,oSoc.email,oSoc.domicilio,oSoc.telefono)
		RETURN socio.id_socio
	ENDFUNC
	
ENDDEFINE