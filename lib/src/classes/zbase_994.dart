import 'zbase.dart';

class ZBase_994 extends ZBase {
  int _val;
  ZBase_994(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_994');
    return other is ZBase_994 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_994');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_994($_val)';

}
