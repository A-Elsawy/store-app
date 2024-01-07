import 'package:flutter/material.dart';

class UpdateProductPage extends StatelessWidget {
  static const String routeName = 'Update-Product';
  const UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
      ),
    );
  }
}
