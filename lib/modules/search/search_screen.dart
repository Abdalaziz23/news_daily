import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_daily/layout/news_app/cubit/cubit.dart';
import 'package:news_daily/layout/news_app/cubit/states.dart';
import 'package:news_daily/shared/components/components.dart';

class SearchScreen extends StatelessWidget {
  //SearchScreen({Key? key}) : super(key: key);

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      builder: (context, state) {
        var list = NewsCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: defaultFormField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    NewsCubit.get(context).getSearch(value);
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Search Must Be Not Empty';
                    }
                    return null;
                  },
                  labelText: 'Search',
                  prefix: Icons.search,
                ),
              ),
              Expanded(
                  child: ListView.separated(
                separatorBuilder: (context, index) => myDivider(),
                itemBuilder: (context, index) =>
                    buildArticleItem(list[index], context),
                itemCount: list.length,
              )),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
