import 'zbase.dart';

class ZBase_818 extends ZBase {
  int _val;
  ZBase_818(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_818');
    return other is ZBase_818 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_818');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_818($_val)';

}
