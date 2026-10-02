import 'zbase.dart';

class ZBase_594 extends ZBase {
  int _val;
  ZBase_594(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_594');
    return other is ZBase_594 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_594');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_594($_val)';

}
