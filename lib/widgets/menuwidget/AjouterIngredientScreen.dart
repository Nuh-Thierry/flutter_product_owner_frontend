import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stage_project/widgets/custombuttom.dart';
import 'package:stage_project/widgets/menuwidget/choisirsupplment.dart';
import 'package:stage_project/widgets/menuwidget/choisirtaile.dart';
import 'package:stage_project/widgets/profileScreenWidgets/textfield.dart';
import 'package:stage_project/widgets/text/text3.dart';
import 'package:stage_project/widgets/text/text4.dart';

import '../../controller/imagepicker.dart';

class AjouterIngredientScreen extends StatefulWidget {
  const AjouterIngredientScreen({super.key});

  @override
  State<AjouterIngredientScreen> createState() =>
      _AjouterIngredientScreenState();
}

class _AjouterIngredientScreenState extends State<AjouterIngredientScreen> {
  final TextEditingController _normalController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _moyenneController = TextEditingController();
  final TextEditingController _grandController = TextEditingController();
  final TextEditingController _ingredientController = TextEditingController();

  String? selectedCategory;
  List<String> categories = ['Pizza', 'Thon', 'Salami'];
  String? selectedSousCategory;
  List<String> Souscategories = ['Pizza', 'Thon', 'Salami'];

  File? _selectedImage;
  List<String> addedIngredients = [];
  bool _isButtonEnabled = false;
  bool _normalChecked = false;
  bool _moyenneChecked = false;
  bool _grandChecked = false;

  bool _salamiChecked = false;
  bool _escalopeChecked = false;
  bool _chawarmaChecked = false;
  bool _kabebChecked = false;
  bool _thonChecked = false;
  bool _merguezChecked = false;

  @override
  void initState() {
    super.initState();
    _normalController.addListener(_validateFields);
    _nameController.addListener(_validateFields);
    _moyenneController.addListener(_validateFields);
    _grandController.addListener(_validateFields);
  }

  void _validateFields() {
    setState(() {
      bool isAnySupplementChecked = _salamiChecked ||
          _escalopeChecked ||
          _chawarmaChecked ||
          _kabebChecked ||
          _thonChecked ||
          _merguezChecked;

      bool isAnyCheckboxChecked =
          _normalChecked || _moyenneChecked || _grandChecked;

      bool isAnyFieldFilled = _normalController.text.isNotEmpty ||
          _moyenneController.text.isNotEmpty ||
          _grandController.text.isNotEmpty;

      bool isCategorySelected = selectedCategory != null;
      bool isSousCategorySelected = selectedSousCategory != null;

      _isButtonEnabled = _nameController.text.isNotEmpty &&
          isAnyCheckboxChecked &&
          isAnySupplementChecked &&
          isAnyFieldFilled &&
          isCategorySelected &&
          isSousCategorySelected;
    });
  }

  @override
  void dispose() {
    _ingredientController.dispose();
    _nameController.dispose();
    _moyenneController.dispose();
    _normalController.dispose();
    _grandController.dispose();
    super.dispose();
  }

  void addIngredient() {
    String ingredientText = _ingredientController.text.trim();
    if (ingredientText.isNotEmpty) {
      setState(() {
        addedIngredients.add(ingredientText);
        _ingredientController.clear();
      });
    }
  }

  void removeIngredient(String ingredient) {
    setState(() {
      addedIngredients.remove(ingredient);
    });
  }

  Future<void> _pickImage() async {
    File? pickedImage = await ImagePickerHelper.pickImageFromGallery();

    if (pickedImage != null) {
      setState(() {
        _selectedImage = pickedImage;
      });
    }
  }

  Future<void> _takePhoto() async {
    File? takenImage = await ImagePickerHelper.takePhotoWithCamera();

    if (takenImage != null) {
      setState(() {
        _selectedImage = takenImage;
      });
    }
  }

