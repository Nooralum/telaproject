import 'package:flutter/material.dart';

class PionerPage extends StatelessWidget {
  const PionerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Devenir Demarcheur',
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
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.black,
                ),
              ),
              const FormFile(
                text: 'Nom',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormFile(
                text: 'Prenoms',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormFile(
                text: 'Numéro de téléphone',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormFile(
                text: 'Mot de passe',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormFile(
                text: 'Confirmation de Mot de passe',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(Icons.check_box_rounded),
                  Text("Accepter nos conditions d'utilisateurs")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        icon: Icon(
                          Icons.check_box_sharp,
                          color: Colors.green,
                          size: 50,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        content: SizedBox(
                          height: 200,
                          child: Column(
                            children: const [
                              Text(
                                'Félicitations! \n Votre compte de demarcheur a été activé avec succès',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Pour activer votre compte et télécharger des photos de logement, veuillez cliquer ci-dessous',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
                                    onPressed: () {},
                                    child: Text("S'abonner"),
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
                                child: Text("Annuler"),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  child: Text(
                    'Confirmer',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 3, 77, 138),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
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

class FormFile extends StatefulWidget {
  const FormFile({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<FormFile> createState() => _FormFileState();
}

class _FormFileState extends State<FormFile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
        ),
      ],
    );
  }
}
