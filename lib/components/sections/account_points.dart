import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(boxContent: _AccountPointsContent())
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text('Pontos totais:'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: ContentDivision(),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text('Objetivos:'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 4.0),
                child: ColorDot(color: Colors.pink),
              ),
              Text('Entrega grátis: 15000pts')
            ],
          ),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 4.0),
              child: ColorDot(color: Colors.blueAccent),
            ),
            Text('1 mês de streaming: 15000pts')
          ],
        )
      ],
    );
  }
}
