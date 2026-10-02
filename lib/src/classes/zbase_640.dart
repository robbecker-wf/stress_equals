import 'zbase.dart';

class ZBase_640 extends ZBase {
  int _val;
  ZBase_640(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_640');
    return other is ZBase_640 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_640');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_640($_val)';

}
