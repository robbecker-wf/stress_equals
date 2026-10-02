import 'zbase.dart';

class ZBase_891 extends ZBase {
  int _val;
  ZBase_891(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_891');
    return other is ZBase_891 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_891');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_891($_val)';

}
