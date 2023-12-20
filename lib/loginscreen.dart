import 'package:flutter/material.dart';
import 'package:uas_2020130024/homescreen.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double quarterScreenHeight = MediaQuery.of(context).size.height / 4;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: quarterScreenHeight,
            color: Colors.transparent,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0),
            child: Container(
              width: 241,
              height: 38,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 14,
                      fontFamily: 'Mada',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
              padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0),
              child: Container(
                width: 241,
                height: 38,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xFF8B8B8B),
                        fontSize: 14,
                        fontFamily: 'Mada',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    )),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 95,
                  height: 45,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 4, color: Color(0xFF093A08)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 40.0,
                        height: MediaQuery.of(context).size.height / 16,
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 14,
                            fontFamily: 'Mada',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      
      backgroundColor: const Color(0xFFfff1dd),
    );
  }
}
