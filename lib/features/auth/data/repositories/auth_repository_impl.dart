import 'package:blog_app/core/error/exceptions.dart';
import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  const AuthRepositoryImpl(this.remoteDataSource);
  
  @override
  Future<Either<Failure, String>> loginWithEmailPassword({required String email, required String password}) {
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, String>> signupWithEmailPassword({required String email, required String password, required String name}) async {
    try {
      final userId = await remoteDataSource.signupWithEmailPassword(
          name: name, email: email, password: password);

      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }

  
}
