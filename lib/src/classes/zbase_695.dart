import 'zbase.dart';

class ZBase_695 extends ZBase {
  int _val;
  ZBase_695(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_695');
    return other is ZBase_695 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_695');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_695($_val)';

}
