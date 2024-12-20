import 'dart:math';

class SalaryCalculation {
  int perHourPayment = 400;

  int calculateSalary(int hour) {
    // Make the hour value absolute
    int absoluteHour = hour.abs();

    if (absoluteHour <= 40) {
      return absoluteHour * perHourPayment;
    }

    int extra = absoluteHour - 40;
    return (40 * perHourPayment) + (extra * 600);
  }
}
