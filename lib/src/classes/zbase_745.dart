import 'zbase.dart';

class ZBase_745 extends ZBase {
  int _val;
  ZBase_745(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_745');
    return other is ZBase_745 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_745');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_745($_val)';

}
