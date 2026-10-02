import 'zbase.dart';

class ZBase_423 extends ZBase {
  int _val;
  ZBase_423(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_423');
    return other is ZBase_423 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_423');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_423($_val)';

}
