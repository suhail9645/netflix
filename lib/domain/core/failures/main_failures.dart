// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failures.freezed.dart';
@freezed
class MainFailures with _$MainFailures{
  const factory MainFailures.clintFailure() = _ClintFailure;
  const factory MainFailures.serverFailure() = _ServerFailure;
  
}