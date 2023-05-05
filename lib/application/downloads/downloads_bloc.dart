import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix/domain/core/failures/main_failures.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {
  DownloadsBloc() : super(DownloadState.initial()) {
    on<_GetDowloadsImage>((event, emit) {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureorSuccessOption: none(),
        ),
      );
    });
  }
}
