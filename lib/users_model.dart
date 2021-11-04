class UsersModel {
  String firstName;
  String lastName;
  String email;
  int age;
  String city;

  UsersModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.age,
      required this.city});

  static List<UsersModel> getUsers() {
    return <UsersModel>[
      UsersModel(
          firstName: 'John',
          lastName: 'Smith',
          email: 'john@mail.com',
          age: 34,
          city: 'Vancouver'),
      UsersModel(
          firstName: 'Joyce',
          lastName: 'Leung',
          email: 'mary@gmail.com',
          age: 23,
          city: 'Shanghai'),
      UsersModel(
          firstName: 'Eunice',
          lastName: 'Reyes',
          email: 'eunice@mail.com',
          age: 22,
          city: 'Manila'),
      UsersModel(
          firstName: 'Pearl',
          lastName: 'Cheung',
          email: 'pearl@email.com',
          age: 26,
          city: 'Singapore'),
      UsersModel(
          firstName: 'Mabel',
          lastName: 'Lu',
          email: 'mabs@mail.com',
          age: 30,
          city: 'Hong Kong'),
      UsersModel(
          firstName: 'Nat',
          lastName: 'Petchwari',
          email: 'natty@mail.com',
          age: 43,
          city: 'Bangkok'),
      UsersModel(
          firstName: 'John',
          lastName: 'Smith',
          email: 'john@mail.com',
          age: 34,
          city: 'Vancouver'),
      UsersModel(
          firstName: 'Joyce',
          lastName: 'Leung',
          email: 'mary@gmail.com',
          age: 23,
          city: 'Shanghai'),
      UsersModel(
          firstName: 'Eunice',
          lastName: 'Reyes',
          email: 'eunice@mail.com',
          age: 22,
          city: 'Manila'),
      UsersModel(
          firstName: 'Pearl',
          lastName: 'Cheung',
          email: 'pearl@email.com',
          age: 26,
          city: 'Singapore'),
      UsersModel(
          firstName: 'Mabel',
          lastName: 'Lu',
          email: 'mabs@mail.com',
          age: 30,
          city: 'Hong Kong'),
      UsersModel(
          firstName: 'Nat',
          lastName: 'Petchwari',
          email: 'natty@mail.com',
          age: 43,
          city: 'Bangkok'),
      UsersModel(
          firstName: 'Eunice',
          lastName: 'Reyes',
          email: 'eunice@mail.com',
          age: 22,
          city: 'Manila'),
      UsersModel(
          firstName: 'Pearl',
          lastName: 'Cheung',
          email: 'pearl@email.com',
          age: 26,
          city: 'Singapore'),
      UsersModel(
          firstName: 'Mabel',
          lastName: 'Lu',
          email: 'mabs@mail.com',
          age: 30,
          city: 'Hong Kong'),
      UsersModel(
          firstName: 'Nat',
          lastName: 'Petchwari',
          email: 'natty@mail.com',
          age: 43,
          city: 'Bangkok'),
    ];
  }
}
