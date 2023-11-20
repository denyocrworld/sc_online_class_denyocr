import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/dashboard_bloc.dart';
import '../event/dashboard_event.dart';
import '../state/dashboard_state.dart';
import 'package:get_it/get_it.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  DashboardBloc bloc = GetIt.I<DashboardBloc>();

  @override
  void initState() {
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<DashboardBloc, DashboardState>(
        listener: (context, state) {
          if (bloc.isValid) {}
        },
        child: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            final bloc = context.read<DashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DashboardBloc bloc,
    DashboardState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5.0,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.grey[300]!,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blueGrey[900],
                ),
                suffixIcon: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.sort,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
              onSubmitted: (text) => bloc.add(
                DashboardGetBooksEvent(
                  query: text,
                ),
              ),
            ),
          ),
          LayoutBuilder(builder: (context, constraint) {
            List<String> itemStringList = ["Female", "Male"];

            return FormField(
              initialValue: false,
              enabled: true,
              builder: (FormFieldState<bool> field) {
                return InputDecorator(
                  decoration: InputDecoration(
                    labelText: "Gender",
                    errorText: field.errorText,
                    helperText: "Your gender",
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: false,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: "Female",
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 24.0,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                        ),
                        iconSize: 16,
                        elevation: 16,
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          fontFamily: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontFamily,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                        ),
                        underline: Container(
                          height: 0,
                          color: Colors.grey[300],
                        ),
                        onChanged: (String? newValue) {
                          bloc.add(DashboardGetBooksEvent(
                            query: newValue,
                          ));
                        },
                        items: itemStringList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 0.0,
                                vertical: 0.0,
                              ),
                              child: Text(
                                value,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
          Expanded(
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var item = state.books[index];
                return Card(
                  child: ListTile(
                    title: Text(item.name ?? "-"),
                    subtitle: Text(item.authors?.join(",") ?? "-"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
