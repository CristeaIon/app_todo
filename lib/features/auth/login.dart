import 'package:app_todo/core/extensions/context.dart';
import 'package:app_todo/core/l10n/generated/l10n.dart';
import 'package:app_todo/core/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                L.of(context).login,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: context.height * .05)),
            SliverToBoxAdapter(
              child: Text(
                L.of(context).username,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SliverToBoxAdapter(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromRGBO(97, 97, 97, .3),
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: context.height * .03)),
            SliverToBoxAdapter(
              child: Text(
                L.of(context).password,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SliverToBoxAdapter(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromRGBO(97, 97, 97, .3),
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: context.height * .08)),
            SliverToBoxAdapter(
              child: ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      fixedSize: MaterialStatePropertyAll(Size(context.width, 48)),
                    ),
                onPressed: () {},
                child: Text(
                  L.of(context).login,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: context.height * .04)),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  const Flexible(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      L.of(context).or,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const Flexible(child: Divider()),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: context.height * .03)),
            SliverToBoxAdapter(
              child: OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/google.svg'),
                    const SizedBox(width: 10),
                    Text(
                      L.of(context).google(L.of(context).login),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: context.height * .01)),
            SliverToBoxAdapter(
              child: OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/apple.svg'),
                    const SizedBox(width: 10),
                    Text(
                      L.of(context).apple(L.of(context).login),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: context.height * .05)),
            SliverToBoxAdapter(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: L.of(context).dontHaveAccount,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color.fromRGBO(97, 97, 97, .5),
                      ),
                  children: [
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: L.of(context).register,
                      style: Theme.of(context).textTheme.bodyMedium,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          AutoRouter.of(context).push(const CreateAccountRoute());
                        },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
