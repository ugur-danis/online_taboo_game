import 'package:flutter/material.dart';
import 'package:online_taboo_game/common/widgets/buttons/default_button.dart';
import 'package:online_taboo_game/common/widgets/space_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Column buildMenuTitle() {
    return const Column(
      children: [
        _MenuTitle('Online Taboo'),
        _MenuTitle('Game'),
      ],
    );
  }

  Center buildMenuButtonListView() {
    return const Center(
      child: _MenuList(),
    );
  }

  SizedBox buildBuildVersionText(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(right: 15, bottom: 10),
        child: _BuildVersionText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildMenuTitle(),
            buildMenuButtonListView(),
            buildBuildVersionText(context),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends AppBar {
  IconButton _buildLanguageButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.language_outlined,
        size: 36,
      ),
    );
  }

  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        _buildLanguageButton(),
      ],
    );
  }
}

class _BuildVersionText extends StatelessWidget {
  const _BuildVersionText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'v1.0.0',
      textAlign: TextAlign.end,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .displaySmall
          ?.copyWith(color: Colors.black),
    );
  }
}

class _MenuList extends StatelessWidget {
  const _MenuList();

  SizedBox buildMenuButton(String text, [VoidCallback? onPressed]) {
    return SizedBox(
      height: 60,
      child: DefaultButton(text, onPressed: onPressed),
    );
  }

  @override
  Widget build(BuildContext context) {
    void navTo(String routeName) {
      Navigator.of(context).pushNamed('/$routeName');
    }

    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(40),
      children: [
        buildMenuButton('Locale Game', () => navTo('create_lobby')),
        SpaceBox(Space.xl),
        buildMenuButton('Create Lobby', () => navTo('create_lobby')),
        SpaceBox(Space.xl),
        buildMenuButton('Join Lobby', () => navTo('join_lobby')),
        SpaceBox(Space.xl),
        buildMenuButton('Settings', () => navTo('settings')),
        SpaceBox(Space.xl),
        buildMenuButton('About', () => navTo('about')),
      ],
    );
  }
}
