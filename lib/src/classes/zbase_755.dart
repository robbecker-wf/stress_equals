import 'zbase.dart';

class ZBase_755 extends ZBase {
  int _val;
  ZBase_755(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_755');
    return other is ZBase_755 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_755');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_755($_val)';

}
