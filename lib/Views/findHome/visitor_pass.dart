import 'package:flutter/material.dart';

class VisitorPassScreen extends StatelessWidget {
  const VisitorPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pass visiteur',
            style: TextStyle(fontSize: 25, color: Colors.orange),
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.grey[100]!.withOpacity(0.5),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 30,
              );
            },
            itemCount: 3,
            itemBuilder: (BuildContext, context) {
              return Container(
                width: 250,
                height: 130,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      '2000 F CFA',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Je suis un text',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
