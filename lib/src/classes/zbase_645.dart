import 'zbase.dart';

class ZBase_645 extends ZBase {
  int _val;
  ZBase_645(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_645');
    return other is ZBase_645 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_645');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_645($_val)';

}
