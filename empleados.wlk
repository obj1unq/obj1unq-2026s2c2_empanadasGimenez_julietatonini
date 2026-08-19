object gimenez{

    var fondo = 300000

    method pagarSueldo(empleado){
        fondo = fondo - empleado.sueldo()
        empleado.cobrarSueldo()
    }

    method fondo(){
        return fondo
    }
}



object galvan{

    var sueldo = 15000

    var saldo = 0


    method sueldo(){
        return sueldo
    }

    method sueldo(_sueldo){   //el parametro no puede tener el mismo nombre que el atributo, poner guion bajo. En cambio, el getter y el setter si se llaman igual.
        sueldo = _sueldo
    }

    method cobrarSueldo(){
        saldo += self.sueldo()
    }

    method dinero(){      
        return saldo.max(0)     // devulve el máximo entre saldo y 0.
    }

    method deuda(){
        return saldo.min(0).abs()  // min toma el menor entre saldo y 0, y abs devuelve el valor absoluto. Cuánto le falta a saldo para llegar a 0. Si es negativo, devuelve positivo y sino 0.
    }

    method gastar(monto){
        saldo -= monto
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
        return empanadasVendidas
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