void setup()
  {
    size(800,800);
    noLoop();
  }
  void draw()
  {
    background(0);
    Die bob=new Die(150,150);
    bob.show();
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //variable declarations here
      int myX, myY, num, total;
      Die(int x, int y) //constructor
      {
        total=0;
        num=(int)(Math.random()*6+1);
        myY=y;
        myX=x;//variable initializations here
      }
      void show()
      {
        for(int myX=150; myX<750;myX=myX+200)
        {
          for (int myY=150; myY<750; myY=myY+200)
          {
            num=(int)(Math.random()*6+1);
            fill(255);
            rect(myX,myY,100,100);
            fill(0);
            total=total+num;
            if (num==1)
            {
             ellipse(myX+50,myY+50,10,10);
            }
            else if (num==2)
            {
             ellipse(myX+90,myY+10,10,10);
             ellipse(myX+10,myY+90,10,10);
            }
            else if (num==3)
            {
             ellipse(myX+90,myY+10,10,10);
             ellipse(myX+10,myY+90,10,10);
             ellipse(myX+50,myY+50,10,10);      
            }
            else if (num==4)
            {
            ellipse(myX+90,myY+10,10,10);
            ellipse(myX+10,myY+90,10,10);
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+90,myY+90,10,10);
            }
            else if (num==5)
            {
            ellipse(myX+90,myY+10,10,10);
            ellipse(myX+10,myY+90,10,10);
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+90,myY+90,10,10);
            ellipse(myX+50,myY+50,10,10);
            } 
            else
            {
            ellipse(myX+90,myY+10,10,10);
            ellipse(myX+10,myY+90,10,10);
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+90,myY+90,10,10);
            ellipse(myX+10,myY+50,10,10);
            ellipse(myX+90,myY+50,10,10);
            }
          }
        }
        fill(255);
        textSize(50);
        textAlign(CENTER);
        text("Total sum = "+ total,400,700);
       }
   }