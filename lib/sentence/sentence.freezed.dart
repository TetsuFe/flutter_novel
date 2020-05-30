// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sentence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Sentence _$SentenceFromJson(Map<String, dynamic> json) {
  return _Sentence.fromJson(json);
}

class _$SentenceTearOff {
  const _$SentenceTearOff();

  _Sentence call(
      {@required String characterName,
      @required String body,
      @required String characterImagePath,
      @required String characterImageEffect}) {
    return _Sentence(
      characterName: characterName,
      body: body,
      characterImagePath: characterImagePath,
      characterImageEffect: characterImageEffect,
    );
  }
}

// ignore: unused_element
const $Sentence = _$SentenceTearOff();

mixin _$Sentence {
  String get characterName;
  String get body;
  String get characterImagePath;
  String get characterImageEffect;

  Map<String, dynamic> toJson();
  $SentenceCopyWith<Sentence> get copyWith;
}

abstract class $SentenceCopyWith<$Res> {
  factory $SentenceCopyWith(Sentence value, $Res Function(Sentence) then) =
      _$SentenceCopyWithImpl<$Res>;
  $Res call(
      {String characterName,
      String body,
      String characterImagePath,
      String characterImageEffect});
}

class _$SentenceCopyWithImpl<$Res> implements $SentenceCopyWith<$Res> {
  _$SentenceCopyWithImpl(this._value, this._then);

  final Sentence _value;
  // ignore: unused_field
  final $Res Function(Sentence) _then;

  @override
  $Res call({
    Object characterName = freezed,
    Object body = freezed,
    Object characterImagePath = freezed,
    Object characterImageEffect = freezed,
  }) {
    return _then(_value.copyWith(
      characterName: characterName == freezed
          ? _value.characterName
          : characterName as String,
      body: body == freezed ? _value.body : body as String,
      characterImagePath: characterImagePath == freezed
          ? _value.characterImagePath
          : characterImagePath as String,
      characterImageEffect: characterImageEffect == freezed
          ? _value.characterImageEffect
          : characterImageEffect as String,
    ));
  }
}

abstract class _$SentenceCopyWith<$Res> implements $SentenceCopyWith<$Res> {
  factory _$SentenceCopyWith(_Sentence value, $Res Function(_Sentence) then) =
      __$SentenceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String characterName,
      String body,
      String characterImagePath,
      String characterImageEffect});
}

class __$SentenceCopyWithImpl<$Res> extends _$SentenceCopyWithImpl<$Res>
    implements _$SentenceCopyWith<$Res> {
  __$SentenceCopyWithImpl(_Sentence _value, $Res Function(_Sentence) _then)
      : super(_value, (v) => _then(v as _Sentence));

  @override
  _Sentence get _value => super._value as _Sentence;

  @override
  $Res call({
    Object characterName = freezed,
    Object body = freezed,
    Object characterImagePath = freezed,
    Object characterImageEffect = freezed,
  }) {
    return _then(_Sentence(
      characterName: characterName == freezed
          ? _value.characterName
          : characterName as String,
      body: body == freezed ? _value.body : body as String,
      characterImagePath: characterImagePath == freezed
          ? _value.characterImagePath
          : characterImagePath as String,
      characterImageEffect: characterImageEffect == freezed
          ? _value.characterImageEffect
          : characterImageEffect as String,
    ));
  }
}

@JsonSerializable()
class _$_Sentence implements _Sentence {
  _$_Sentence(
      {@required this.characterName,
      @required this.body,
      @required this.characterImagePath,
      @required this.characterImageEffect})
      : assert(characterName != null),
        assert(body != null),
        assert(characterImagePath != null),
        assert(characterImageEffect != null);

  factory _$_Sentence.fromJson(Map<String, dynamic> json) =>
      _$_$_SentenceFromJson(json);

  @override
  final String characterName;
  @override
  final String body;
  @override
  final String characterImagePath;
  @override
  final String characterImageEffect;

  @override
  String toString() {
    return 'Sentence(characterName: $characterName, body: $body, characterImagePath: $characterImagePath, characterImageEffect: $characterImageEffect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sentence &&
            (identical(other.characterName, characterName) ||
                const DeepCollectionEquality()
                    .equals(other.characterName, characterName)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.characterImagePath, characterImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.characterImagePath, characterImagePath)) &&
            (identical(other.characterImageEffect, characterImageEffect) ||
                const DeepCollectionEquality()
                    .equals(other.characterImageEffect, characterImageEffect)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(characterName) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(characterImagePath) ^
      const DeepCollectionEquality().hash(characterImageEffect);

  @override
  _$SentenceCopyWith<_Sentence> get copyWith =>
      __$SentenceCopyWithImpl<_Sentence>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SentenceToJson(this);
  }
}

abstract class _Sentence implements Sentence {
  factory _Sentence(
      {@required String characterName,
      @required String body,
      @required String characterImagePath,
      @required String characterImageEffect}) = _$_Sentence;

  factory _Sentence.fromJson(Map<String, dynamic> json) = _$_Sentence.fromJson;

  @override
  String get characterName;
  @override
  String get body;
  @override
  String get characterImagePath;
  @override
  String get characterImageEffect;
  @override
  _$SentenceCopyWith<_Sentence> get copyWith;
}
