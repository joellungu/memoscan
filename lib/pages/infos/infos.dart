import 'dart:ui';

import 'package:flutter/material.dart';

class Infos extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    //
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 70,
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            children: [
              Text(
                  """Deserunt velit do pariatur qui esse occaecat qui officia veniam commodo aliqua. Dolor et laborum irure et excepteur proident. Duis labore ea consequat aliqua anim. Nisi ad aliqua ullamco amet amet enim. Proident proident magna anim quis voluptate mollit nisi enim et dolor nisi sunt dolor adipisicing. Amet fugiat minim officia ea Lorem cillum. Eiusmod ex enim ea exercitation ex aute labore officia.

Eiusmod dolore qui do adipisicing. Quis mollit laborum proident sunt ipsum minim et. Laboris eu cillum ut ullamco sint.

Ea incididunt elit occaecat id dolore excepteur adipisicing. Ut consectetur officia sint velit amet amet excepteur dolor amet amet Lorem. Laboris non commodo esse voluptate commodo excepteur eu nulla sit.

Dolor excepteur mollit et qui pariatur aliqua. Est qui nisi veniam minim aliquip incididunt duis pariatur anim officia proident tempor cillum tempor. Ex mollit excepteur cupidatat enim quis sit mollit Lorem reprehenderit id. Anim qui nulla in tempor tempor mollit reprehenderit eiusmod tempor. Exercitation nulla consequat cillum ea nulla deserunt.

Dolore nisi ea est deserunt. Eu aliquip irure voluptate adipisicing exercitation cupidatat ipsum amet excepteur occaecat Lorem. Mollit nostrud irure esse dolore voluptate et et fugiat dolor commodo minim. Tempor non ut amet ut culpa sit labore exercitation ipsum esse qui do do laborum. Nisi sunt laborum nisi sint id. Incididunt ad labore adipisicing pariatur pariatur laboris sint.

Nostrud dolore dolore anim laborum minim minim laboris ad irure cillum reprehenderit ullamco. Nisi do anim elit sint nostrud quis velit incididunt magna aliquip. Officia adipisicing ipsum elit id ipsum aliqua officia do qui.

Duis commodo cillum et consequat incididunt. Commodo et sint laboris consectetur excepteur laboris. Minim excepteur et proident proident laboris consectetur nulla et ipsum elit dolor ea culpa. Consequat sit irure anim do enim cillum excepteur. Qui minim sunt cillum aute excepteur labore dolore ex culpa magna do consequat. Quis non eiusmod aliqua sint nulla mollit laboris Lorem anim dolore et sit.""")
            ],
          ),
        )
      ],
    );
  }
  //
}
