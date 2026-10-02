import 'zbase.dart';

class ZBase_729 extends ZBase {
  int _val;
  ZBase_729(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_729');
    return other is ZBase_729 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_729');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_729($_val)';

}
