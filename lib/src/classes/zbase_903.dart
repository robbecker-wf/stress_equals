import 'zbase.dart';

class ZBase_903 extends ZBase {
  int _val;
  ZBase_903(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_903');
    return other is ZBase_903 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_903');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_903($_val)';

}
