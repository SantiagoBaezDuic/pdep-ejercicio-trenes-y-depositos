class Locomotora {
    const peso
    const pesoMaximoDeArrastre
    const velocidadMaxima

    method arrastreUtil() {
        return pesoMaximoDeArrastre - peso
    }

    method peso() {
        return peso
    }

    method pesoMaximoDeArrastre() {
        return pesoMaximoDeArrastre
    }

    method velocidadMaxima() {
        return velocidadMaxima
    }
    
    // 7 otra solucion
    method esEficiente(){
    return pesoMaximoDeArrastre > 5* peso
    }
}