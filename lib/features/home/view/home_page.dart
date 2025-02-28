import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/general_utility.dart';
import '../../components/country_card.dart';
import '../../components/country_details_modal.dart';
import '../model/country_model.dart';
import '../state/home_event.dart';
import '../state/home_state.dart';
import '../view_model/home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeViewModel>().add(const HomeEvent.getCountries());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('African Countries'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: BlocBuilder<HomeViewModel, HomeState>(
        builder: (context, state) {
          switch (state.response) {
            case ResponseState.initial:
              return const Center(child: Text('Fetching countries...'));
            case ResponseState.loading:
              return const Center(child: CircularProgressIndicator());
            case ResponseState.error:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Failed to load countries'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<HomeViewModel>()
                            .add(const HomeEvent.getCountries());
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            case ResponseState.success:
              final countries = state.apiResponse?.countries ?? [];
              return countries.isEmpty
                  ? const Center(child: Text('No countries found'))
                  : GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: countries.length,
                      itemBuilder: (context, index) {
                        final country = countries[index];
                        return GestureDetector(
                          onTap: () => _showCountryDetails(context, country),
                          child: CountryCard(country: country),
                        );
                        ;
                      },
                    );
          }
        },
      ),
    );
  }
}

void _showCountryDetails(BuildContext context, CountryModel country) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => CountryDetailModal(country: country),
  );
}
