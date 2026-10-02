import 'zbase.dart';

class ZBase_822 extends ZBase {
  int _val;
  ZBase_822(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_822');
    return other is ZBase_822 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_822');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_822($_val)';

}
