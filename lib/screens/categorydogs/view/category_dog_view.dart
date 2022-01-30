import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_project/data/enum/index.dart';
import 'package:testing_project/data/repository/category_dog_repository.dart';
import 'package:testing_project/router/app_routes.dart';
import 'package:testing_project/screens/categorydogs/cubit/category_dog_cubit.dart';
import 'package:testing_project/themes/index.dart';
import 'package:sizer/sizer.dart';

class CategoryScreen extends StatelessWidget {
  final String? categoryName;
  const CategoryScreen({Key? key, this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryDogCubit(
          repository: _.read<CategoryDogRepository>(),
          categoryName: categoryName!,
          subCatName: ""),
      child: CategoryDogView(
        catName: categoryName!,
      ),
    );
  }
}

class CategoryDogView extends StatefulWidget {
  final String? catName;
  const CategoryDogView({Key? key, this.catName}) : super(key: key);

  @override
  _CategoryDogViewState createState() => _CategoryDogViewState();
}

class _CategoryDogViewState extends State<CategoryDogView> {
  @override
  Widget build(BuildContext context) {
    final textTheme = CTextStyles.find;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.catName!),
      ),
      body: BlocBuilder<CategoryDogCubit, CategoryDogState>(
          builder: (context, state) {
        if (state.status == PageStatus.initial) {
          BlocProvider.of<CategoryDogCubit>(context).fetchDetail();
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
          return Column(
            children: [
              SizedBox(
                height: size.height / 2,
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: state.image!.message!.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    state.image!.message![index]))),
                      );
                    }),
              ),
              Text(
                "Tap on a sub breeed to view more Pictures",
                style: textTheme.bold16,
              ),
              state.data!.message!.isEmpty
                  ? const Expanded(child: Text("No Sub breed found"))
                  : Expanded(
                      child: ListView.builder(
                          itemCount: state.data!.message!.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    AppRouter.subCatScreen(widget.catName!,
                                        state.data!.message![index]));
                              },
                              child: Card(
                                child: ListTile(
                                  title: Text(state.data!.message![index]),
                                ),
                              ),
                            );
                          }))
            ],
          );
        }
      }),
    );
  }
}
