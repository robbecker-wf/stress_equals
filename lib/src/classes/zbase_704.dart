import 'zbase.dart';

class ZBase_704 extends ZBase {
  int _val;
  ZBase_704(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_704');
    return other is ZBase_704 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_704');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_704($_val)';

}
