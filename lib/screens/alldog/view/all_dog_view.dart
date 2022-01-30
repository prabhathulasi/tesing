import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testing_project/data/enum/index.dart';
import 'package:sizer/sizer.dart';
import 'package:testing_project/data/model/index.dart';
import 'package:testing_project/data/repository/all_dog_repository.dart';
import 'package:testing_project/router/app_routes.dart';
import 'package:testing_project/router/index.dart';
import 'package:testing_project/screens/alldog/cubit/all_dog_cubit.dart';
import 'package:testing_project/themes/index.dart';

class AllDogScreen extends StatelessWidget {
  const AllDogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AllDogCubit(repository: _.read<AllDogRepository>()),
      child: const AllDogView(),
    );
  }
}

class AllDogView extends StatefulWidget {
  const AllDogView({Key? key}) : super(key: key);

  @override
  _AllDogViewState createState() => _AllDogViewState();
}

class _AllDogViewState extends State<AllDogView> {
  @override
  Widget build(BuildContext context) {
    final textTheme = CTextStyles.find;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("DogApp"),
        centerTitle: true,
      ),
      body: BlocBuilder<AllDogCubit, AllDogState>(builder: (context, state) {
        if (state.status == PageStatus.initial) {
          BlocProvider.of<AllDogCubit>(context).fetchDetail();
          return SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                SizedBox(
                  height: 5.sp,
                ),
                const Text("Loading Please Wait")
              ],
            ),
          );
        } else if (state.status == PageStatus.error) {
          return Center(child: Text(state.errorMessage.toString()));
        } else {
          List<TempData> list = [];
          Map map = state.data!.message!.toJson();
          map.forEach(
              (key, value) => list.add(TempData(names: key, data: value)));

          return Column(
            children: [
              Container(
                height: size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(state.image!.message!),
                        fit: BoxFit.cover)),
              ),
              Text(
                "Random Dog of the Day",
                style: textTheme.bold24,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Tap on bread to view more Pictures",
                style: textTheme.bold14,
              ),
              Expanded(
                child: AnimationLimiter(
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 500),
                          child: SlideAnimation(
                            verticalOffset: 50.0,
                            child: FadeInAnimation(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        AppRouter.catScreen(
                                            list[index].names!));
                                  },
                                  child: Card(
                                      child: ListTile(
                                          title: Text(list[index].names!)))),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}
