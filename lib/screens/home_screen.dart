import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Ramiro Paredes'),
              accountEmail: Text('ramiro@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 50, color: Colors.blue),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Citas'),
              onTap: () {
                // Navegar a la página de Citas
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Pagos'),
              onTap: () {
                // Navegar a la página de Pagos
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar sesión'),
              onTap: () {
                // Manejar el cierre de sesión
                Navigator.pushReplacementNamed(context,
                    '/login'); // Redirige a la pantalla de inicio de sesión
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Bienvenido al consultorio odontológico')),
    );
  }
}
