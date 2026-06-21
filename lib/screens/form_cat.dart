import "package:flutter/material.dart";
import "package:whicle_app/models/categories.dart";
import "package:whicle_app/widgets/snackBar.dart";
import "../dummy_data.dart";

class CategoryForm extends StatefulWidget {
  const CategoryForm({super.key});

  @override
  State<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends State<CategoryForm> {
  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _brandController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Color _colorController = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Category")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(labelText: "Category ID"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter category ID";
                  }
                  if (DummyCategories.any((cat) => cat.id == value)) {
                    return 'This ID is already selected !!';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _idController.text = value ?? '';
                  });
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: "Category Name"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter category Name";
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _nameController.text = value ?? '';
                  });
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: _brandController,
                decoration: InputDecoration(labelText: "Category Brand"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter category Brand";
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _brandController.text = value ?? '';
                  });
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(labelText: "Category Color"),
                validator: (value) {
                  if (value == null ||
                      value.trim().isEmpty ||
                      !RegExp(
                        r'^#?([0-9A-Fa-f]{6}|[0-9A-Fa-f]{8})$',
                      ).hasMatch(value)) {
                    return "Please enter category Color";
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    final v = (value ?? '').replaceFirst('#', '');
                    var hex = v;
                    if (hex.length == 6) hex = 'FF$hex';
                    _colorController = Color(int.parse(hex, radix: 16));
                  });
                },
              ),
              SizedBox(height: 15),
              ElevatedButton(
                child: Text("Create"),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState!.save();
                    DummyCategories.add(
                      Category(
                        id: _idController.text,
                        name: _nameController.text,
                        color: _colorController,
                        brand: _brandController.text,
                      ),
                    );
                    GlassSnackbar.show(
                      context,
                      message: "You liked this product",
                      icon: Icons.favorite,
                    );
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
