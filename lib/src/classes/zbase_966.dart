import 'zbase.dart';

class ZBase_966 extends ZBase {
  int _val;
  ZBase_966(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_966');
    return other is ZBase_966 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_966');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_966($_val)';

}
