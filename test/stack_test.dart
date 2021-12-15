import 'package:flutter_stack/stack.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  group('Stack', (){

    test('Stack length should be zero', (){
      final sut = createStack();

      expect(sut.stackLength, 0);
    });



    test('Push an element onto stack, check the size is 1', (){
      final sut = createStack();

      sut.push(24);

      expect(sut.stackLength, 1);
    });



    test('Push two elements onto stack, check the size is 2 now', (){
      final sut = createStack();

      sut.push(18);
      sut.push(12);

      expect(sut.stackLength, 2);
    });


    test('Pop an element from the stack. Test that it matches the 2nd pushed value', (){
      final sut = createStack();

      sut.push(18);
      sut.push(12);

      expect(sut.pop(), 12);
    });

    test('Pop an element from the stack. Test that it matches the 1st pushed value.', (){
      final sut = createStack();

      sut.push(18);

      expect(sut.pop(), 18);
    });

    test('Should receive an ArrayIndexOutOfBounds exception.', (){
      final sut = createStack();

      expect(() => sut.pop(), throwsException);

    });

  });




}
Stack<int> createStack(){
  return Stack();
}