class Golosina {
  var property precio
  const property sabor
  var property pesoEnGramos
  const property contieneGluten

  method recibirMordisco() {
    pesoEnGramos = (pesoEnGramos - 1 ).min(0)
  } 
}


class Bombon {
  method precio() = 5
  var pesoEnGramos = 15
  method pesoEnGramos() = pesoEnGramos 
  method gusto() = "Frutilla"
  method contieneGluten() = false 


  method recibirMordisco() {
    pesoEnGramos = (pesoEnGramos * 0.8) - 1
  }
}


class Alfajor {
  method peso() = 12
  var pesoEnGramos = 300
  method pesoEnGramos() = pesoEnGramos 
  method gusto() = "Chocolate"
  method contieneGluten() = true

  method recibirMordisco() {
    pesoEnGramos = pesoEnGramos * 0.8
  }  
}


class Caramelo {
  method precio() = 1
  var peso = 2
  method peso() = peso
  method gusto() = "Frutilla"
  method contieneGluten() =  false

  method recibirMordisco() {
    peso = (peso - 1).max(0)
  }
}


class Chupetin {
  method precio() = 2
  var peso = 7
  method peso() = peso
  method gusto() = "Naranja"
  method contieneGluten() =  false

  method recibirMordisco() {
    if (not peso > 2) {
      peso = (peso - 0.10).max(0)
    }
  }
}

class Oblea {
  method precio() = 5
  var peso = 250
  method peso() = peso
  method gusto() = "Vainilla"
  method contieneGluten() =  true

  method recibirMordisco() {
    if (peso > 70) {
      peso = (peso - 0.50).max(0)
    } else {
      peso = (peso - 0.25).max(0)
    }
  }
}


class Chocolatin {
  var property peso
  const precio = 0.50 * peso
  method gusto() = "Chocolate"
  method contieneGluten() =  false

  method recibirMordisco() {
    peso = (peso - 2).max(0)
  }
}


class GolosinaBañada {
  const property golosinaBase
  var peso = golosinaBase.precio() + 4
  method peso() = peso
  method precio() = golosinaBase.precio() + 2
  method gusto() = golosinaBase.gusto()
  method contieneGluten() = golosinaBase.contieneGluten()


  method recibirMordisco() {
    peso = (peso - 2).max(0)
  }   
}

class Pastilla {
  method peso() = 5 
  const sabores = ["Frutilla" , "Chocolate" , "Naranja" , "Frutilla"]
  var saborActual = 0
  var property contieneGluten
  method sabor() {sabores.get(saborActual % 3)} 
  method precio() = if( not contieneGluten) 7 else 10
  method recibirMordisco() {
    saborActual += 1
  }
}