class VagonCarga{
    const cargaMaxima

    method pesoMaximo() {
        return cargaMaxima + 160
    }

    method esLiviano(){
        return self.pesoMaximo() < 2500
    }
}