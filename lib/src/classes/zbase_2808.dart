import 'zbase.dart';

class ZBase_2808 extends ZBase {
  int _val;
  ZBase_2808(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2808');
    return other is ZBase_2808 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2808');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2808($_val)';

}
