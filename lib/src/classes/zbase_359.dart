import 'zbase.dart';

class ZBase_359 extends ZBase {
  int _val;
  ZBase_359(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_359');
    return other is ZBase_359 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_359');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_359($_val)';

}
