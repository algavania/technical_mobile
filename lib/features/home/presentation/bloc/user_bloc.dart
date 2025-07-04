import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_mobile/core/async_value.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/home/domain/usecases/usecases.dart';
import 'package:technical_mobile/injector/injector.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : super(
          const UserState(
            getUsersStatus: AsyncValue.loading(),
            getUserStatus: AsyncValue.initial(),
            updateUserStatus: AsyncValue.initial(),
            getMyProfileStatus: AsyncValue.loading(),
            getUsersLoadingStatus: AsyncValue.initial(),
            updatePasswordStatus: AsyncValue.initial(),
            pickedImageStatus: AsyncValue.initial(),
          ),
        ) {
    on<_GetUsers>(_onGetUsers);
    on<_GetUser>(_onGetUser);
    on<_UpdateUser>(_onUpdateUser);
    on<_GetMyProfile>(_onGetMyProfile);
    on<_Refresh>(_onRefresh);
    on<_SearchUsers>(_onSearchUsers);
    on<_UpdatePassword>(_onUpdatePassword);
    on<_ChangePickedImage>(_onChangePickedImage);
  }

  final _getUsers = Injector.instance<GetUsers>();
  final _getUser = Injector.instance<GetUser>();
  final _updateUser = Injector.instance<UpdateUser>();
  final _getMyProfile = Injector.instance<GetMe>();
  final _updatePassword = Injector.instance<UpdatePassword>();

  final _limit = 10;
  int page = 1;
  bool needFetching = false;

  Future<void> _onChangePickedImage(
    _ChangePickedImage event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(pickedImageStatus: const AsyncValue.loading()));
    emit(state.copyWith(pickedImageStatus: AsyncValue.data(event.file)));
  }

  Future<void> _onRefresh(
    _Refresh event,
    Emitter<UserState> emit,
  ) async {
    page = 1;
    needFetching = false;
    await _getUsersData(emit);
  }

  Future<void> _onSearchUsers(
    _SearchUsers event,
    Emitter<UserState> emit,
  ) async {
    page = 1;
    needFetching = false;
    await _getUsersData(emit, search: event.value);
  }

  Future<void> _onGetUsers(
    _GetUsers event,
    Emitter<UserState> emit,
  ) async {
    await _getUsersData(emit);
  }

  Future<void> _getUsersData(Emitter<UserState> emit, {String? search}) async {
    final users = List<UserEntity>.from(
      state.getUsersStatus.maybeMap(
        orElse: () => const <UserEntity>[],
        data: (data) => data.data,
      ),
    );
    emit(state.copyWith(getUsersLoadingStatus: const AsyncValue.loading()));
    final res = await _getUsers.call(
      GetUsersParams(
        page: page,
        limit: _limit,
        search: search,
      ),
    );
    res.fold(
      (failure) => emit(
        state.copyWith(
          getUsersLoadingStatus: AsyncValue.error(failure.message),
        ),
      ),
      (data) {
        if (page > 1) {
          users.addAll(data.users);
        } else {
          users
            ..clear()
            ..addAll(data.users);
        }
        page++;
        needFetching = data.lastPage > data.currentPage;
        emit(
          state.copyWith(
            getUsersStatus: AsyncValue.data(users),
            getUsersLoadingStatus: const AsyncValue.data(true),
          ),
        );
      },
    );
  }

  Future<void> _onGetUser(
    _GetUser event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(getUserStatus: const AsyncValue.loading()));
    final res = await _getUser.call(event.id);
    res.fold(
      (failure) => emit(
        state.copyWith(getUserStatus: AsyncValue.error(failure.message)),
      ),
      (user) => emit(state.copyWith(getUserStatus: AsyncValue.data(user))),
    );
  }

  Future<void> _onUpdatePassword(
    _UpdatePassword event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(updatePasswordStatus: const AsyncValue.loading()));
    final res = await _updatePassword.call(
      UpdatePasswordParam(
        oldPassword: event.oldPassword,
        newPassword: event.newPassword,
        confirmNewPassword: event.confirmNewPassword,
      ),
    );
    res.fold(
      (failure) => emit(
        state.copyWith(updatePasswordStatus: AsyncValue.error(failure.message)),
      ),
      (_) => emit(
        state.copyWith(updatePasswordStatus: const AsyncValue.data(true)),
      ),
    );
  }

  Future<void> _onUpdateUser(
    _UpdateUser event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(updateUserStatus: const AsyncValue.loading()));
    final res = await _updateUser.call(
      UpdateUserParam(
        name: event.name,
        email: event.email,
        image: event.image,
      ),
    );
    res.fold(
      (failure) => emit(
        state.copyWith(updateUserStatus: AsyncValue.error(failure.message)),
      ),
      (user) => emit(
        state.copyWith(
          updateUserStatus: AsyncValue.data(user),
          getMyProfileStatus: AsyncValue.data(user),
            pickedImageStatus: const AsyncValue.initial(),
        ),
      ),
    );
  }

  Future<void> _onGetMyProfile(
    _GetMyProfile event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(getMyProfileStatus: const AsyncValue.loading()));
    final res = await _getMyProfile.call(const None());
    res.fold(
      (failure) => emit(
        state.copyWith(
          getMyProfileStatus: AsyncValue.error(failure.message),
        ),
      ),
      (user) => emit(state.copyWith(getMyProfileStatus: AsyncValue.data(user))),
    );
  }
}
