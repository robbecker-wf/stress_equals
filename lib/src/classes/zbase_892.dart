import 'zbase.dart';

class ZBase_892 extends ZBase {
  int _val;
  ZBase_892(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_892');
    return other is ZBase_892 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_892');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_892($_val)';

}
