import 'zbase.dart';

class ZBase_785 extends ZBase {
  int _val;
  ZBase_785(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_785');
    return other is ZBase_785 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_785');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_785($_val)';

}
