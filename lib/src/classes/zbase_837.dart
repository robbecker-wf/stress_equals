import 'zbase.dart';

class ZBase_837 extends ZBase {
  int _val;
  ZBase_837(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_837');
    return other is ZBase_837 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_837');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_837($_val)';

}
