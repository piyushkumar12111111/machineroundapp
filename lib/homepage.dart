import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xFFFFD79F), width: 2)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //  SizedBox(width: 50,);
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xFFFFD79F), width: 2)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xFFFFD79F),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color(0XFF001312)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: HPayServicesWidget(),
                ),
              ),
              Center(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image.asset("lib/assets/image 6344235.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
    );
  }

  AppBar Customappbar() {
    return AppBar(
      backgroundColor: Color(0xFF0E7574),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildCertikSkynet(),
          _buildConnectWallet(),
          // SizedBox(width: 4),
          Stack(
            children: [
              Icon(Icons.shopping_cart, color: Colors.black), // Example icon

              Align(
                  alignment: Alignment.centerRight,
                  child: _buildNotificationBadge()),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCertikSkynet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.security, color: Colors.green),
          SizedBox(width: 4),
          Text(
            'CERTIK | ',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
          ),
          Text(
            "Skynet",
            style: TextStyle(
                color: Color(0xFFFFD79F),
                fontWeight: FontWeight.bold,
                fontSize: 10),
          )
        ],
      ),
    );
  }

  Widget _buildConnectWallet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.amber, // Example button color
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: <Widget>[
          Text(
            'Connect Wallet',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationBadge() {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(6),
      ),
      constraints: BoxConstraints(
        minWidth: 14,
        minHeight: 14,
      ),
      child: Text(
        '1',
        style: TextStyle(
          color: Colors.white,
          fontSize: 8,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class HPayServicesWidget extends StatefulWidget {
  @override
  State<HPayServicesWidget> createState() => _HPayServicesWidgetState();
}

class _HPayServicesWidgetState extends State<HPayServicesWidget> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Color(0XFF0E7574), // Container background color
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
              color: Color(0xFFFFD79F),
              width: 3,
              style: BorderStyle.solid) // Rounded corner radius
          ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'HPAY | Services',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          SizedBox(height: 16.0),
          InkWell(
              child: InkWell(
            onTap: () {
              setState(() {
                click != click;
                print("button pressed ");
              });
            },
            child: _buildServiceTile(Icons.shopping_cart, 'List of Services',
                isSelected: click),
          )),
          _buildServiceTile(Icons.home, 'Staking Service'),
          _buildServiceTile(Icons.trending_up, 'Market Making',
              isSelected: true),
          _buildServiceTile(Icons.verified_user, 'Audit & KYC'),
          _buildServiceTile(Icons.message, 'HedgeTalk'),
        ],
      ),
    );
  }

  Widget _buildServiceTile(IconData iconData, String title,
      {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: isSelected
            ? Colors.orange
            : Colors.black26, // Highlight color for selected item
        borderRadius: BorderRadius.circular(10.0), // Rounded corner radius
      ),
      child: ListTile(
        leading: Icon(iconData, color: Colors.white),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(Icons.chevron_right, color: Colors.white),
      ),
    );
  }
}
