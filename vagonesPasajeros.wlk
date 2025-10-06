class VagonPasajeros {
    const anchoUtil
    const metrosDeLargo
    
    method cuantosPuedeTransportar(){
        if (anchoUtil > 2.5){
            return metrosDeLargo * 10
        } else {
            return metrosDeLargo * 8
        }
    }

    method pesoMaximo(){
        return self.cuantosPuedeTransportar() * 80
    }

    method esLiviano(){
        return self.pesoMaximo() < 2500
    }
}