//Function useful to spawn or kill peers
boolean rand_weighted_choice(float p)
{
  /*
  p = chance of returning true
  return = true or false randomly but with a certain prob distribution, depending on p */
  float rand = random(0, 1);
  if (rand <= p) return true;
  else return false;
  }
