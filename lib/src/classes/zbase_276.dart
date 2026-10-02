import 'zbase.dart';

class ZBase_276 extends ZBase {
  int _val;
  ZBase_276(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_276');
    return other is ZBase_276 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_276');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_276($_val)';

}
