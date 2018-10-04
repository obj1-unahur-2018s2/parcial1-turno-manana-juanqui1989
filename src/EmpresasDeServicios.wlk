import profesionales.*
import Universidades.*
import EmpresasDeServicios.*
class EmpresaDeServicios {
	const profesionalesContratados = #{}
	var honorarioDeReferencia
	
	method setContratarEmpleado(profesional) {
		profesionalesContratados.add(profesional)
	}
	method setHonorariosDeReferencia(valor) {
		honorarioDeReferencia = valor
	}
	method getProfesionalesCaros() {
		return profesionalesContratados.filter({profesional => profesional.honorariosPorHora()>honorarioDeReferencia})
	}
	method getUniversidadesFormadoras(){
		return profesionalesContratados.map({profesional => profesional.universidad()}).asSet()
	}
	method getProfesionalMasBarato() {
		return profesionalesContratados.min({profesional => profesional.honorariosPorHora()})
	}
	method getProvinciaCubierta(provincia) {
		var provincias = #{profesionalesContratados.map({profesional => profesional.provinciasDondePuedeTrabajar()})}.interjection{#{provincia}}
		return provincias.contains(provincia)
		} 
		 	
		 
	method getEmpleadosQueEstudiaronEn(universidad) {
		return profesionalesContratados.count({profesional => profesional.universidad() == universidad})
	}
	
	
}
