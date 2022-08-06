import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:alis/screens/login/login_sex.dart';
import 'package:map_picker_free/map_picker_free.dart';
import 'package:http/http.dart' as http;

class LoginFive extends StatefulWidget {
  const LoginFive({Key? key}) : super(key: key);

  @override
  State<LoginFive> createState() => _LoginFiveState();
}

class _LoginFiveState extends State<LoginFive> {
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  LocationData? _userLocation;

  Future<void> _getUserLocation() async {
    Location location = Location();

    // Check if location service is enable
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    // Check if permission is granted
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    final _locationData = await location.getLocation();
    setState(() {
      _userLocation = _locationData;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var x = 36.2961318;
    var y = 59.5722141;
    // var x =_userLocation?.latitude;
    // var y = _userLocation?.longitude;
    return SafeArea(
      child: Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: SizedBox(

        //   width: size.width,
        //   child: FloatingActionButton.extended(
        //     // backgroundColor: Color(0xff17B978),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => LoginSex(),
        //         ),
        //       );
        //     },
        //     label: Text(
        //       'مرحله بعد',
        //       style:
        //           TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        // ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 46,
                  color: Colors.blue[700],
                ),
                Text(
                  'دریافت موقعیت',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(''),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    _getUserLocation();
                  },
                  child: Text(
                    'دریافت موقعیت',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _userLocation != null
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          children: [
                            Text('Your latitude: ${_userLocation?.latitude}'),
                            const SizedBox(width: 10),
                            Text('Your longtitude: ${_userLocation?.longitude}')
                          ],
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              child: MapPicker(
                center: LatLong(
                    double.parse(x.toString()), double.parse(y.toString())),
                onPicked: (pickedData) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login_Sex()),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 8,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: size.height * 0.07,
                    width: size.width * 0.9,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                                textDirection: TextDirection.rtl,
                                child: Login_Sex()),
                          ),
                        );
                      },
                      child: Text(
                        'مرحله بعد',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'IransansDn'),
                      ),
                    )),
              ),
              // Container(
              //   width: size.width,
              //   height: size.height * 0.08,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       ButtonBox(
              //           size: size,
              //           text: 'مرحله بعدی',
              //           press: () {
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(builder: (context) => LoginSex()),
              //             );
              //           }),
              //     ],
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonBox extends StatelessWidget {
  const ButtonBox({
    Key? key,
    required this.size,
    required this.text,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: press,
            child: Container(
              width: size.width * 0.8,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                color: Color(0xff17B978),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
