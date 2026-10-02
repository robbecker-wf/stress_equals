import 'zbase.dart';

class ZBase_227 extends ZBase {
  int _val;
  ZBase_227(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_227');
    return other is ZBase_227 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_227');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_227($_val)';

}
