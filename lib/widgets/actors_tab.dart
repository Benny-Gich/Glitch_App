import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActorsTab extends StatelessWidget {
  ActorsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width / 3,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Row(
            children: [
              ListTile(
                leading: SizedBox(
                  height: 60,
                  child: Image.asset(
                    'assets/marcus-holloway-5120x2880-watch-dogs-2-5k-862.JPG',
                  ),
                ),
                title: Text('Sam Wikie'),
                subtitle: Text('Black Panther'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
