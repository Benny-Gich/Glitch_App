import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glitch_app/features/glitch_app/data/model/actor_model.dart';
import 'package:glitch_app/features/glitch_app/pages/actor_tile.dart';

class ActorTab extends StatelessWidget {
  final List<ActorModel> actorModel;

  const ActorTab({super.key, required this.actorModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: actorModel.length,
        itemBuilder: (BuildContext context, int index) {
          return ActorTile(actorModel: actorModel.elementAt(index));
        },
      ),
    );
  }
}
