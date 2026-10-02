import 'zbase.dart';

class ZBase_219 extends ZBase {
  int _val;
  ZBase_219(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_219');
    return other is ZBase_219 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_219');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_219($_val)';

}
