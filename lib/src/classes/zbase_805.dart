import 'zbase.dart';

class ZBase_805 extends ZBase {
  int _val;
  ZBase_805(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_805');
    return other is ZBase_805 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_805');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_805($_val)';

}
