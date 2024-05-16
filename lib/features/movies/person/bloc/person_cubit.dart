import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/core/services/http_service/exceptions/server_exception.dart';
import 'package:mega/features/movies/person/repository/model/person_model.dart';
import 'package:mega/features/movies/person/repository/person_reposotory.dart';

part 'person_cubit.freezed.dart';
part 'person_state.dart';

class PersonCubit extends Cubit<PersonState> {
  final PersonRepository personRepository;
  PersonCubit(this.personRepository) : super(const PersonState.loading());

  Future<void> getPerson(int id) async {
    try {
      emit(const PersonState.loading());
      final person = await personRepository.getPerson(id);
      emit(PersonState.success(person));
    } on ServerException catch (e) {
      emit(PersonState.error(e.message ?? 'Server error'));
    }
  }
}
