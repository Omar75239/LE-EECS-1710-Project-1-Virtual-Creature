class Cloud {
  int x, y, dx, size;
  Cloud() {
    this.x = 320;
    this.y = 50;
    this.dx = 2;
    this.size = 100;
  }

  void move() {
    this.x -= dx;
    if(this.x < -this.size) {
      this.x = (int) random(750, 1600);
    }
  }

  void display() {
    image(cloudpic, this.x, this.y, this.size, this.size);
  }
}
