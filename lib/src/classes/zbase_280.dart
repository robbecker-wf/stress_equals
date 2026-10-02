import 'zbase.dart';

class ZBase_280 extends ZBase {
  int _val;
  ZBase_280(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_280');
    return other is ZBase_280 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_280');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_280($_val)';

}
