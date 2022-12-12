final int RADIUS = 20;
final int NUM_PEERS = 10;
final int MIN_DIST = 5;
final int WIDTH = 640;
final int HEIGHT = 360;

Peer[] peers = new Peer[NUM_PEERS];

void setup()
{
  //Window properties
  size(640, 360);
  
  float rand_x, rand_y;
  //Initilizing Peers and drawing them
  for (int i = 0; i < NUM_PEERS; i++)
  {
      //Randomly generated coordinates
      rand_x = random(RADIUS, WIDTH - RADIUS);
      rand_y = random(RADIUS, HEIGHT - RADIUS);
      
      //Creating new peer
      Peer p = new Peer(rand_x, rand_y, RADIUS);
      peers[i] = p;
      
      //Draw
      p.draw_peer();
  }
}


void draw()
{
  
}
