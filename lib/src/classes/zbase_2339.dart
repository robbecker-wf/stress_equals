import 'zbase.dart';

class ZBase_2339 extends ZBase {
  int _val;
  ZBase_2339(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2339');
    return other is ZBase_2339 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2339');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2339($_val)';

}
