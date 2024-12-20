import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/home_page.dart';

void main(){
  testWidgets("Widget Test",(WidgetTester tester)async{

    await tester.pumpWidget(MaterialApp(home : HomePage()));

    //Key("Our Key") eta HomePage() theke pacchi
    await tester.enterText(find.byKey(Key("Our_Key")), "10");

    //key Key("Calculate Button"), eleveted button theke
    await tester.tap(find.byKey(Key("Calculate_Button"),));

    await tester.pump();

    //ekta widget theke khuje nibe
    expect(find.text("5000\$"), findsOneWidget);

      }
      );

  group("Multiple Widget Test", (){

    testWidgets("Widget Test",(WidgetTester tester)async{

      await tester.pumpWidget(MaterialApp(home : HomePage()));

      //Key("Our Key") eta HomePage() theke pacchi
      await tester.enterText(find.byKey(Key("Our_Key")), "35");

      //key Key("Calculate Button"), eleveted button theke
      await tester.tap(find.byKey(Key("Calculate_Button"),));

      await tester.pump();

      //ekta widget theke lhuje nibe
      expect(find.text("14000\$"), findsOneWidget);

    }
    );


    testWidgets("Widget Test",(WidgetTester tester)async{

      await tester.pumpWidget(MaterialApp(home : HomePage()));

      //Key("Our Key") eta HomePage() theke pacchi
      await tester.enterText(find.byKey(Key("Our_Key")), "45");

      //key Key("Calculate Button"), eleveted button theke
      await tester.tap(find.byKey(Key("Calculate_Button"),));

      await tester.pump();

      //ekta widget theke lhuje nibe
      expect(find.text("19000\$"), findsOneWidget);

    }
    );




  });

}