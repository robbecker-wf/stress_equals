import 'zbase.dart';

class ZBase_859 extends ZBase {
  int _val;
  ZBase_859(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_859');
    return other is ZBase_859 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_859');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_859($_val)';

}
