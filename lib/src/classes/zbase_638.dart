import 'zbase.dart';

class ZBase_638 extends ZBase {
  int _val;
  ZBase_638(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_638');
    return other is ZBase_638 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_638');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_638($_val)';

}
