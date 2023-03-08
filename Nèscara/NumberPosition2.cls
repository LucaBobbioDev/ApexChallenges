public class NumberPosition2 {
	public static HighestNumber getHighestNumberPosition(List<Integer> numbers) {
        Integer highestNumber = numbers[0];
        Integer highestNumberIndex = 0;
        
        for (Integer i = 1; i < numbers.size(); i++) {
            if (numbers[i] > highestNumber) {
                highestNumber = numbers[i];
                highestNumberIndex = i;
            }
        }
        
        return new HighestNumber(highestNumber, highestNumberIndex);
    }
    
    public class HighestNumber {
        public Integer highestNumber;
        public Integer highestNumberIndex;
        
        public HighestNumber(Integer highestNumber, Integer highestNumberIndex) {
            this.highestNumber = highestNumber;
            this.highestNumberIndex = highestNumberIndex;
        }
	}
}