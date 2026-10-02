import 'zbase.dart';

class ZBase_795 extends ZBase {
  int _val;
  ZBase_795(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_795');
    return other is ZBase_795 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_795');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_795($_val)';

}
