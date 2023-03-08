public class SalaryWithBonus {
    public static Decimal calculateSalaryWithBonus(Decimal salary, Decimal salesTotal) {
        Decimal commission = salesTotal * 0.15;
        Decimal totalSalary = salary + commission;
        return totalSalary.setScale(2);
    }
}