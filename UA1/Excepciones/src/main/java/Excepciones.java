
/**
 *
 * @author usuario
 */
public class Excepciones {
    
    public static void main (String args[]){

        int numerador;
        Integer denominador = null;

        float division;
        numerador = 20;

        System.out.println("Antes de la division");

        try {
            division=numerador/denominador;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            division = 0;
        }
        System.out.println(division);
        System.out.println("Despues de la division");
    }
}
