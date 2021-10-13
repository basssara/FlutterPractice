main(List<String> args) {
  Future<Post> fetchPost() async {
    final response = await http.get('http://api.open-notify.org/astros');

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      return Post.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}

class Post {
  final int number;
  var people;

  Post({this.number, this.people});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      number: json['number'],
    );
  }
}
