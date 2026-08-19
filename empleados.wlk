object gimenez{

    var fondo = 300000

    method pagarSueldo(empleado){
        fondo = fondo - empleado.sueldo()
        empleado.cobrarSueldo()
    }
}



object galvan{

    var sueldo = 15000

    method sueldo(){
        return sueldo
    }

    method sueldo(_sueldo){   //el parametro no puede tener el mismo nombre que el atributo, poner guion bajo. En cambio, el getter y el setter si se llaman igual.
        sueldo = _sueldo
    }


}



object baigorria{

    var totalCobrado = 0

    var empanadasVendidas = 0

    const precioEmpanada = 15

    method sueldo(){
        return self.empanadasVendidas() * precioEmpanada
    }

    method empanadasVendidas(){
        return 
    }

    method vender(empanadas){
        empanadasVendidas += empanadas
        // esto es igual a empanadasVendidas = empanadasVendidas + empanadas
    }

   method cobrarSueldo(){
        totalCobrado += self.sueldo() 
        empanadasVendidas = 0
    }

    method totalCobrado(){
        return totalCobrado
    }
}