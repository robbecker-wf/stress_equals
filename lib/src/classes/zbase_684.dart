import 'zbase.dart';

class ZBase_684 extends ZBase {
  int _val;
  ZBase_684(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_684');
    return other is ZBase_684 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_684');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_684($_val)';

}
