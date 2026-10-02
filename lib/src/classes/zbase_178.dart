import 'zbase.dart';

class ZBase_178 extends ZBase {
  int _val;
  ZBase_178(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_178');
    return other is ZBase_178 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_178');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_178($_val)';

}
