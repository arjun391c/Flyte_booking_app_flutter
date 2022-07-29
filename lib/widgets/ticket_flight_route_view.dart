import 'package:flutter/material.dart';

class TicketFlightRoute extends StatelessWidget {
  const TicketFlightRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2.5, color: Colors.white)),
        ),
        Expanded(
            child: Stack(children: [
          SizedBox(
            height: 24,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                      (constraints.constrainWidth() / 6).floor(),
                      (index) => const SizedBox(
                            width: 3,
                            height: 1,
                            child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white)),
                          )),
                );
              },
            ),
          ),
          Center(
            child: Transform.rotate(
              angle: 1.5,
              child: const Icon(
                Icons.local_airport_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ])),
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2.5, color: Colors.white)),
        ),
      ],
    );
  }
}
