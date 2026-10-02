import 'zbase.dart';

class ZBase_961 extends ZBase {
  int _val;
  ZBase_961(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_961');
    return other is ZBase_961 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_961');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_961($_val)';

}
