import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Dr. Rosales'),
              accountEmail: Text('dr.rosales@consultorio.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 50, color: Colors.blue),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Paciente'),
              onTap: () {
                // página de Paciente
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Citas'),
              onTap: () {
                //página de Citas
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Pagos'),
              onTap: () {
                // Navegar a la página de Pagos
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Cerrar sesión'),
              onTap: () {
                // Manejar el cierre de sesión
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('Bienvenido al consultorio odontológico')),
    );
  }
}
