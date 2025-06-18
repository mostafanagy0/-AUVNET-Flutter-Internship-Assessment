import 'package:auvnet/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:auvnet/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:auvnet/features/home/presentation/views/widgets/home_content_widget.dart';
import 'package:auvnet/features/home/presentation/views/widgets/placeholder_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeContentWidget(),
    const PlaceholderPageWidget(
      title: 'Categories',
      icon: Icons.category,
    ),
    const PlaceholderPageWidget(
      title: 'Delivery',
      icon: Icons.delivery_dining,
    ),
    const PlaceholderPageWidget(
      title: 'Cart',
      icon: Icons.shopping_cart,
    ),
    const PlaceholderPageWidget(
      title: 'Profile',
      icon: Icons.person,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  void _initializeData() {
    context.read<HomeBloc>().add(FetchServices());
    context.read<HomeBloc>().add(FetchRestaurants());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
