import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:onnxruntime/onnxruntime.dart';

class GrammarAiService {
  OrtSession? _ortSession;

  Future<void> initModel() async {
    try {
      final bundle = await rootBundle.load("");
      final sessionOption = OrtSessionOptions();
      final bytes = bundle.buffer.asUint8List();
      _ortSession = OrtSession.fromBuffer(bytes, sessionOption);
    } catch (e) {
      log("Grammer ai service $e");
    }
  }

  Function<String> grammerText (String text)async{
    try {
      if(_ortSession == null){
        log("Grammer ai service model is not initialized");
        return;
        
      }
      final tokens = _tokenize(text);

      final inputTensor = OrtValueTensor.createTensorWithDataList(tokens,[tokens.length]);

      final inputIds = {"input_ids" : inputTensor};
    } catch (e) {
      
    }
  }

  List<int>_tokenize (String text){
    final token = text.codeUnits;
    return token;
  }
}
