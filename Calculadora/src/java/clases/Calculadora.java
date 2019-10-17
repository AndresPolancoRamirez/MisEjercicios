
package clases;


public class Calculadora {
    public float valor1;
    public float valor2;
    public float resultado;

    public void Calcular_Suma(){
        this.resultado = this.valor1 + this.valor2;
    }
    public void Calcular_resta(){
        this.resultado = this.valor1 - this.valor2;
    }
    public void Calcular_multiplicar(){
        this.resultado = this.valor1 * this.valor2;
    }
    public void Calcular_division(){
        this.resultado = this.valor1 / this.valor2;
    }
}
