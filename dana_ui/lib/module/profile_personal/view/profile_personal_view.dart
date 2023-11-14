import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/profile_personal_controller.dart';

class ProfilePersonalView extends StatefulWidget {
  const ProfilePersonalView({Key? key}) : super(key: key);

  Widget build(context, ProfilePersonalController controller) {
    controller.view = this;

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 300,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            const CircleAvatar(
                              radius: 42.0,
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 4.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                color: Colors.white.withOpacity(0.4),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.wallet,
                                    size: 16.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "PREMIUM",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "ALEX BIZER",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              const Text(
                                "0821****7409",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              SizedBox(
                                height: 30.0,
                                child: OutlinedButton.icon(
                                  icon: const Icon(
                                    Icons.qr_code_scanner,
                                    size: 16.0,
                                  ),
                                  label: const Text(
                                    "SHOW MY QR",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    shape: const StadiumBorder(),
                                    side: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 240,
              left: 20,
              right: 20,
              bottom: -20,
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Activate UZI Protection now to stay protected",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                    child: LinearProgressIndicator(
                                      value: 0.6,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Make your EMoney account more secure!",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              MdiIcons.chevronRight,
                              color: Colors.grey,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Builder(builder: (context) {
                                List menuItems = [
                                  {
                                    "icon": MdiIcons.wallet,
                                    "color": primaryColor,
                                    "label": "Balance",
                                    "value": "Rp55.210",
                                  },
                                  {
                                    "icon": MdiIcons.target,
                                    "color": const Color(0xfffa5c5c),
                                    "label": "Daily Targets",
                                    "value": "Earn more points!",
                                  },
                                  {
                                    "icon": MdiIcons.gold,
                                    "color": const Color(0xfff78e05),
                                    "label": "Activate Gold",
                                    "value": "Let's activate!",
                                  },
                                  {
                                    "icon": MdiIcons.chartLine,
                                    "color": const Color(0xffef9e49),
                                    "label": "M-Investment",
                                    "value": "3% profit/month",
                                  }
                                ];
                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1.0,
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 6,
                                    crossAxisSpacing: 6,
                                  ),
                                  itemCount: menuItems.length,
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var item = menuItems[index];
                                    return InkWell(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            item["icon"],
                                            color: item["color"],
                                            size: 36.0,
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            item["label"],
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            item["value"],
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: primaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }),
                            ),
                            const Divider(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Color(0xffdef8eb),
                                          child: Icon(
                                            Icons.arrow_upward,
                                            color: Color(0xff3ec17d),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Income",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4.0,
                                              ),
                                              const Text(
                                                "Rp12.000,-",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Color(0xfffeefe2),
                                          child: Icon(
                                            Icons.arrow_upward,
                                            color: Color(0xffdd932d),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Expense",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4.0,
                                              ),
                                              const Text(
                                                "Rp5.000,-",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Builder(builder: (context) {
                          List menuItems = [
                            {
                              "icon": MdiIcons.checkCircle,
                              "color": Colors.green,
                              "title": "Check In and get rewards",
                              "page": const WalletView(),
                            },
                            {
                              "icon": MdiIcons.listBox,
                              "color": Colors.red,
                              "title": "My bills",
                              "page": const WalletView(),
                            },
                            {
                              "icon": Icons.wallet,
                              "color": Colors.blue,
                              "title": "Wallet",
                              "page": const WalletView(),
                            },
                            {
                              "icon": MdiIcons.listBoxOutline,
                              "color": Colors.grey,
                              "title": "TOS",
                              "page": const WalletView(),
                            },
                            {
                              "icon": MdiIcons.listBoxOutline,
                              "color": Colors.grey,
                              "title": "Privacy Policy",
                              "page": const WalletView(),
                            },
                            {
                              "icon": MdiIcons.listBoxOutline,
                              "color": Colors.grey,
                              "title": "Help",
                              "page": const WalletView(),
                            },
                          ];
                          return ListView.builder(
                            itemCount: menuItems.length,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              var item = menuItems[index];
                              return ListTile(
                                onTap: () => Get.to(item["page"]),
                                leading: Icon(
                                  item["icon"],
                                  size: 24.0,
                                  color: item["color"],
                                ),
                                contentPadding: const EdgeInsets.all(0.0),
                                minLeadingWidth: 0.0,
                                title: Text(item["title"]),
                                trailing: const Icon(
                                  Icons.chevron_right,
                                  size: 24.0,
                                ),
                              );
                            },
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 60.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfilePersonalView> createState() => ProfilePersonalController();
}
