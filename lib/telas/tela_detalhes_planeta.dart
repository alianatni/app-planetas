import 'package:flutter/material.dart';
import '../modelos/planeta.dart';

class TelaDetalhesPlaneta extends StatelessWidget {
  final Planeta planeta;

  const TelaDetalhesPlaneta({super.key, required this.planeta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detalhes de ${planeta.nome}'),
        elevation: 3,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${planeta.nome}', style: const TextStyle(fontSize: 17)),
            Text('Tamanho: ${planeta.tamanho} km', style: const TextStyle(fontSize: 17)),
            Text('Distância do Sol: ${planeta.distancia} Unidades Astronômicas', style: const TextStyle(fontSize: 17)),
            if (planeta.apelido != null)
              Text('Apelido: ${planeta.apelido}', style: const TextStyle(fontSize: 17))
          ],
        ),
      ),
    );
  }
}