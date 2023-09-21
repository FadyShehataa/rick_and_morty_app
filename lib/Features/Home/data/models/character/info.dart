import 'package:equatable/equatable.dart';

class Info extends Equatable {
  final int? count;
  final int? pages;
  final String? next;
  final dynamic prev;

  const Info({this.count, this.pages, this.next, this.prev});

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        count: json['count'] as int?,
        pages: json['pages'] as int?,
        next: json['next'] as String?,
        prev: json['prev'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'pages': pages,
        'next': next,
        'prev': prev,
      };

  @override
  List<Object?> get props => [count, pages, next, prev];
}
