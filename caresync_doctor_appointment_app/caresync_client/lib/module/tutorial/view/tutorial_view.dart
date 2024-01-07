import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:hyper_ui/core.dart';
import '../bloc/tutorial_bloc.dart';
import '../event/tutorial_event.dart';
import '../state/tutorial_state.dart';
=======
import '../bloc/tutorial_bloc.dart';
import '../event/tutorial_event.dart';
import '../state/tutorial_state.dart';
import 'package:get_it/get_it.dart';
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  @override
  State<TutorialView> createState() => _TutorialViewState();
}

class _TutorialViewState extends State<TutorialView> {
  TutorialBloc bloc = TutorialBloc();

  @override
  void initState() {
<<<<<<< HEAD
    bloc.initState();
=======
    if (GetIt.I.isRegistered<TutorialBloc>())
      GetIt.I.unregister<TutorialBloc>();
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
      child: BlocListener<TutorialBloc, TutorialState>(
        listener: (context, state) {},
        child: BlocBuilder<TutorialBloc, TutorialState>(
          builder: (context, state) {
            final bloc = context.read<TutorialBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    TutorialBloc bloc,
    TutorialState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
<<<<<<< HEAD
            // onPressed: () => bloc.add(TutorialIncrementEvent()),
            onPressed: () {
              bloc.incrementCounter();
            },
=======
            onPressed: () => bloc.add(TutorialIncrementEvent()),
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
