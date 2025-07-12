import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '© 2024 TradingMaster. Todos los derechos reservados.',
        style: TextStyle(color: Color(0xFF8CC7B1)),
      ),
    );
  }
}
