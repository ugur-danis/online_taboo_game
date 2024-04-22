import 'package:flutter/material.dart';
import 'package:online_taboo_game/common/widgets/space_box.dart';

const List<int> roundTimes = [60, 90, 120];
const List<int> winPoints = [50, 100];

class LocaleGameView extends StatelessWidget {
  const LocaleGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locale Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              const _RoundTimeDropdownMenu(),
              SpaceBox(Space.l),
              const _WinPointDropdownMenu(),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Team 1 Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Team 2 Name',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WinPointDropdownMenu extends StatelessWidget {
  const _WinPointDropdownMenu();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: MediaQuery.of(context).size.width - 40,
      textStyle: const TextStyle(color: Colors.black),
      label: const Text('Win Point'),
      dropdownMenuEntries: List.generate(
        winPoints.length,
        (index) => DropdownMenuEntry(
          value: winPoints[index],
          label: winPoints[index].toString(),
        ),
      ),
    );
  }
}

class _RoundTimeDropdownMenu extends StatelessWidget {
  const _RoundTimeDropdownMenu();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: MediaQuery.of(context).size.width - 40,
      textStyle: const TextStyle(color: Colors.black),
      label: const Text('Time'),
      dropdownMenuEntries: List.generate(
        roundTimes.length,
        (index) => DropdownMenuEntry(
          value: roundTimes[index],
          label: '${roundTimes[index]} seconds',
        ),
      ),
    );
  }
}
