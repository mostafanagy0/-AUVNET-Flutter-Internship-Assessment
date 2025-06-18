import 'package:auvnet/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:auvnet/features/home/presentation/views/widgets/custom_got_code_widget.dart';
import 'package:auvnet/features/home/presentation/views/widgets/custom_text_widget.dart';
import 'package:auvnet/features/home/presentation/views/widgets/header_widget.dart';
import 'package:auvnet/features/home/presentation/views/widgets/service_list_view.dart';
import 'package:auvnet/features/home/presentation/views/widgets/shortcut_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(FetchServices());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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

                  /// BlocBuilder to fetch services only
                  BlocBuilder<HomeBloc, HomeState>(
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
                  ),

                  const SizedBox(height: 14),
                  const CustomGotCodeWidget(),
                  const SizedBox(height: 14),
                  const CustomTextWidget(text: 'Shortcuts:'),
                  const SizedBox(height: 19),

                  /// هنا لسه مش مربوطة بـ restaurants
                  const ShortcutListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
