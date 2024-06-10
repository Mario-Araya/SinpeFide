import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNumeroDestino widget.
  FocusNode? txtNumeroDestinoFocusNode;
  TextEditingController? txtNumeroDestinoTextController;
  String? Function(BuildContext, String?)?
      txtNumeroDestinoTextControllerValidator;
  String? _txtNumeroDestinoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe colocar un número de celular';
    }

    return null;
  }

  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoTextController;
  String? Function(BuildContext, String?)? txtMontoTextControllerValidator;
  String? _txtMontoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar el monto a transfeirr';
    }

    return null;
  }

  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  String? _txtDescripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar una descripción';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    txtNumeroDestinoTextControllerValidator =
        _txtNumeroDestinoTextControllerValidator;
    txtMontoTextControllerValidator = _txtMontoTextControllerValidator;
    txtDescripcionTextControllerValidator =
        _txtDescripcionTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNumeroDestinoFocusNode?.dispose();
    txtNumeroDestinoTextController?.dispose();

    txtMontoFocusNode?.dispose();
    txtMontoTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();
  }
}
