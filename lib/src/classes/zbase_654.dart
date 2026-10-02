import 'zbase.dart';

class ZBase_654 extends ZBase {
  int _val;
  ZBase_654(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_654');
    return other is ZBase_654 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_654');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_654($_val)';

}
