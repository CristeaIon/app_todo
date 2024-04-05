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
    );
  }
}
