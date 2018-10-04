// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() {
		return #{universidad.getProvincia()}
	}
	method honorariosPorHora() {
		return universidad.getHonorariosRecomendados()
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var provinciasDondePuedeTrabajar = #{}
	var honorariosPorHora
	
	method universidad() { 
		return universidad
	}
	method universidad(univ) { 
		universidad = univ
	}
	method setProvinciasDondePuedeTrabajar(provincia) {
		provinciasDondePuedeTrabajar.add(provincia)
	}
	method provinciasDondePuedeTrabajar() {
		return provinciasDondePuedeTrabajar
	}
	method setHonorariosPorHora(valor) {
		honorariosPorHora = valor
	}
	method honorariosPorHora() {
		return honorariosPorHora
	}
}
