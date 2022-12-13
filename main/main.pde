final int RADIUS = 20;
final int NUM_PEERS = 10;
final int MIN_DIST = 5;
final int WIDTH = 640;
final int HEIGHT = 360;
final float SPAWN_RATE = 0.30; //Chance of a peer of spawning in a cycle iteration
final float QUIT_RATE = 0.30; //Chanche of a peer to disconnect each cycle

ArrayList<Peer> peers = new ArrayList<Peer>();

float rand_x, rand_y;

void setup()
{
  //Window properties
  size(640, 360);
  
  //Initilizing Peers and drawing them
  for (int i = 0; i < NUM_PEERS; i++)
  {
      //Randomly generated coordinates
      rand_x = random(RADIUS, WIDTH - RADIUS);
      rand_y = random(RADIUS, HEIGHT - RADIUS);
      
      //Creating new peer
      Peer p = new Peer(rand_x, rand_y, RADIUS);
      peers.add(p);
      
      //Draw
      p.draw_peer();
  }
}


void draw()
{
  //Each cycle there is a SPAWN_RATE chanche of some peer spawning
  if (rand_weighted_choice(SPAWN_RATE))
  {
      rand_x = random(RADIUS, WIDTH - RADIUS);
      rand_y = random(RADIUS, HEIGHT - RADIUS);
      
      //Creating new peer
      Peer p = new Peer(rand_x, rand_y, RADIUS);
      peers.add(p);
      
      //Draw
      p.draw_peer();
  }
  
  //Each cycle there is a chanche of a peer disconnecting from the network
  if (rand_weighted_choice(QUIT_RATE))
  {
     int rand_peer_index = int(random(0, peers.size()));
     peers.remove(rand_peer_index);
  }
  
  //Update the screen
  background(0);
  for (Peer p : peers)
  {
     p.draw_peer(); 
  }
  
  
}
