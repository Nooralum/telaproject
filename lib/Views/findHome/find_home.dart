import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:tela_project/Views/findHome/visitor_pass.dart';

class FindHomeScreen extends StatefulWidget {
  const FindHomeScreen({super.key});

  @override
  State<FindHomeScreen> createState() => _FindHomeScreenState();
}

class _FindHomeScreenState extends State<FindHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trouver une maison',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Ville'),
                        DropdownMenu(
                          trailingIcon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 30,
                          ),
                          width: 372,
                          menuStyle: MenuStyle(),
                          dropdownMenuEntries: [
                            DropdownMenuEntry(value: false, label: "Abidjan"),
                            DropdownMenuEntry(value: false, label: "San-Pedro"),
                            DropdownMenuEntry(value: false, label: "Dabou")
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Commune'),
                        DropdownMenu(
                          trailingIcon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 30,
                          ),
                          width: 372,
                          menuStyle: MenuStyle(),
                          dropdownMenuEntries: [
                            DropdownMenuEntry(value: false, label: "Abidjan"),
                            DropdownMenuEntry(value: false, label: "San-Pedro"),
                            DropdownMenuEntry(value: false, label: "Dabou")
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Catégorie'),
                        DropdownMenu(
                          trailingIcon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 30,
                          ),
                          width: 372,
                          menuStyle: MenuStyle(),
                          dropdownMenuEntries: [
                            DropdownMenuEntry(value: false, label: "Abidjan"),
                            DropdownMenuEntry(value: false, label: "San-Pedro"),
                            DropdownMenuEntry(value: false, label: "Dabou")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[350]!.withOpacity(0.5)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ContentToggle(
                        text: 'Chambre',
                      ),
                      ContentToggle(
                        text: 'Studio',
                      ),
                      ContentToggle(text: 'Maison basse'),
                      ContentToggle(text: 'Appartement'),
                      ContentToggle(text: 'Duplex et Triplex'),
                      ContentToggle(
                          text: 'Habitat haut standing \navec piscine'),
                      ContentToggle(
                          text: 'Habitat haut standing \n sans piscine'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      content: SizedBox(
                        height: 250,
                        child: Column(
                          children: [
                            const Text(
                              "Insérer votre pass visiteur",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              child: const TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Vous n'avez pas encore de pass?\n Acheter un pass visiteur en cliquant  ci-dessous",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_downward_sharp,
                              size: 60,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      actions: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: SizedBox(
                                width: 250,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const VisitorPassScreen(),
                                      ),
                                    );
                                  },
                                  child: Text("Acheter un pass visiteur"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 3, 77, 138),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Annuler"),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  minimumSize: Size(200, 50),
                  backgroundColor: const Color.fromARGB(255, 3, 77, 138),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'confirmer',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContentToggle extends StatefulWidget {
  const ContentToggle({super.key, required this.text});

  final String text;

  @override
  State<ContentToggle> createState() => _ContentToggleState();
}

class _ContentToggleState extends State<ContentToggle> {
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        FlutterSwitch(
          value: _light,
          inactiveColor: Colors.white,
          inactiveToggleColor: Colors.grey,
          height: 30,
          width: 50,
          switchBorder: Border.all(
            style: BorderStyle.solid,
            color: Colors.black,
            width: 2,
          ),
          activeColor: Colors.orange,
          onToggle: (bool value) {
            setState(() {
              _light = value;
            });
          },
        )
      ],
    );
  }
}
