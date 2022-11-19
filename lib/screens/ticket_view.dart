import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/styles/app_layout.dart';
import 'package:flutter_app/styles/app_style.dart';
import 'package:flutter_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF526799),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                    ThickContainer(),
                    Expanded(child: SizedBox(
                      height: 24,
                      child: LayoutBuilder(

                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(5, (index) => Text("-"),),
                          );
                        },

                      ),
                    )),
                    Transform.rotate(angle: 1.5,child: Icon(Icons.airplanemode_active,color: Colors.white,),),
                    ThickContainer(),
                      const Spacer(),
                      Text(
                        "NYC",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
