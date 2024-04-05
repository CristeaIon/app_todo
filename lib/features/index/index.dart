import 'package:app_todo/core/extensions/context.dart';
import 'package:app_todo/core/l10n/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          L.of(context).index,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list_sharp),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: CircleAvatar(),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              child: SizedBox(
            width: context.width,
          )),
          SvgPicture.asset('assets/images/checklist.svg'),
          Text(
            'What do you want to do today?',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            'Tap + to add your tasks',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
