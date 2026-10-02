import 'zbase.dart';

class ZBase_952 extends ZBase {
  int _val;
  ZBase_952(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_952');
    return other is ZBase_952 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_952');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_952($_val)';

}
