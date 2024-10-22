import 'package:flutter/material.dart';

class PacientesScreen extends StatelessWidget {
  // Lista simulada de pacientes
  final List<Map<String, String>> pacientes = [
    {'nombre': 'Juan Pérez', 'id': '1'},
    {'nombre': 'María González', 'id': '2'},
    {'nombre': 'Carlos Sánchez', 'id': '3'},
    {'nombre': 'Ana Torres', 'id': '4'},
  ];

 PacientesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Pacientes'),
      ),
      body: ListView.builder(
        itemCount: pacientes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(pacientes[index]['nombre']!),
              trailing: IconButton(
                icon: const Icon(Icons.info, color: Colors.blue),
                onPressed: () {
                  // Navegar a la pantalla de información del paciente
                  Navigator.pushNamed(
                    context,
                    '/pacienteDetalle',
                    arguments: pacientes[index]['id'],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
