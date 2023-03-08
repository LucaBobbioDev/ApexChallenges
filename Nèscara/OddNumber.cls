public class OddNumber {
    public static List<Integer> checkOddNumberQuantity(Integer x) {
        List<Integer> oddNumbers = new List<Integer>();
        
        for (Integer i = 1; i <= x; i++) {
            if (Math.mod(i, 2) != 0) {
                oddNumbers.add(i);
            }
        }
        
        return oddNumbers;
    }
}