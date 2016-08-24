DEFINE CLASS negocio_socio AS Custom
	
	FUNCTION insertSocio
		PARAMETERS oSoc
		ds = NEWOBJECT("datos_socio","programs\datos_socio.prg")
		idsocio=ds.insertSocio(oSoc)
		RETURN idsocio
	ENDFUNC

	FUNCTION updateSocio
	PARAMETERS oSoc
		ds = NEWOBJECT("datos_socio","clases\clasesprestamolibros.vcx")
		RETURN ds.updateSocio(oSoc)
	ENDFUNC	
	
	FUNCTION deleteSocio
		PARAMETERS idsocio
		ds = NEWOBJECT("datos_socio","clases\clasesprestamolibros.vcx")
		*socio = ds.getSocio(idSocio)
		*IF socio != null THEN 
		RETURN ds.deleteSocio(idsocio)
		*ELSE
		*RETURN .F.
		*ENDIF
	ENDFUNC
	
	FUNCTION getSocio
		PARAMETERS idsocio
		ds = NEWOBJECT("datos_socio","programs\datos_socio.prg")
		RETURN ds.getSocio(idsocio)
	ENDFUNC 
		
ENDDEFINE