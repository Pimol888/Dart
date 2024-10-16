//Class Point
final class Point {
  int x, y;
  //Constructor
  Point(
    this.x,
    this.y,
  );
  //PointTranslation
  String pointTranslatation(int dx, int dy) {
    x += dx;
    y += dy;
    return "$x $y";
  }

  void printed() {
    print("Output: ($x,$y)");
  }
}

void main() {
  int y = 2, x = 6;
  var point = Point(x, y);
  point.pointTranslatation(5, 5);
  point.printed();
}
