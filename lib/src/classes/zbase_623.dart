import 'zbase.dart';

class ZBase_623 extends ZBase {
  int _val;
  ZBase_623(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_623');
    return other is ZBase_623 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_623');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_623($_val)';

}
