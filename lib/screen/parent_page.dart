import 'package:flutter/material.dart';
import 'package:tyfa/widgets/custom_action_bar.dart';
import 'package:tyfa/widgets/custom_input.dart';
class ParentPage extends StatefulWidget {
  @override
  _ParentPageState createState() => _ParentPageState();
}

class _ParentPageState extends State<ParentPage> {
  TextEditingController _incidence = TextEditingController();
  TextEditingController _location = TextEditingController();

  String _reportIncidence= "";
  String _reportLocation = "";
  // Focus Node for input fields
  FocusNode _incidenceFocusNode;

  @override
  void initState() {
    _incidenceFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _incidenceFocusNode.dispose();
    super.dispose();
  }
  var _category = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomActionBar(
            title: "Report",
            hasBackArrow: false,
          ),
          CustomInput(
            hintText: "*Select incidence",
            onChanged: (value) {
              _reportIncidence = value;
            },
            onSubmitted: (value) {
              _incidenceFocusNode.requestFocus();
            },
            textInputAction: TextInputAction.next,
          ),
          CustomInput(),

      ],
      )
    );
  }
}
