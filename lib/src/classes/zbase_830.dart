import 'zbase.dart';

class ZBase_830 extends ZBase {
  int _val;
  ZBase_830(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_830');
    return other is ZBase_830 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_830');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_830($_val)';

}
