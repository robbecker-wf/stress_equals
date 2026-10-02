import 'zbase.dart';

class ZBase_723 extends ZBase {
  int _val;
  ZBase_723(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_723');
    return other is ZBase_723 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_723');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_723($_val)';

}
