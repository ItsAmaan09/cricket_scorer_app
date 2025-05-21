import 'package:flutter/material.dart';

class ScoringScreen extends StatefulWidget {
  const ScoringScreen({super.key});
  @override
  State createState() => _ScoringScreenState();
}

class _ScoringScreenState extends State {
  bool wide = false;
  bool noBall = false;
  bool byes = false;
  bool legByes = false;
  bool wicket = false;
  @override
  Widget build(BuildContext context) {
    final green = const Color(0xFF2F6D2F);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 142, 56, 116),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {},
        ),
        title: const Text(
          "Muzz's Team v/s Muee's...",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, color: Colors.white),
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
        actions: [
          // IconButton(icon: const Icon(Icons.check), onPressed: () {}),
          // Container(
          //   margin: const EdgeInsets.only(right: 12),
          //   width: 32,
          //   height: 32,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(16),
          //   ),
          //   alignment: Alignment.center,
          //   child: const Text(
          //     '1:3',
          //     style: TextStyle(
          //       color: Color(0xFF2F6D2F),
          //       fontWeight: FontWeight.w700,
          //       fontSize: 12,
          //     ),
          //   ),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1A000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              margin: const EdgeInsets.only(bottom: 12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Muzz's Team, 1st inning",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "CRR",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w200,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            '-',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w200,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w200,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '(0.0)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        '0.00',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1A000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                  4: FlexColumnWidth(1),
                  5: FlexColumnWidth(1),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    decoration: const BoxDecoration(),
                    children: [
                      tableCell('Batsman', isHeader: true),
                      tableCell('R', isHeader: true),
                      tableCell('B', isHeader: true),
                      tableCell('4s', isHeader: true),
                      tableCell('6s', isHeader: true),
                      tableCell('SR', isHeader: true),
                    ],
                  ),
                  TableRow(
                    children: [
                      tableCell(
                        'M Muzammil 1 ©*',
                        textColor: Color.fromARGB(255, 142, 56, 116),
                        fontWeight: FontWeight.w600,
                      ),
                      tableCell('0'),
                      tableCell('0'),
                      tableCell('0'),
                      tableCell('0'),
                      tableCell('0.00'),
                    ],
                  ),
                  TableRow(
                    children: [
                      tableCell(
                        'A Ahad 1',
                        textColor: Color.fromARGB(255, 142, 56, 116),
                        fontWeight: FontWeight.w600,
                      ),
                      tableCell('0'),
                      tableCell('0'),
                      tableCell('0'),
                      tableCell('0'),
                      tableCell('0.00'),
                    ],
                  ),
                  TableRow(
                    children: [
                      tableCell('Bowler'),
                      tableCell('O'),
                      tableCell('M'),
                      tableCell('R'),
                      tableCell('W'),
                      tableCell('ER'),
                    ],
                  ),
                  TableRow(
                    children: [
                      tableCell(
                        'A Mueed 1 ©',
                        textColor: Color.fromARGB(255, 142, 56, 116),
                        fontWeight: FontWeight.w600,
                      ),
                      tableCell('0.0'),
                      tableCell('0'),
                      tableCell('0'),
                      tableCell('0'),
                      tableCell('0.00'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1A000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text(
                'This over:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1A000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              margin: const EdgeInsets.only(bottom: 12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      checkboxWithLabel('Wide', wide, (val) {
                        setState(() {
                          wide = val ?? false;
                        });
                      }),
                      checkboxWithLabel('No Ball', noBall, (val) {
                        setState(() {
                          noBall = val ?? false;
                        });
                      }),
                      checkboxWithLabel('Byes', byes, (val) {
                        setState(() {
                          byes = val ?? false;
                        });
                      }),
                      checkboxWithLabel('Leg Byes', legByes, (val) {
                        setState(() {
                          legByes = val ?? false;
                        });
                      }),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      checkboxWithLabel('Wicket', wicket, (val) {
                        setState(() {
                          wicket = val ?? false;
                        });
                      }),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 142, 56, 116),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        child: const Text('Retire', style: TextStyle(color: Colors.white),),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 142, 56, 116),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        child: const Text('Swap Batsman', style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1A000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        greenButton('Undo', green),
                        const SizedBox(height: 12),
                        greenButton('Partnerships', green),
                        const SizedBox(height: 12),
                        greenButton('Extras', green),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        numberCircle('0', green),
                        numberCircle('1', green),
                        numberCircle('2', green),
                        numberCircle('3', green),
                        numberCircle('4', green),
                        numberCircle('5', green),
                        numberCircle('6', green),
                        numberCircle('...', green),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tableCell(
    String text, {
    bool isHeader = false,
    Color textColor = Colors.black,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: isHeader ? FontWeight.w400 : fontWeight,
          color: isHeader ? Colors.grey : textColor,
        ),
      ),
    );
  }

  Widget checkboxWithLabel(String label, bool value, ValueChanged onChanged) {
    return Expanded(
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            activeColor: const Color.fromARGB(255, 142, 56, 116),
          ),
          Flexible(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget greenButton(String text, Color green) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 142, 56, 116),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          padding: const EdgeInsets.symmetric(vertical: 14),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget numberCircle(String text, Color green) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 142, 56, 116), width: 2),
        borderRadius: BorderRadius.circular(28),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 142, 56, 116),
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
