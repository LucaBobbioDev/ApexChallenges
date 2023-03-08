public class Distance {
	public static Double calculateDistanceBetweenTwoPoints(Double x1, Double y1, Double x2, Double y2) {
        Double distance = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
        return Math.round(distance * 10000.0) / 10000.0; // arredonda o resultado para 4 casas decimai
    }
}