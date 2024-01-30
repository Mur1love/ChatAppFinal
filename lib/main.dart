import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Importe as opções do Firebase aqui

import 'core/services/notification/chat_notification_service.dart';
import 'pages/auth_or_app_page.dart';

void main() async {
  // Garante que os Widgets Flutter estão inicializados
  WidgetsFlutterBinding.ensureInitialized(); 

  // Inicializa o Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatNotificationService(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: AuthOrAppPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
