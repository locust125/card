import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

class _formularioState extends State<formulario> {
  var cardMask = MaskTextInputFormatter(
      mask: '#### #### #### ####', filter: {"#": RegExp(r'[0-9]')});

  var cardDate =
      MaskTextInputFormatter(mask: '##/##', filter: {"#": RegExp(r'[0-9]')});

  var cardCvv =
      MaskTextInputFormatter(mask: '###', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: 200,
              maxHeight: 200,
            ),
            child: Image.network(
              "https://cdn-icons-png.flaticon.com/512/118/118111.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _inputName(),
          SizedBox(
            height: 15,
          ),
          _inputCard(),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: _inputdate()),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: _inputcode(),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width - 30,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Pay"),
            ),
          ),
        ],
      ),
    );
  }

  Container _inputName() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
                hintText: "Name and Lastname", border: InputBorder.none)));
  }

  Container _inputCard() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
            inputFormatters: [cardMask],
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
                hintText: "Account Number", border: InputBorder.none)));
  }

  Container _inputdate() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
            inputFormatters: [cardDate],
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
                hintText: "Due Date", border: InputBorder.none)));
  }

  Container _inputcode() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
            inputFormatters: [cardCvv],
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20),
            decoration:
                InputDecoration(hintText: "CVV", border: InputBorder.none)));
  }
}
