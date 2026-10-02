import 'zbase.dart';

class ZBase_808 extends ZBase {
  int _val;
  ZBase_808(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_808');
    return other is ZBase_808 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_808');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_808($_val)';

}
