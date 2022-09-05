import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformacaoPage extends StatefulWidget {
  const InformacaoPage({Key? key}) : super(key: key);

  @override
  State<InformacaoPage> createState() => _InformacaoPageState();
}

class _InformacaoPageState extends State<InformacaoPage> {
  get rom => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: buildBody(),
    );
  }

  buildBody() {
    return Container(
      child: Column(
        children: [
          buildCardCafeHeader(),
          buildLineCardLocalizacao(),
          buildLineCardinstagram(),
          buildLineCardicelular(),
          buildLineCardiEmail(),
        ],
      ),
    );
  }

  buildCardCafeHeader() {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF8EFE9),
        image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/originals/55/57/43/555743eae8ab6f20333e5c55d0789713.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
      ),
      padding: EdgeInsets.all(140),
    );
  }

  buildLineCardLocalizacao() {
    return Container(
      margin: EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF8EFE9),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            padding: EdgeInsets.only(
              top: 15,
              bottom: 15,
              left: 2,
              right: 2,
            ),
          ),
          const Icon(
            Icons.pin_drop,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'COFFEE HOUSE',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                'R. São José, 95',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Aberto .',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    ' Fecha às 20:00',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildLineCardinstagram() {
    return Container(
      margin: EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF8EFE9),
      ),
      padding: EdgeInsets.all(18),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(
            right: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          padding: EdgeInsets.only(
            top: 15,
            bottom: 15,
            left: 2,
            right: 2,
          ),
        ),
        const Icon(
          Icons.chat_bubble,
          color: Colors.black,
          size: 20,
        ),
        const SizedBox(width: 25),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            '@COFFEE_HOUSE_',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ])
      ]),
    );
  }

  buildLineCardicelular() {
    return Container(
      margin: EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF8EFE9),
      ),
      padding: EdgeInsets.all(15),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(
            right: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          padding: EdgeInsets.only(
            top: 15,
            bottom: 15,
            left: 2,
            right: 2,
          ),
        ),
        const Icon(
          Icons.settings_phone,
          color: Colors.black,
          size: 20,
        ),
        const SizedBox(width: 25),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'INFORMAÇÕES PARA DELIVERY ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          Text(
            '(82) 3522-1010',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ])
      ]),
    );
  }

  buildLineCardiEmail() {
    return Container(
      margin: EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF8EFE9),
      ),
      padding: EdgeInsets.all(18),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(
            right: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          padding: EdgeInsets.only(
            top: 15,
            bottom: 15,
            left: 2,
            right: 2,
          ),
        ),
        const Icon(
          Icons.mark_as_unread,
          color: Colors.black,
          size: 20,
        ),
        const SizedBox(width: 25),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'COFFEEHOUSE@GMAIL.COM',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ])
      ]),
    );
  }
}
