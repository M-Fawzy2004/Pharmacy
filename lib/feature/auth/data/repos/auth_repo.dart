// ignore_for_file: void_checks

import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:pharmacy_app/core/errors/failures.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Abstract Repository Interface
abstract class AuthRepository {
  // Methods to be implemented

  // Sign Up
  Future<Either<Failures, void>> signUp(
    String name,
    String email,
    String password,
  );
  // Sign In
  Future<Either<Failures, void>> signIn(
    String email,
    String password,
  );
}

// Implementation of AuthRepository
class AuthRepositoryImpl implements AuthRepository {
  final SupabaseClient supabase;

  AuthRepositoryImpl(this.supabase);

  // Methods to be implemented
  // Sign Up
  @override
  Future<Either<Failures, void>> signUp(
    String name,
    String email,
    String password,
  ) async {
    try {
      final res = await supabase.auth.signUp(
        data: {'name': name},
        email: email,
        password: password,
      );
      if (res.user == null) {
        return left(ServerFailure(message: "User creation failed."));
      }
      log('Sign Up Success: ${res.user?.id}');
      return right(res);
    } catch (e) {
      return left(
        ServerFailure(
          message: e.toString(),
        ),
      );
    }
  }

  // Sign In
  @override
  Future<Either<Failures, void>> signIn(String email, String password) async {
    try {
      final res = await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (res.user == null) {
        return left(ServerFailure(message: "Sign in failed."));
      }
      log('Sign In Success: ${res.user?.id}');
      return right(res);
    } catch (e) {
      return left(
        ServerFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
