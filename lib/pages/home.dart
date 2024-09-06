import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/routes/route_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyAppRoutesConstants.profile);
                  //   GoRouter.of(context).go('/profile');
                },
                child: const Text("Profile")),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(MyAppRoutesConstants.contact,
                      pathParameters: {"name": "shaham"});
                },
                child: const Text("Contact Us")),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(MyAppRoutesConstants.about);
                },
                child: const Text("About Us")),
          ],
        ),
      ),
    );
  }
}
