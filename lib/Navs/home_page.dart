import 'package:flutter/material.dart';
import 'package:vvims/screens/profile/profile.dart';
import 'package:vvims/staff-screen/pages/colleges.dart';
import 'package:vvims/staff-screen/pages/homes.dart';
import 'package:vvims/staff-screen/pages/profiles.dart';
import 'package:vvims/staff-screen/pages/schedule.dart';
import 'package:vvims/staff-screen/pages/visitors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

   int currentTab = 0;
   final List<Widget> screens = [
    const Colleges(),
    const Homes(),
    const ProfilScreen(),
    const Schedule(),
    const Visitors(),
   ];
      final PageStorageBucket bucket = PageStorageBucket();
      Widget currentscreen = const Homes();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.78),
      body: PageStorage(
        bucket: bucket,
         child: currentscreen
      ),
      bottomNavigationBar:   Container(
        height: 90,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 250, 244, 244),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child:  SizedBox(
          height: 60,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentscreen = const Homes();
                      currentTab = 0;
                    });
                  },
                  child:  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Image.asset(
                      'assets/icons/home copy.png',
                      width: 40,
                      scale: 0.3,
                      color: currentTab == 0? Colors.blue : Colors.grey,
                    ),
                    const Text('Home')
                   ],
                  ),
                ),
                    MaterialButton(
                  minWidth: 120,
                  onPressed: () {
                    setState(() {
                      currentscreen = const Schedule();
                      currentTab = 1;
                    });
                  },
                  child:  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Image.asset(
                      'assets/icons/calendar-tick.png',
                      color: currentTab == 1? Colors.blue : Colors.grey,
                    ),
                    const Text('Schedule')
                   ],
                  ),
                ),
                MaterialButton(
                  minWidth: 70,
                  onPressed: () {
                    setState(() {
                      currentscreen = const Visitors();
                      currentTab = 2;
                    });
                  },
                  child:  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Image.asset(
                    'assets/icons/Waiting Room.png',
                    width: 30,
                    scale: 0.3,
                      color: currentTab == 2? Colors.blue : Colors.grey,
                    ),
                    const Text('Visitors')
                   ],
                  ),
                ),
                 MaterialButton(
                  minWidth: 80,
                  onPressed: () {
                    setState(() {
                      currentscreen = const Colleges();
                      currentTab = 3;
                    });
                  },
                  child:  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Image.asset(
                      'assets/icons/people.png',
                      
                      color: currentTab == 3? Colors.blue : Colors.grey,
                    ),
                    const Text('Colleges'),
                   ],
                  ),
                ),
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentscreen = const ProfilScreen();
                      currentTab = 4;
                    });
                  },
                  child:  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Image.asset(
                      'assets/icons/profile copy.png',
                      color: currentTab == 4? Colors.blue : Colors.grey,
                    ),
                    const Text('Profile'),
                   ],
                  ),
                ),
              ],
            ),
          ],
          ),
        ),
      ), 
    );
  }
}
