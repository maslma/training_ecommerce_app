import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:ecommerce/features/bottomnavbar/presentaion/data/models/prodect_model.dart';
import 'package:ecommerce/features/home/presentaion/view/widget/header_list_widget.dart';
import 'package:ecommerce/features/home/presentaion/view/widget/image_widget.dart';
import 'package:ecommerce/features/home/presentaion/view/widget/list_itme_home.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWidget(),
          37.verticalSizedBox,
          HeaderListWidget(title: 'Sale', description: 'Super summer sale'),
          22.verticalSizedBox,
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: prodectModelList
                  .map(
                    (e) => ListItmeHome(prodectModel: e).horizontalPadding(15),
                  )
                  .toList(),
            ),
          ),
          40.verticalSizedBox,
          HeaderListWidget(
            title: 'New',
            description: 'You’ve never seen it before!',
          ),
          22.verticalSizedBox,
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: prodectModelList
                  .map(
                    (e) => ListItmeHome(prodectModel: e).horizontalPadding(15),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
