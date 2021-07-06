import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detail_logic.dart';

class DetailPage extends StatelessWidget {
  // final DetailLogic controller = Get.find();
  Widget text(String label, String? text) {
    return Text('$label: ${text ?? ""}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(title: GetBuilder<DetailLogic>(builder: (controller) {
          return Text(controller.details!.name!);
        })),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(8),
              child: GetBuilder<DetailLogic>(
                builder: (controller) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text("Owner", controller.details?.owner?.displayName),
                      text("Website", controller.details?.website),
                      text("Created On", controller.details?.createdOn),
                      text("Description", controller.details?.description),
                      text("Fork Policy", controller.details?.forkPolicy),
                      text("Full Name", controller.details?.fullName),
                      text("Has issues", controller.details?.hasIssues.toString()),
                      text("Is Private", controller.details?.isPrivate.toString()),
                      text("Language", controller.details?.language),
                      text("Main Branch", controller.details?.owner?.displayName),
                      text("Project", controller.details?.project?.name),
                      text("Scm", controller.details?.scm),
                      text("Size", controller.details?.size.toString()),
                      text("Slug", controller.details?.slug),
                      text("Type", controller.details?.type),
                      text("Updated On", controller.details?.updatedOn),
                      text("UUID", controller.details?.uuid),
                      text("Workspace", controller.details?.workspace?.name),
                    ],
                  );
                },
              )),
        ));
  }
}
