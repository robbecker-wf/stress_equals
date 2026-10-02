// A minimal stand-in for package:thrift and package:frugal, shaped like the real APIs.

class TType {
  static const int STOP = 0;
  static const int I32 = 8;
  static const int STRING = 11;
  static const int STRUCT = 12;
  static const int LIST = 15;
}

class TStruct {
  TStruct(this.name);
  final String name;
}

class TField {
  TField(this.name, this.type, this.id);
  final String name;
  final int type;
  final int id;
}

class TList {
  TList(this.elementType, this.length);
  final int elementType;
  final int length;
}

class TProtocolError extends Error {
  TProtocolError(this.message);
  final String message;
}

abstract class TProtocol {
  void readStructBegin();
  void readStructEnd();
  TField readFieldBegin();
  void readFieldEnd();
  TList readListBegin();
  void readListEnd();
  int readI32();
  String readString();
  void writeStructBegin(TStruct struct);
  void writeStructEnd();
  void writeFieldBegin(TField field);
  void writeFieldEnd();
  void writeFieldStop();
  void writeListBegin(TList list);
  void writeListEnd();
  void writeI32(int? value);
  void writeString(String? value);
}

class MemoryProtocol implements TProtocol {
  final List<Object?> buffer = [];
  void readStructBegin() {}
  void readStructEnd() {}
  TField readFieldBegin() => buffer.isEmpty ? TField('', TType.STOP, 0) : buffer.removeLast() as TField;
  void readFieldEnd() {}
  TList readListBegin() => buffer.removeLast() as TList;
  void readListEnd() {}
  int readI32() => buffer.removeLast() as int;
  String readString() => buffer.removeLast() as String;
  void writeStructBegin(TStruct struct) {}
  void writeStructEnd() {}
  void writeFieldBegin(TField field) => buffer.add(field);
  void writeFieldEnd() {}
  void writeFieldStop() {}
  void writeListBegin(TList list) => buffer.add(list);
  void writeListEnd() {}
  void writeI32(int? value) => buffer.add(value);
  void writeString(String? value) => buffer.add(value);
}

class TProtocolUtil {
  static void skip(TProtocol prot, int type) {}
}

abstract class TBase {
  read(TProtocol iprot);
  write(TProtocol oprot);
  getFieldValue(int fieldID);
  setFieldValue(int fieldID, Object? value);
  bool isSet(int fieldID);
}

class DeepCollectionEquality {
  const DeepCollectionEquality();

  bool equals(Object? a, Object? b) {
    if (a is List && b is List) {
      if (a.length != b.length) return false;
      for (var i = 0; i < a.length; i++) {
        if (!equals(a[i], b[i])) return false;
      }
      return true;
    }
    return a == b;
  }

  int hash(Object? o) => o is List ? Object.hashAll(o.map(hash)) : o.hashCode;
}

List<T> readList<T>(TProtocol iprot, T Function(TProtocol) readElement) {
  final list = iprot.readListBegin();
  final result = <T>[];
  for (var i = 0; i < list.length; i++) {
    result.add(readElement(iprot));
  }
  iprot.readListEnd();
  return result;
}

void writeList<T>(TProtocol oprot, int elementType, List<T> values, void Function(TProtocol, T) writeElement) {
  oprot.writeListBegin(TList(elementType, values.length));
  for (final value in values) {
    writeElement(oprot, value);
  }
  oprot.writeListEnd();
}

class FContext {}

class FMethod {
  FMethod(Function f, this.serviceName, this.methodName)
      : _handler = ((List<Object?> args) => Function.apply(f, args) as Future<Object?>);

  final Future<Object?> Function(List<Object?>) _handler;
  final String serviceName;
  final String methodName;

  Future<Object?> call(List<Object?> args) => _handler(args);
}
