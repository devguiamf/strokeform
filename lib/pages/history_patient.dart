import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PatientHistoryScreen(),
    );
  }
}

class PatientHistoryScreen extends StatelessWidget {
  const PatientHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de pacientes'),
        backgroundColor: const Color.fromRGBO(97, 105, 245, 1),
      ),
      body: ListView(
        children: [
          buildPatientCard(
            profileIcon: Icons.person,
            name: 'Guilherme de A. M. Ferreira',
            age: 23,
            gender: 'Masculino',
            lastVisit: '22/11/2023',
            phoneNumber: '(16) 99234-9923',
          ),
          buildPatientCard(
            profileIcon: Icons.person_2,
            name: 'Camila Vitória',
            age: 19,
            gender: 'Feminíno',
            lastVisit: '20/11/2023',
            phoneNumber: '(16) 992312-8998',
          ),
          buildPatientCard(
            profileIcon: Icons.person,
            name: 'Adriel B. Borges',
            age: 25,
            gender: 'Masculino',
            lastVisit: '21/11/2023',
            phoneNumber: '(16) 987341-1931',
          ),
          buildPatientCard(
            profileIcon: Icons.person_2,
            name: 'Rafaela Silva',
            age: 56,
            gender: 'Feminíno',
            lastVisit: '20/11/2023',
            phoneNumber: '(16) 3723-3212',
          ),
          // Add more patient cards as needed
        ],
      ),
    );
  }

  Widget buildPatientCard({
    required IconData profileIcon,
    required String name,
    required int age,
    required String gender,
    required String lastVisit,
    required String phoneNumber,
  }) {
    return Card(
        margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
        elevation: 8.0,
        borderOnForeground: true,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(97, 105, 245, 1),
                Color.fromRGBO(63, 72, 248, 0.6),
              ], // Defina as cores do seu gradiente
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Profile Icon
                Icon(
                  profileIcon,
                  size: 60.0,
                  color: Colors.white,
                ),
                const SizedBox(width: 16.0),
                // Patient Information
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Idade: $age, Gênero: $gender',
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    Text(
                      'Ultima Visita: $lastVisit',
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    Text(
                      'Telefone: $phoneNumber',
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
