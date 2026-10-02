import 'zbase.dart';

class ZBase_2587 extends ZBase {
  int _val;
  ZBase_2587(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2587');
    return other is ZBase_2587 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2587');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2587($_val)';

}
