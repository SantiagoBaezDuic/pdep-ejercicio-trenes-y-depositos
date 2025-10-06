class Deposito{
    const formaciones = #{}
    const locomotoras = #{}
    
    method añadirFormacion(unaFormacion){
        formaciones.add(unaFormacion)
    }

    method añadirLocomotora(unaLocomotora){
        locomotoras.add(unaLocomotora)
    }

    // 10
    method vagonesMasPesados(){
        return formaciones.map{vagon => vagon.vagonMasPesado()}
    }

    // 11
    method necesitaConductorExperimentado(){
        return formaciones.any{formacion => formacion.esCompleja()}
    }

    // 12
    method agregarLocomotoraParaQueSeMueva(unaFormacion) {
        if (!unaFormacion.puedeMoverse()){
            const locomotoraAAñadir = locomotoras.find{locomotora => locomotora.arrastreUtil() >= unaFormacion.cuantosKGfaltan()}
            if(locomotoraAAñadir){
                unaFormacion.añadirLocotomora(locomotoraAAñadir)
            }
        }
    }
}