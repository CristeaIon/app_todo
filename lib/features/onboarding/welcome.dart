import 'package:app_todo/core/extensions/context.dart';
import 'package:flutter/material.dart';

import '../../core/l10n/generated/l10n.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              L.of(context).welcome,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Text(
                L.of(context).welcomeMessage,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    minimumSize: MaterialStatePropertyAll(
                      Size(context.width, 48),
                    ),
                  ),
              onPressed: () {},
              child: Text(
                L.of(context).login.toUpperCase(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 24),
            OutlinedButton(
              style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
                    minimumSize: MaterialStatePropertyAll(
                      Size(context.width, 48),
                    ),
                  ),
              onPressed: () {},
              child: Text(
                L.of(context).createAccount,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
