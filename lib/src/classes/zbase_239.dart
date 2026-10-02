import 'zbase.dart';

class ZBase_239 extends ZBase {
  int _val;
  ZBase_239(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_239');
    return other is ZBase_239 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_239');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_239($_val)';

}
