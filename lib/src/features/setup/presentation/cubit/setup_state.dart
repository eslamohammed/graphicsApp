part of 'setup_cubit.dart';

abstract class SetupState extends Equatable {
  const SetupState();

  @override
  List<Object> get props => [];
}

class SetupInitial extends SetupState {}
