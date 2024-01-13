import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String display = '';
  String operator = '';
  evaluateExpression(String expression, String operator) {
    // Split the expression into operands and operator
    List<String> parts = expression.split(operator); // Parse the operands
    double operand1 = double.parse(parts[0]);
    double operand2 = double.parse(parts[1]);
    if (operator == '+') {
      return operand1 + operand2;
    } else if (operator == '-') {
      return operand1 - operand2;
    } else if (operator == '/') {
      return operand1 / operand2;
    } else if (operator == 'x') {
      return operand1 * operand2;
    } // Perform the addition
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    display,
                    style: const TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '7';
                          setState(() {});
                        },
                        child: const Text('7',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '8';
                          setState(() {});
                        },
                        child: const Text('8',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '9';
                          setState(() {});
                        },
                        child: const Text('9',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:  Colors.grey[600],
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += 'x';
                          operator = 'x';
                          setState(() {});
                        },
                        child: const Text('x',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '4';
                          setState(() {});
                        },
                        child: const Text('4',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '5';
                          setState(() {});
                        },
                        child: const Text('5',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '6';
                          setState(() {});
                        },
                        child: const Text('6',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '/';
                          operator = '/';
                          setState(() {});
                        },
                        child: const Text('/',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '1';
                          setState(() {});
                        },
                        child: const Text('1',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '2';
                          setState(() {});
                        },
                        child: const Text('2',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '3';
                          setState(() {});
                        },
                        child: const Text('3',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:  Colors.grey[600],
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '+';
                          operator = '+';
                          setState(() {});
                        },
                        child: const Text('+',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.orange[600],
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          var result = evaluateExpression(display, operator);
                          display = result.toString();
                          setState(() {});
                        },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange[600])),
                        child: const Text('=',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '0';
                          setState(() {});
                        },
                        child: const Text('0',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display = '';
                          operator = '';
                          setState(() {});
                        },
                        child: const Text('C',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:  Colors.grey[600],
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          display += '-';
                          operator = '-';
                          setState(() {});
                        },
                        child: const Text('-',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
