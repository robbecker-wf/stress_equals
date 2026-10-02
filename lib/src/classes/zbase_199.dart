import 'zbase.dart';

class ZBase_199 extends ZBase {
  int _val;
  ZBase_199(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_199');
    return other is ZBase_199 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_199');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_199($_val)';

}
