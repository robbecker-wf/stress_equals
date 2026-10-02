import 'zbase.dart';

class ZBase_3577 extends ZBase {
  int _val;
  ZBase_3577(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3577');
    return other is ZBase_3577 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3577');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3577($_val)';

}
