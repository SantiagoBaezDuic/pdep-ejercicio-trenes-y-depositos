class Formacion {
    const locomotoras = #{}
    const vagonesPasajeros = #{}
    const vagonesCarga = #{}
    
    // 1
    method añadirVagonPasajeros(unVagon){
        vagonesPasajeros.add(unVagon)
    }
    
    method añadirVagonCarga(unVagon){
        vagonesCarga.add(unVagon)
    }
    
    // 2
    method añadirLocotomora(unaLocomotora){
        locomotoras.add(unaLocomotora)
    }
    
    // 3
    method cantidadVagones(){
        return vagonesCarga.size() + vagonesPasajeros.size()
    }
    
    // 4
    method totalPasajeros(){
        return vagonesPasajeros.sum{vagon => vagon.cuantosPuedeTransportar()}
    }

    // 5
    method cuantosVagonesLivianos(){
        return vagonesCarga.filter{vagon => vagon.esLiviano()}.size() + vagonesPasajeros.filter{vagon => vagon.esLiviano()}.size()
    }
    
    // 6
    method velocidadMaxima(){
        return locomotoras.map{locomotora => locomotora.velocidadMaxima()}.min()
    }

    method pesoVagonesPasajeros() {
        return vagonesPasajeros.sum{vagon => vagon.pesoMaximo()}
    }

    method pesoVagonesCarga() {
        return vagonesCarga.sum{vagon => vagon.pesoMaximo()}
    }

    method pesoVagonesNoLocomotora() {
        return self.pesoVagonesCarga() + self.pesoVagonesPasajeros()
    }
    
    method pesoLocomotoras(){
        return locomotoras.sum{locomotora => locomotora.peso()}
    }

    // 7
    method esEficiente() {
        return self.pesoVagonesNoLocomotora() >= self.pesoLocomotoras() * 5
    }
    
    // 7 solucion alternativa
    method esEficiente2(){
        return locomotoras.all{locomotora => locomotora.esEficiente()}
    }

    method pesoDeArrastreTotal() {
        return locomotoras.sum{locomotora => locomotora.pesoMaximoDeArrastre()}
    }

    // 8
    method puedeMoverse() {
        return self.pesoDeArrastreTotal() > self.pesoVagonesNoLocomotora()
    }
    
    // 9 
    method cuantosKGfaltan(){
        return self.pesoVagonesNoLocomotora() - self.pesoDeArrastreTotal()
    }

    method vagonMasPesado() {
        const vagones = vagonesCarga + vagonesPasajeros
        return vagones.max{vagon => vagon.pesoMaximo()}
    }

    method esCompleja() {
        return 20 < locomotoras.size() + vagonesCarga.size() + vagonesPasajeros.size() or (self.pesoVagonesNoLocomotora() + self.pesoLocomotoras() > 10000) 
    }
}