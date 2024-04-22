import 'package:flutter/material.dart';
import 'package:online_taboo_game/common/widgets/space_box.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _EditProfileCard(),
              SpaceBox(Space.xl),
              const _ElevatedPlayButton(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const _TitleText(),
    );
  }
}

class _ElevatedPlayButton extends StatelessWidget {
  const _ElevatedPlayButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('/home');
        },
        child: const Text('Play'),
      ),
    );
  }
}

class _EditProfileCard extends StatelessWidget {
  const _EditProfileCard();

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              height: 90,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -110,
                    child: _UserCircleAvatar(),
                  ),
                  Positioned(
                    width: 60,
                    height: 60,
                    right: 60,
                    bottom: 40,
                    child: _ChangeUserAvatarButton(),
                  ),
                ],
              ),
            ),
            _Form(),
          ],
        ),
      ),
    );
  }
}

class _ChangeUserAvatarButton extends StatelessWidget {
  const _ChangeUserAvatarButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.edit_outlined),
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUsernameInput(),
        ],
      ),
    );
  }

  TextFormField buildUsernameInput() {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Username',
        prefixIcon: Icon(Icons.person_outline_outlined),
        border: OutlineInputBorder(),
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Taboo Game',
      style: Theme.of(context)
          .textTheme
          .headlineLarge
          ?.copyWith(color: Colors.black),
    );
  }
}

class _UserCircleAvatar extends StatelessWidget {
  const _UserCircleAvatar();

  @override
  Widget build(BuildContext context) {
    const profileImgUrl =
        'https://images.unsplash.com/photo-1628563694622-5a76957fd09c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5zdGFncmFtJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D';

    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: CircleAvatar(
          radius: 80,
          backgroundImage: Image.network(profileImgUrl).image,
        ),
      ),
    );
  }
}
