DEFINE CLASS datos_socio AS datos_base OF programs\datos_base.prg

	FUNCTION insertSocio
		PARAMETERS oSoc
		this.conectar()
		INSERT INTO socio(nombre,apellido,email,domicilio,telefono) ;
			values((oSoc.nombre),(oSoc.apellido),(oSoc.email),(oSoc.domicilio),(oSoc.telefono))
		RETURN socio.id_socio
	ENDFUNC

	FUNCTION updateSocio
	PARAMETERS oSoc
		this.conectar()
		UPDATE socio SET apellido=(oSoc.apellido), nombre=(oSoc.nombre), domicilio=(oSoc.apellido), email=(oSoc.email), ;
			telefono=(oSoc.telefono) WHERE id_socio=(oSoc.idsocio)
		IF(_TALLY>0)
			RETURN .T.
		ELSE 
			RETURN .F.
		ENDIF
	ENDFUNC	
	
	FUNCTION deleteSocio
		PARAMETERS idsocio
		this.conectar()
		DELETE FROM socio WHERE id_socio=(idsocio)
		if(_TALLY>0)
			RETURN .t.
		ELSE
			RETURN .f.
		ENDIF
	ENDFUNC
	
	FUNCTION getSocio
		PARAMETERS id
		this.conectar()
		SELECT * FROM socio WHERE id_socio=id
		oSoc=NEWOBJECT("socio","c:\fox\g2\clases\clasesprestamolibros.vcx")
		oSoc.idsocio=id_socio
		oSoc.nombre=nombre
		oSoc.apellido=apellido
		oSoc.telefono=telefono
		oSoc.email=email
		RETURN oSoc
	ENDFUNC 
	
	
ENDDEFINE