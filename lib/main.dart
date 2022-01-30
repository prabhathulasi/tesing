import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:testing_project/data/repository/all_dog_repository.dart';
import 'package:testing_project/data/repository/category_dog_repository.dart';
import 'package:testing_project/screens/alldog/view/all_dog_view.dart';
import 'data/provider/index.dart';

import 'utils/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (_) => APIClient.init()),
          RepositoryProvider(
            create: (_) => AllDogRepository(
              provider: AllDogProvider(
                apiClient: _.read<APIClient>(),
              ),
            ),
          ),
          RepositoryProvider(
            create: (_) => CategoryDogRepository(
              provider: CategoryDogProvider(
                apiClient: _.read<APIClient>(),
              ),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const AllDogScreen(),
        ),
      );
    });
  }
}
