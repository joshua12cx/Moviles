import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:consultorio_odontologico_rosales/screens/login_screen.dart';

void main() {
  testWidgets('Login screen loads and has required widgets', (WidgetTester tester) async {
    // Build the login screen widget
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    // Verificar que existen los campos de texto para el email y la contraseña
    expect(find.byType(TextField), findsNWidgets(2)); // Dos campos de texto

    // Verificar que hay un botón de iniciar sesión
    expect(find.widgetWithText(ElevatedButton, 'Iniciar sesión'), findsOneWidget);

    // Verificar que el botón puede ser presionado
    await tester.tap(find.widgetWithText(ElevatedButton, 'Iniciar sesión'));
    await tester.pump();
  });
}
