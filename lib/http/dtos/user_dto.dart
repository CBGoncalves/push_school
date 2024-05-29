// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final int idUsuario;
  final String nomeUsuario;
  final String emailUsuario;
  final String senhaUsuario;
  final String telefoneUsuario;
  final int idTipoUsuario;

  User({
    required this.idUsuario,
    required this.nomeUsuario,
    required this.emailUsuario,
    required this.senhaUsuario,
    required this.telefoneUsuario,
    required this.idTipoUsuario,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idUsuario': idUsuario,
      'nomeUsuario': nomeUsuario,
      'emailUsuario': emailUsuario,
      'senhaUsuario': senhaUsuario,
      'telefoneUsuario': telefoneUsuario,
      'idTipoUsuario': idTipoUsuario,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      idUsuario: map['idUsuario'] as int,
      nomeUsuario: map['nomeUsuario'] as String,
      emailUsuario: map['emailUsuario'] as String,
      senhaUsuario: map['senhaUsuario'] as String,
      telefoneUsuario: map['telefoneUsuario'] as String,
      idTipoUsuario: map['idTipoUsuario'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
