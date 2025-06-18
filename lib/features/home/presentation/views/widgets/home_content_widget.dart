import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:auvnet/features/home/presentation/views/widgets/custom_got_code_widget.dart';
import 'package:auvnet/features/home/presentation/views/widgets/custom_text_widget.dart';
import 'package:auvnet/features/home/presentation/views/widgets/header_widget.dart';
import 'package:auvnet/features/home/presentation/views/widgets/restaurant_bloc_buiulder.dart';
import 'package:auvnet/features/home/presentation/views/widgets/service_list_view.dart';
import 'package:auvnet/features/home/presentation/views/widgets/shortcut_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeContentWidget extends StatelessWidget {
  const HomeContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Headerwidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextWidget(text: 'Services:'),
                const SizedBox(height: 19),
                _buildServicesSection(),
                const SizedBox(height: 24),
                const SizedBox(height: 19),
                const SizedBox(height: 14),
                const CustomGotCodeWidget(),
                const SizedBox(height: 14),
                const CustomTextWidget(text: 'Shortcuts:'),
                const SizedBox(height: 19),
                const ShortcutListView(),
                const SizedBox(height: 14),
                SizedBox(
                  height: 180,
                  child: Image.asset(Assets.imagePhoto20230903133655),
                ),
                const CustomTextWidget(text: 'Restaurants:'),
                RestaurantBlocBuilder(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesSection() {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.services != current.services ||
          previous.isLoading != current.isLoading,
      builder: (context, state) {
        if (state.isLoading && state.services.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.services.isEmpty) {
          return const Center(child: Text('No services found'));
        } else {
          return ServiceListView(services: state.services);
        }
      },
    );
  }
}
