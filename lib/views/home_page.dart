import 'package:flutter/material.dart';
import 'package:flutter_app_experiment/utils/helper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: CalculatorPanel(),
      ),
    );
  }
}

class CalculatorPanel extends StatefulWidget {
  @override
  _CalculatorPanelState createState() {
    return _CalculatorPanelState();
  }
}

class _CalculatorPanelState extends State<CalculatorPanel> {
  final _textController = TextEditingController();
  var isResultPresented = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
            alignment: Alignment.bottomCenter,
            child: TextField(
              readOnly: true,
              showCursor: true,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              ),
              controller: _textController,
            ),
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: TextButton(
                    child: Text(
                      '7',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '7';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '7' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(
                      '8',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '8';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '8' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(
                      '9',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '9';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '9' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text('÷'),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '÷';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '÷' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Icon(Icons.backspace),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      } else if (_textController != null &&
                          _textController.text.length > 0) {
                        var selectStart = _textController.selection.start;
                        var selectEnd = _textController.selection.end;
                        var currentText = _textController.text;
                        if (selectStart == 0 && selectEnd == 0) {
                          // Cursor at the leftmost
                          return;
                        } else if (selectEnd == -1 ||
                            (selectEnd == currentText.length &&
                                selectStart == selectEnd)) {
                          // Cursor at the rightmost
                          _textController.text = _textController.text.substring(
                            0,
                            _textController.text.length - 1,
                          );
                        } else if (selectStart == selectEnd) {
                          // Cursor at the middle
                          _textController.text = currentText.substring(
                                0,
                                selectStart - 1,
                              ) +
                              currentText.substring(
                                selectEnd,
                                currentText.length,
                              );
                          _textController.selection =
                              TextSelection.fromPosition(
                            TextPosition(
                              offset: selectStart - 1,
                            ),
                          );
                        } else {
                          // range of text is selected
                          _textController.text = currentText.substring(
                                0,
                                selectStart,
                              ) +
                              currentText.substring(
                                selectEnd,
                                currentText.length,
                              );
                          _textController.selection =
                              TextSelection.fromPosition(
                            TextPosition(
                              offset: selectStart,
                            ),
                          );
                        }
                      }
                    },
                    onLongPress: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                      }
                      _textController.text = '';
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: TextButton(
                    child: Text(
                      '4',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '4';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '4' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '5';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '5' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(
                      '6',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '6';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '6' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text('×'),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '×';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '×' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(''),
                    onPressed: null,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: TextButton(
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '1';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '1' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '2';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '2' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '3';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '3' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text('-'),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '-';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '-' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(''),
                    onPressed: null,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: TextButton(
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '0';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '0' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(
                      '.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      if (!_textController.text.contains('.')) {
                        if (_textController.text.trim() == '') {
                          _textController.text += '0.';
                        } else {
                          var selectStart = _textController.selection.start;
                          var selectEnd = _textController.selection.end;
                          var currentText = _textController.text;
                          if (_textController.selection.end == -1) {
                            _textController.text += '.';
                          } else {
                            _textController.text = currentText.substring(
                                  0,
                                  selectStart,
                                ) +
                                '.' +
                                currentText.substring(
                                  selectEnd,
                                  currentText.length,
                                );
                            _textController.selection =
                                TextSelection.fromPosition(
                              TextPosition(
                                offset: selectStart + 1,
                              ),
                            );
                          }
                        }
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(''),
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text('+'),
                    onPressed: () {
                      if (isResultPresented) {
                        isResultPresented = false;
                        _textController.text = '';
                      }
                      var selectStart = _textController.selection.start;
                      var selectEnd = _textController.selection.end;
                      var currentText = _textController.text;
                      if (_textController.selection.end == -1) {
                        _textController.text += '+';
                      } else {
                        _textController.text = currentText.substring(
                              0,
                              selectStart,
                            ) +
                            '+' +
                            currentText.substring(
                              selectEnd,
                              currentText.length,
                            );
                        _textController.selection = TextSelection.fromPosition(
                          TextPosition(
                            offset: selectStart + 1,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text('='),
                    onPressed: () {
                      isResultPresented = true;
                      _textController.text =
                          convertExpressionToResult(_textController.text)
                              .toString();
                    },
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
