import 'zbase.dart';

class ZBase_717 extends ZBase {
  int _val;
  ZBase_717(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_717');
    return other is ZBase_717 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_717');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_717($_val)';

}
