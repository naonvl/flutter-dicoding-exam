class Courses {
  String imageUrl;
  String coursesName;

  Courses({
    required this.imageUrl,
    required this.coursesName,
  });
}

List<Courses> courses = [
  Courses(
    imageUrl: 'assets/images/venice.jpg',
    coursesName: 'Venice',
  ),
  Courses(
    imageUrl: 'assets/images/paris.jpg',
    coursesName: 'Paris',
  ),
  Courses(
    imageUrl: 'assets/images/newdelhi.jpg',
    coursesName: 'New Delhi',
  ),
  Courses(
    imageUrl: 'assets/images/saopaulo.jpg',
    coursesName: 'Sao Paulo',
  ),
  Courses(
    imageUrl: 'assets/images/newyork.jpg',
    coursesName: 'New York City',
  ),
];