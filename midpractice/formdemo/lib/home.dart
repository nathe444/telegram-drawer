import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  final Order _order = Order();
  String? _validateItem(String value) {
    return value.isEmpty ? 'Item required' : null;
  }

  String? _validateQuantity(String value) {
    int? valueAsInt = value.isEmpty ? 0 : int.tryParse(value);
    return valueAsInt == 0 ? 'At least one item is required' : null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Item: ${_order.item} \nQuantity: ${_order.quantity}'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Validation')),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: _formStateKey,
              autovalidateMode: AutovalidateMode.onUnfocus,
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Coffee',
                        labelText: 'Item',
                      ),
                      validator: (value) => _validateItem(value!),
                      onSaved: (value) => _order.item = value!,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '2',
                        labelText: 'Quantity',
                      ),
                      validator: (value) => _validateQuantity(value!),
                      onSaved:
                          (value) => _order.quantity = int.tryParse(value!)!,
                    ),
                    Divider(color: Colors.black, height: 60.0),
                    ElevatedButton(
                      onPressed: () => _submitOrder(),
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Order {
  late String item;
  late int quantity;
}
