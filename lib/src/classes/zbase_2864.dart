import 'zbase.dart';

class ZBase_2864 extends ZBase {
  int _val;
  ZBase_2864(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2864');
    return other is ZBase_2864 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2864');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2864($_val)';

}
