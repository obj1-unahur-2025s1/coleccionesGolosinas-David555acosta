import example.*

class Mariano {

    const golosinas = #{}

    method comprar(golosina) {
      golosinas.add(golosina)
    }

    method desechar(golosina) {
      golosinas.remove(golosina)
    }

    method golosinasCompradas() {
      return golosinas.size()
    }

    method tieneGolosina(golosinaX) {
      return golosinas.contains(golosinaX)
    }

    method probarGolosinas() {
      golosinas.forEach({g => g.recibirMordisco()})
    }

    method hayGolosinaSinTACC() {
      return golosinas.any({g => g.contieneGluten()})
    }

    method preciosCuidados() {
      return golosinas.all({g => g.precio() < 10})
    }

    method golosinasDeSabor(sabor) {
      return golosinas.find({g => g.sabor() == sabor})
    }

    method sabores() {
      return golosinas.map({golosina => golosina.sabor()}).asSet()
    }


    method golosinaMasCara() {
      return golosinas.max({g => g.precio()})
    }

    method pesoGolosinas() {
      return golosinas.sum({g => g.peso()})
    }

    method golosinasFaltantes(golosinasDeseadas) {
        return golosinasDeseadas.difference(golosinas)
    }

    method gustosFaltantes(gustosDeseados) {
      return gustosDeseados.filter({saborDeseado => not self.tieneGolosinasDeSabor(saborDeseado)})
    }

    method tieneGolosinasDeSabor(saborX) {
      return golosinas.any({g => g.sabor() == saborX})
    }
}