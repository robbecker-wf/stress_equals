import 'zbase.dart';

class ZBase_545 extends ZBase {
  int _val;
  ZBase_545(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_545');
    return other is ZBase_545 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_545');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_545($_val)';

}
