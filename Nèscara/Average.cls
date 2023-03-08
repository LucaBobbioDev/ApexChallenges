public class Average {
    //Definindo o método para calcular a média ponderada
	public static Decimal calculateAverage(Decimal notaTrabalho, Decimal notaProva, Decimal notaProvaFinal) {
        
        //Calcula a média ponderada
        Decimal media = (notaTrabalho * 2 + notaProva * 3 + notaProvaFinal * 5) / 10;
        
        //Retorna a média com apenas uma casa decimal
        return media.setScale(1);
    }
}