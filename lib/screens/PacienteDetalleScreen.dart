import 'package:flutter/material.dart';

class PacienteDetalleScreen extends StatelessWidget {
  const PacienteDetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener el ID del paciente desde los argumentos
    final String pacienteId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Paciente'),
      ),
      body: Center(
        child: Text('Mostrando detalles del paciente con ID: $pacienteId'),
      ),
    );
  }
}
