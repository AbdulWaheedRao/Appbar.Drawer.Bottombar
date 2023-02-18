import 'package:flutter/material.dart';

class Logingeneraldialog extends StatelessWidget {
  const Logingeneraldialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          Expanded(flex: 5, child: SizedBox()),
          Expanded(
              flex: 3,
              child: Container(
                // color: Colors.amber,
                child: LayoutBuilder(
                  builder: (context, boxConstraint) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.4,
                        child: Image.asset(
                          'assest/images/pix.png',
                        ),
                      ),
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.3,
                        child: Text(
                          'Flutter',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
            flex: 7,
            child: Container(
              // color: Colors.grey,
              child: LayoutBuilder(
                builder: (context, boxConstraint) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.3,
                        width: boxConstraint.maxWidth * 0.9,
                        child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Username',
                                prefixIcon: Icon(Icons.person))),
                      ),
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.3,
                        width: boxConstraint.maxWidth * 0.9,
                        child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Password',
                                prefixIcon: Icon(Icons.lock))),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: boxConstraint.maxHeight * 0.2,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          SizedBox(
                            height: boxConstraint.maxHeight * 0.2,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
          Expanded(flex: 5, child: SizedBox())
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
          ],
        ));
  }
}
