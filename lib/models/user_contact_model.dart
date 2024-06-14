class UserContactModel {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<Datum> data;

  UserContactModel({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  factory UserContactModel.fromJson(Map<String, dynamic> json) {
    return UserContactModel(
      page: json['page'],
      perPage: json['per_page'],
      total: json['total'],
      totalPages: json['total_pages'],
      data: (json['data'] as List).map((datum) => Datum.fromJson(datum)).toList(),
    );
  }
}

class Datum {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  Datum({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }
}
