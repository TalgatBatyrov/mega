part of 'person_cubit.dart';

@freezed
class PersonState with _$PersonState {
  const factory PersonState.loading() = _Loading;
  const factory PersonState.success(PersonModel person) = _Success;
  const factory PersonState.error(String message) = _Error;
}
