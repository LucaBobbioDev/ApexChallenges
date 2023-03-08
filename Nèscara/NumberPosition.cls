public class NumberPosition {
	public static Integer getHighestNumberPosition(List<Integer> numbers) {
        Integer highest = numbers[0];
        for (Integer i = 1; i < numbers.size(); i++) {
            if (numbers[i] > highest) {
                highest = numbers[i];
            }
        }
        return highest;
    }
    
    public static Integer getIndexHighestNumberPosition(List<Integer> numbers) {
        Integer highestIndex = 0;
        Integer highest = numbers[0];
        for (Integer i = 1; i < numbers.size(); i++) {
            if (numbers[i] > highest) {
                highestIndex = i;
                highest = numbers[i];
            }
        }
        return highestIndex;
    }

}