import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colore.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class MobileScreenLayout extends StatefulWidget {
  static const String routeName = '/mobile-screen';
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: appBarColor,
              elevation: 0,
              title: const Text(
                'WhatsApp',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert, 
                    color: Colors.grey)),
              ],
              bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                tabs: [
                  Tab(text: 'CHATS',),
                  Tab(text: 'STATUS',),
                  Tab(text: 'CALLS',),
                ]
                ),
            ),
            body: const ContactList(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: tabColor,
              child: const Icon(Icons.comment, color: Colors.white,),
            ),
          ),
        ));
  }
}
