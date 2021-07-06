import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

import 'home_logic.dart';

class HomePage extends GetView<HomeController> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent == scrollController.offset && controller.after != null) {
        controller.fetchBitbucketList(controller.after!);
      }
    });
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(child: controller.obx((res) {
          return GridView.count(
            controller: scrollController,
            childAspectRatio: 0.8,
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            padding: const EdgeInsets.all(8),
            children: List.generate(res?.length ?? 0, (index) {
              return Padding(
                  padding: EdgeInsets.all(0),
                  child: Card(
                      child: InkWell(
                    splashColor: Colors.lightBlue[100],
                    onTap: () => {Get.toNamed('/home/details', arguments: res?[index])},
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(8),
                            child: CachedNetworkImage(
                              fit: BoxFit.contain,
                              width: Get.width * 0.3,
                              height: Get.width * 0.3,
                              imageUrl: res?[index].owner?.links?.avatar?.href ?? "",
                              placeholder: (context, url) => Image.memory(kTransparentImage),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                            )),
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                children: [
                                  Spacer(),
                                  Text('${res?[index].name} (${res?[index].type})',
                                      style: Theme.of(context).textTheme.headline6, maxLines: 2, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis),
                                  Text(
                                    'created on: ${res?[index].createdOn != null ? DateFormat.yMd().add_jm().format(DateTime.parse(res![index].createdOn!)) : ""}',
                                    style: Theme.of(context).textTheme.subtitle1,
                                    textAlign: TextAlign.center,
                                  ),
                                  Spacer()
                                ],
                              )),
                        )
                      ],
                    ),
                  )));
            }),
          );
        })));
  }
}
