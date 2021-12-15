import 'dart:collection';

class Stack<T> {
  final _stack = Queue<T>();

  void push(T element) {
    _stack.addLast(element);
  }

  T pop() {
    if(_stack.isEmpty){
      throw Exception('ArrayIndexOutOfBounds Exception');
    }else{
      final T lastElement = _stack.last;
      _stack.removeLast();
      return lastElement;
    }

  }

  void clear() {
    _stack.clear();
  }

  bool get isEmpty => _stack.isEmpty;

  int get stackLength => _stack.length;

}
