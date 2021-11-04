class UsersModelTwo {
  String firstName;
  String lastName;
  String country;
  String city;
  int age;

  UsersModelTwo({
    required this.firstName,
    required this.lastName,
    required this.country,
    required this.city,
    required this.age,
  });

  static List<UsersModelTwo> fetchAllUsers() {
    return <UsersModelTwo>[
      UsersModelTwo(
          firstName: 'Mark',
          lastName: 'Mullenini',
          country: 'Canada',
          city: 'Vancouver',
          age: 34),
      UsersModelTwo(
          firstName: 'Joyce',
          lastName: 'Leung',
          country: 'Hong Kong',
          city: 'Kowloon',
          age: 23),
      UsersModelTwo(
          firstName: 'Eunice',
          lastName: 'Bogtong',
          country: 'Manila',
          city: 'Philippines',
          age: 22),
      UsersModelTwo(
          firstName: 'Renee',
          lastName: 'Wong',
          country: 'Malaysia',
          city: 'Kuala Lumpur',
          age: 26),
      UsersModelTwo(
          firstName: 'Mabel',
          lastName: 'Lu',
          country: 'China',
          city: 'Shanghai',
          age: 30),
      UsersModelTwo(
          firstName: 'Nat',
          lastName: 'Namsai',
          country: 'Thailand',
          city: 'Bangkok',
          age: 23)
    ];
  }
}