  void _clearSelectedImage() {
    setState(() {
      _selectedImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text3(
          text: 'Ajouter prodiut',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text4(
                text: 'Nom du produit',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _nameController,
                placeholder: 'Nom du prodiut',
              ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Catégories',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 62,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFE4E7EB),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    itemHeight: 50,
                    isExpanded: false,
                    value: selectedCategory,
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1f2933),
                        ),
                      ),
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        selectedCategory = newValue;
                        _validateFields();
                      });
                    },
                    items: categories.map((category) {
                      return DropdownMenuItem<String>(
                        value: category,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            category,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1f2933),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Sous Catégorie',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 62,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFE4E7EB),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedSousCategory,
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sous Category',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1f2933),
                        ),
                      ),
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        selectedSousCategory = newValue;
                        _validateFields();
                      });
                    },
                    items: Souscategories.map((category) {
                      return DropdownMenuItem<String>(
                        value: category,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            category,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1f2933),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text4(text: 'Options de taille'),
              SizedBox(
                height: 20,
              ),
              ChoisirTaile(
                controller: _normalController,
                text: 'Normal',
                onChanged: (isChecked) {
                  setState(() {
                    _normalChecked = isChecked;
                  });
                  _validateFields();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ChoisirTaile(
                controller: _moyenneController,
                text: 'Moyenne',
                onChanged: (isChecked) {
                  setState(() {
                    _moyenneChecked = isChecked;
                  });
                  _validateFields();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ChoisirTaile(
                controller: _grandController,
                text: 'Grande',
                onChanged: (isChecked) {
                  setState(() {
                    _grandChecked = isChecked;
                  });
                  _validateFields();
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Ajouter un photo',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 64,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF0F2F4),
                  border: Border.all(
                    color: Color(0xFFF0F2F4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: _pickImage,
                      child: Image.asset(
                        'assets/images/gallery-add.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'ajouter à partir de la galerie',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF121826),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: _takePhoto,
                      child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset(
                            'assets/images/camera1.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              if (_selectedImage != null)
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 156,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.file(
                        _selectedImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: GestureDetector(
                        onTap: _clearSelectedImage,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.clear),
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Ajouter des ingrédients',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _ingredientController,
                placeholder: 'Ingredient',
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 81,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(
                        0xfffeefea,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: addIngredient,
                      child: Center(
                        child: Text(
                          'Ajouter',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(
                              0xfff26129,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (int index = 0; index < addedIngredients.length; index++)
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xfffeefea),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                                horizontal: 12,
                              ),
                              child: Text(
                                addedIngredients[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff26129),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () =>
                                  removeIngredient(addedIngredients[index]),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xfff26129),
                                ),
                                child: Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Choisir des supplements pour ce produit',
              ),
              SizedBox(
                height: 20,
              ),
              ChoisirSupplement(
                text: 'Salami',
                prix: '1.500 dt',
                onChanged: (isChecked) {
                  setState(() {
                    _salamiChecked = isChecked;
                  });
                  _validateFields();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ChoisirSupplement(
                text: 'Escalope',
                prix: '1.500 dt',
                onChanged: (isChecked) {
                  setState(() {
                    _escalopeChecked = isChecked;
                  });
                  _validateFields();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ChoisirSupplement(
                text: 'Chawarma',
                prix: '1.500 dt',
                onChanged: (isChecked) {
                  setState(() {
                    _chawarmaChecked = isChecked;
                  });
                  _validateFields();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ChoisirSupplement(
                text: 'Kabeb',
                prix: '1.500 dt',
                onChanged: (isChecked) {
                  setState(() {
                    _kabebChecked = isChecked;
                  });
                  _validateFields();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ChoisirSupplement(
                text: 'Thon',
                prix: '1.500 dt',
                onChanged: (isChecked) {
                  setState(() {
                    _thonChecked = isChecked;
                  });
                  _validateFields();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ChoisirSupplement(
                text: 'Merguez',
                prix: '1.500 dt',
                onChanged: (isChecked) {
                  setState(() {
                    _merguezChecked = isChecked;
                  });
                  _validateFields();
                },
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                placeHolder: 'Enregistrer',
                onPressed: _isButtonEnabled
                    ? () {
                        // _showInfoDialog(context);
                      }
                    : null,
                isEnabled: _isButtonEnabled,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
