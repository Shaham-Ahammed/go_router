import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/pages/about_us.dart';
import 'package:go_router_sample/pages/contact_us.dart';
import 'package:go_router_sample/pages/error_page.dart';
import 'package:go_router_sample/pages/home.dart';
import 'package:go_router_sample/pages/profile.dart';
import 'package:go_router_sample/routes/route_constants.dart';

class MyAppRoutes {
  GoRouter router = GoRouter(
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
            path: '/',
            name: MyAppRoutesConstants.home,
            pageBuilder: (context, state) {
              return MaterialPage(child: Home());
            }),
        GoRoute(
            path: '/profile',
            name: MyAppRoutesConstants.profile,
            pageBuilder: (context, state) {
              return MaterialPage(child: Profile());
            }),
        GoRoute(
            path: '/contact',
            name: MyAppRoutesConstants.contact,
            pageBuilder: (context, state) {
              return MaterialPage(child: ContactUs());
            }),
        GoRoute(
            path: '/about',
            name: MyAppRoutesConstants.about,
            pageBuilder: (context, state) {
              return MaterialPage(child: AboutUs());
            }),
      ],
      errorPageBuilder: (context, state) => MaterialPage(child: ErrorPage()));
}
