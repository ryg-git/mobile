import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@Freezed(toStringOverride: false)
class GameAnyId with _$GameAnyId {
  const GameAnyId._();

  const factory GameAnyId({required String value}) = _GameAnyId;

  GameId get gameId => GameId(value: value.substring(0, 8));
  bool get isFullId => value.length == 12;
  GameFullId? get gameFullId => isFullId ? GameFullId(value: value) : null;

  @override
  String toString() => value;
}

@Freezed(toStringOverride: false)
class GameId with _$GameId {
  const GameId._();

  @Assert('value.length == 8')
  const factory GameId({required String value}) = _GameId;

  @override
  String toString() => value;
}

@Freezed(toStringOverride: false)
class GameFullId with _$GameFullId {
  const GameFullId._();

  @Assert('value.length == 12')
  const factory GameFullId({required String value}) = _GameFullId;

  @override
  String toString() => value;
}

@Freezed(toStringOverride: false)
class GamePlayerId with _$GamePlayerId {
  const GamePlayerId._();

  @Assert('value.length == 4')
  const factory GamePlayerId({required String value}) = _GamePlayerId;

  @override
  String toString() => value;
}