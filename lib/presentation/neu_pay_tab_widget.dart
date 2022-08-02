import 'package:flutter/material.dart';

class NeuPayTabWidget extends StatelessWidget {
  const NeuPayTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _getRowChildren(),
    );
  }

  _getRowChildren() {
    return Column(
      children: [
        Image.network(
          'https://tatadigital-dev.adobecqms.net/content/dam/tcp/app-core/app-content/network-logos/vaultribbons/Scan&Pay.png'
          ,width: 52,height: 52,
        ),
        const Text('Scan pay',style: TextStyle(fontSize: 15,color: Colors.white),)
      ],
    );
  }
}
