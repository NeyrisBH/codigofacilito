import 'screens/content_not_visible_screen.dart';
import 'screens/counter_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/overflow_screen.dart';
import 'screens/platform_widgets_screen.dart';
import 'screens/slidable_screen.dart';
import 'screens/tabs_screen.dart';

final routes = {
  CounterScreen.routePath: (_) => const CounterScreen(),
  OverflowScreen.routePath: (_) => const OverflowScreen(),
  PlatformWidgetsScreen.routePath: (_) => const PlatformWidgetsScreen(),
  TabsScreen.routePath: (_) => const TabsScreen(),
  ContentNotVisibleScreen.routePath: (_) => const ContentNotVisibleScreen(),
  SlidableScreen.routePath: (_) => const SlidableScreen(),
  LoginScreen.routePath: (_) => const LoginScreen(),
  HomeScreen.routePath: (_) => const HomeScreen(),
};
