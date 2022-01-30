import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_project/data/enum/index.dart';
import 'package:testing_project/data/repository/category_dog_repository.dart';
import 'package:testing_project/screens/categorydogs/cubit/category_dog_cubit.dart';
import 'package:testing_project/themes/index.dart';
import 'package:sizer/sizer.dart';

class SubCategoryScreen extends StatefulWidget {
  final String? catName;
  final String? subCatDogName;
  const SubCategoryScreen({Key? key, this.subCatDogName, this.catName})
      : super(key: key);

  @override
  _SubCategoryScreenState createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryDogCubit(
          repository: _.read<CategoryDogRepository>(),
          categoryName: widget.catName!,
          subCatName: widget.subCatDogName!),
      child: SubCategoryDogView(
        catName: widget.subCatDogName,
      ),
    );
  }
}

class SubCategoryDogView extends StatefulWidget {
  final String? catName;
  const SubCategoryDogView({Key? key, this.catName}) : super(key: key);

  @override
  _SubCategoryDogViewState createState() => _SubCategoryDogViewState();
}

class _SubCategoryDogViewState extends State<SubCategoryDogView> {
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
            ],
          );
        }
      }),
    );
  }
}
