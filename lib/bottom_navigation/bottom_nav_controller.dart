
import 'package:flutter/material.dart';
import 'package:sutraq/ui/views/dashboard_screen/dash_board_screen.dart';
import 'package:sutraq/ui/views/wallet_screen/my_wallet_screen.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}
 const _screen =[
    DashBoardScreen(),
    MyWalletScreen(),
     MyWalletScreen(),
      MyWalletScreen(),
 ];
int _currentIndex= 0;
class _BottomNavControllerState extends State<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedIndex){
         setState(() {
           _currentIndex= selectedIndex;
         });
        },
        currentIndex: _currentIndex,
        elevation: 15,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black45,
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        items: [
          bottomNavItem(
              icon: Icons.dashboard_outlined,
              label: "Dashboard"
          ),
          bottomNavItem(
              icon: Icons.wallet_outlined,
              label: "Wallet"
          ),
          bottomNavItem(
              icon: Icons.card_giftcard_outlined,
              label: "Card"
          ),
          bottomNavItem(
              icon: Icons.settings_outlined,
              label: "Settings"
          ),
        ],

      ),
      body: _screen[_currentIndex],
    );
  }
}



BottomNavigationBarItem bottomNavItem({
  required IconData icon,
  required String label
})
{
  return  BottomNavigationBarItem(
      icon: Icon(icon,size: 30,),
      label: label,
  );
}