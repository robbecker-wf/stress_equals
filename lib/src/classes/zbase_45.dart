import 'zbase.dart';

class ZBase_45 extends ZBase {
  int _val;
  ZBase_45(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_45');
    return other is ZBase_45 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_45');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_45($_val)';

}
