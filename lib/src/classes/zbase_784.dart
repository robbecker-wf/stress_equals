import 'zbase.dart';

class ZBase_784 extends ZBase {
  int _val;
  ZBase_784(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_784');
    return other is ZBase_784 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_784');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_784($_val)';

}
