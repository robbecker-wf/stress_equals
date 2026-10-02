import 'zbase.dart';

class ZBase_416 extends ZBase {
  int _val;
  ZBase_416(this._val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_416');
    return other is ZBase_416 && _val == other._val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_416');
    var value = 17;
    value = (value * 31) ^ _val.hashCode;
    return value;
  }

  @override
  String toString() => 'ZBase_416($_val)';

}
