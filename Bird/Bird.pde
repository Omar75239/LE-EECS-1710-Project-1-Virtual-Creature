//Things to know:
//Clouds will come at random frequencies
//Bird will try to avoid mouse pointer

PImage birdpic, cloudpic, sunsetbackground;
PVector position, target;
boolean FlyingAway = false;
Cloud cloud;

void setup() {
  size(640, 480);
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));
  cloud = new Cloud();
  birdpic = loadImage("birdpic.png");
  birdpic.resize(100,100);
  imageMode(CENTER);
  
  cloudpic = loadImage("cloudpic.png");
  sunsetbackground = loadImage("sunsetbackground.jpg");
}

void draw() {
  background(sunsetbackground);
  
  image(birdpic, position.x, position.y);
  
  PVector MousePosition = new PVector(mouseX, mouseY);
  FlyingAway = position.dist(MousePosition) < 300;
  
  if (FlyingAway) {
    position = position.lerp(target, 0.06);
    if (position.dist(target) < 5) {
      target = new PVector(random(width), random(height));
    }
  }
  
  cloud.display();
  cloud.move();
  

}
//Bird image from https://pixabay.com/illustrations/bird-s-pet-s-bird-png-wildlife-5276316/
//Cloud image from https://www.pikpng.com/pngvi/hoimoR_caricature-a-cartoon-clouds-transprent-png-free-cartoon-cloud-clipart/
//Background image from https://pixabay.com/illustrations/cartoon-background-sunset-nature-2614617/
