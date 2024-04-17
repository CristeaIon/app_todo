import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/l10n/generated/l10n.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          L.of(context).profile,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CircleAvatar(radius: 85),
            ),
            SliverToBoxAdapter(
              child: Align(
                child: Text(
                  'Martha Hays',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      L.of(context).taskLeft(10),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      L.of(context).taskDone(5),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Text(L.of(context).settings),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: Text(L.of(context).appSettings),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(L.of(context).account),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                leading: const Icon(Icons.account_box_outlined),
                title: Text(L.of(context).changeAccountName),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                leading: const Icon(Icons.key),
                title: Text(L.of(context).changeAccountPass),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                leading: const Icon(Icons.photo),
                title: Text(L.of(context).changeAccountImg),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(L.of(context).title),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                leading: const Icon(Icons.workspaces_outline),
                title: Text(L.of(context).about),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                leading: const Icon(Icons.info_outline),
                title: Text(L.of(context).faq),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                leading: const Icon(Icons.electric_bolt),
                title: Text(L.of(context).helpFeedback),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                leading: const Icon(Icons.thumb_up_alt_outlined),
                title: Text(L.of(context).support),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: Text(L.of(context).logout),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
