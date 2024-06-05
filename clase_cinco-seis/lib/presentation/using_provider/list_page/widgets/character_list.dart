import 'package:clase_cinco/domain/entity/character.dart';
import 'package:clase_cinco/presentation/using_provider/list_page/change_notifier/change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CharacterList extends StatefulWidget {
  const CharacterList({super.key});

  @override
  State<CharacterList> createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<CharacterChangeNotifier>(context, listen: false).fechNextPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    final characterNotifier = Provider.of<CharacterChangeNotifier>(context);
        final list = characterNotifier.characters;
    final status = characterNotifier.status;
    return (status == CharacterStatus.loaging || status == CharacterStatus.initial)?
    const LinearProgressIndicator() : ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index){
        Character character = list[index];
        return Text(character.name!);
      }
    );
  }
}