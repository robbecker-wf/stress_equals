import 'zbase.dart';

class ZBase_690 extends ZBase {
  int _val;
  ZBase_690(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_690');
    return other is ZBase_690 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_690');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_690($_val)';

}
