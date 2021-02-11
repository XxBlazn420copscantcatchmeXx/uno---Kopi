ArrayList<CardType> numberTypes = new ArrayList<CardType>();
CardType skip = new TypeSkip();
CardType reverse = new TypeReverse();
CardType plusTwo = new TypePlusTwo();
CardType changeColor = new TypeChangeColor();
CardType plusFour = new TypePlusFour();
Game game;


void setup(){
  background(55);
  size(800, 800);
  noStroke();
  
  for(int i=0; i<=9; i++){
    numberTypes.add(new TypeNumber(i)); 
  }
  
  game = new Game();
}

void draw(){
  background(55);
  game.draw();
}

void mouseClicked() {
  game.mouseClicked();
}

void keyPressed() {
  if(key == ' '){
    game.drawCard();
  }
  else if(keyCode == RIGHT){
    game.cardOffset = min(game.cardOffset+30, (game.getCurrentPlayer().hand.size()-7)*112);
  }
  else if(keyCode == LEFT){
    game.cardOffset = max(game.cardOffset-30, 0);
  }
}
