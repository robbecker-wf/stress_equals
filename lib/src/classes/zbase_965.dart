import 'zbase.dart';

class ZBase_965 extends ZBase {
  int _val;
  ZBase_965(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_965');
    return other is ZBase_965 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_965');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_965($_val)';

}
