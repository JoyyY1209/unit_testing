import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/salary_calculation.dart';

void main(){
  //for single unit test
  test("Single Test",(){
    SalaryCalculation sc =SalaryCalculation();
    int salary=sc.calculateSalary(2);
    expect(salary, 1000);
  });

  //for mutiple unit test

  group("Multile Unit Test",(){

    test("Test1",(){
      SalaryCalculation sc =SalaryCalculation();
      int salary=sc.calculateSalary(35);
      expect(salary, 14000);
    });

    test("Test2",(){
      SalaryCalculation sc =SalaryCalculation();
      int salary=sc.calculateSalary(-45);
      expect(salary, 19000);
    });

    test("Test3",(){
      SalaryCalculation sc =SalaryCalculation();
      int salary=sc.calculateSalary(-10);
      expect(salary, 4000);
    });

    test("Test4",(){
      SalaryCalculation sc =SalaryCalculation();
      int salary=sc.calculateSalary(-45);
      expect(salary, 19000);
    });




  });
}