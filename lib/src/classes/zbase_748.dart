import 'zbase.dart';

class ZBase_748 extends ZBase {
  int _val;
  ZBase_748(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_748');
    return other is ZBase_748 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_748');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_748($_val)';

}
