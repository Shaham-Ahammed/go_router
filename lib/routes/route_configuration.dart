import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/pages/about_us.dart';
import 'package:go_router_sample/pages/contact_us.dart';
import 'package:go_router_sample/pages/error_page.dart';
import 'package:go_router_sample/pages/home.dart';
import 'package:go_router_sample/pages/profile.dart';
import 'package:go_router_sample/routes/route_constants.dart';

const isLoggedIn = false;

class MyAppRoutes {
  
  GoRouter router = GoRouter(
  
  // redirect: (context, state) {
  //   if (state.fullPath=="/" && !isLoggedIn) {
  //     return "/profile";
  //   }else if(state.fullPath=="/" && !isLoggedIn){
  //     return "/";
  //   }
  //   return "/about";
  // },
  
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: '/',
          name: MyAppRoutesConstants.home,
          builder: (context, state) {
            return Home();
          },
        ),
        GoRoute(
          path: '/profile',
          name: MyAppRoutesConstants.profile,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: Profile(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                    opacity:
                        CurveTween(curve: Curves.easeIn).animate(animation),
                        child: child,
                        );
              },
            );
          },
        ),
        GoRoute(
          path: '/contact/:name',
          name: MyAppRoutesConstants.contact,
          builder: (context, state) {
            return ContactUs(
              name: state.pathParameters['name']!,
            );
          },
        ),
        GoRoute(
          path: '/about',
          name: MyAppRoutesConstants.about,
          builder: (context, state) {
            return AboutUs();
          },
        ),
      ],
      errorPageBuilder: (context, state) => MaterialPage(child: ErrorPage()));
}
