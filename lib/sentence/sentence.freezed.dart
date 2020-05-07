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
      {@required int storyId,
      @required String characterName,
      @required String body,
      @required String characterImagePath}) {
    return _Sentence(
      storyId: storyId,
      characterName: characterName,
      body: body,
      characterImagePath: characterImagePath,
    );
  }
}

// ignore: unused_element
const $Sentence = _$SentenceTearOff();

mixin _$Sentence {
  int get storyId;
  String get characterName;
  String get body;
  String get characterImagePath;

  Map<String, dynamic> toJson();
  $SentenceCopyWith<Sentence> get copyWith;
}

abstract class $SentenceCopyWith<$Res> {
  factory $SentenceCopyWith(Sentence value, $Res Function(Sentence) then) =
      _$SentenceCopyWithImpl<$Res>;
  $Res call(
      {int storyId,
      String characterName,
      String body,
      String characterImagePath});
}

class _$SentenceCopyWithImpl<$Res> implements $SentenceCopyWith<$Res> {
  _$SentenceCopyWithImpl(this._value, this._then);

  final Sentence _value;
  // ignore: unused_field
  final $Res Function(Sentence) _then;

  @override
  $Res call({
    Object storyId = freezed,
    Object characterName = freezed,
    Object body = freezed,
    Object characterImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      storyId: storyId == freezed ? _value.storyId : storyId as int,
      characterName: characterName == freezed
          ? _value.characterName
          : characterName as String,
      body: body == freezed ? _value.body : body as String,
      characterImagePath: characterImagePath == freezed
          ? _value.characterImagePath
          : characterImagePath as String,
    ));
  }
}

abstract class _$SentenceCopyWith<$Res> implements $SentenceCopyWith<$Res> {
  factory _$SentenceCopyWith(_Sentence value, $Res Function(_Sentence) then) =
      __$SentenceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int storyId,
      String characterName,
      String body,
      String characterImagePath});
}

class __$SentenceCopyWithImpl<$Res> extends _$SentenceCopyWithImpl<$Res>
    implements _$SentenceCopyWith<$Res> {
  __$SentenceCopyWithImpl(_Sentence _value, $Res Function(_Sentence) _then)
      : super(_value, (v) => _then(v as _Sentence));

  @override
  _Sentence get _value => super._value as _Sentence;

  @override
  $Res call({
    Object storyId = freezed,
    Object characterName = freezed,
    Object body = freezed,
    Object characterImagePath = freezed,
  }) {
    return _then(_Sentence(
      storyId: storyId == freezed ? _value.storyId : storyId as int,
      characterName: characterName == freezed
          ? _value.characterName
          : characterName as String,
      body: body == freezed ? _value.body : body as String,
      characterImagePath: characterImagePath == freezed
          ? _value.characterImagePath
          : characterImagePath as String,
    ));
  }
}

@JsonSerializable()
class _$_Sentence implements _Sentence {
  _$_Sentence(
      {@required this.storyId,
      @required this.characterName,
      @required this.body,
      @required this.characterImagePath})
      : assert(storyId != null),
        assert(characterName != null),
        assert(body != null),
        assert(characterImagePath != null);

  factory _$_Sentence.fromJson(Map<String, dynamic> json) =>
      _$_$_SentenceFromJson(json);

  @override
  final int storyId;
  @override
  final String characterName;
  @override
  final String body;
  @override
  final String characterImagePath;

  @override
  String toString() {
    return 'Sentence(storyId: $storyId, characterName: $characterName, body: $body, characterImagePath: $characterImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sentence &&
            (identical(other.storyId, storyId) ||
                const DeepCollectionEquality()
                    .equals(other.storyId, storyId)) &&
            (identical(other.characterName, characterName) ||
                const DeepCollectionEquality()
                    .equals(other.characterName, characterName)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.characterImagePath, characterImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.characterImagePath, characterImagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(storyId) ^
      const DeepCollectionEquality().hash(characterName) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(characterImagePath);

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
      {@required int storyId,
      @required String characterName,
      @required String body,
      @required String characterImagePath}) = _$_Sentence;

  factory _Sentence.fromJson(Map<String, dynamic> json) = _$_Sentence.fromJson;

  @override
  int get storyId;
  @override
  String get characterName;
  @override
  String get body;
  @override
  String get characterImagePath;
  @override
  _$SentenceCopyWith<_Sentence> get copyWith;
}
