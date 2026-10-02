import 'zbase.dart';

class ZBase_2968 extends ZBase {
  int _val;
  ZBase_2968(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_2968');
    return other is ZBase_2968 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_2968');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_2968($_val)';

}
