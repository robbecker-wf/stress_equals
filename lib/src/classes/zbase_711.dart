import 'zbase.dart';

class ZBase_711 extends ZBase {
  int _val;
  ZBase_711(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_711');
    return other is ZBase_711 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_711');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_711($_val)';

}
