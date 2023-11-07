import 'package:flutter/material.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  @override
  State<TutorialView> createState() => _TutorialViewState();
}

class _TutorialViewState extends State<TutorialView> {
  final _dashboardViewModel = DashboardViewModel();

  @override
  void initState() {
    super.initState();
    _dashboardViewModel.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _dashboardViewModel.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CounterSection(viewModel: _dashboardViewModel),
              const Divider(),
              LoadingButton(viewModel: _dashboardViewModel),
              const Divider(),
              CategorySection(viewModel: _dashboardViewModel),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardViewModel extends ChangeNotifier {
  int counter = 0;
  int selectedIndex = 0;
  bool loading = false;
  List<String> categories = [
    "Main course",
    "Drinks",
    "Snacks",
    "Pizza",
    "Burger",
  ];

  void updateCounter() {
    counter++;
    notifyListeners();
  }

  void updateIndex(int newIndex) {
    selectedIndex = newIndex;
    notifyListeners();
  }

  Future<void> getProducts() async {
    loading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    loading = false;
    notifyListeners();
  }
}

class CounterSection extends StatelessWidget {
  final DashboardViewModel viewModel;

  const CounterSection({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${viewModel.counter}",
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: viewModel.updateCounter,
          child: const Text("Increment"),
        ),
      ],
    );
  }
}

class LoadingButton extends StatelessWidget {
  final DashboardViewModel viewModel;

  const LoadingButton({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (viewModel.loading) const CircularProgressIndicator(),
        const SizedBox(height: 12.0),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: viewModel.getProducts,
          child: const Text("Get Products"),
        ),
      ],
    );
  }
}

class CategorySection extends StatelessWidget {
  final DashboardViewModel viewModel;

  const CategorySection({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(viewModel.categories.length, (index) {
          var item = viewModel.categories[index];
          bool selected = viewModel.selectedIndex == index;
          return InkWell(
            onTap: () => viewModel.updateIndex(index),
            child: Card(
              color: selected ? Colors.blue : Colors.blue[300],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
