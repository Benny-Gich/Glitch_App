import 'package:flutter/material.dart';
import 'package:glitch_app/features/glitch_app/data/model/actor_model.dart';

class ActorTile extends StatelessWidget {
  final ActorModel actorModel;
  const ActorTile({super.key, required this.actorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 200, child: Image.asset(actorModel.actorImage)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  actorModel.actorName,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  actorModel.alsoFeatured,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    //color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
