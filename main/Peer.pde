class Peer {
  //Coordinates
  float xPos, yPos;
  float radius;
  
  //Full constructor
  Peer(float x, float y, float r)
  {
     xPos = x;
     yPos = y;
     radius = r;
  }
  
  //Default settings
  Peer()
  {
     xPos = 0;
     yPos = 0;
     radius = 10;
  }
  
  void draw_peer()
  {
    circle(xPos, yPos, radius);
  }
}
