import 'package:flutter/material.dart';
import 'package:go_router_sample/routes/route_configuration.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
       routerConfig: MyAppRoutes().router,
    );
  }
}
