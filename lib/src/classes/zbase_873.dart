import 'zbase.dart';

class ZBase_873 extends ZBase {
  int _val;
  ZBase_873(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_873');
    return other is ZBase_873 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_873');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_873($_val)';

}
