import 'zbase.dart';

class ZBase_3316 extends ZBase {
  int _val;
  ZBase_3316(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_3316');
    return other is ZBase_3316 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_3316');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_3316($_val)';

}
