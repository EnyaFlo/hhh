
int x=-390;
int x1=2;
int y=50;
int y1=2;
int x2=500;
float grande=1;
PImage img;
PImage dos;
PImage tres;
PImage cuatro;
PImage cinco;
void setup ()
{
size(640,640);
shapeMode(CENTER);
img = loadImage("jos.jpg");
img.resize(width,height);
dos= loadImage("has.jpg");
dos.resize(width,height);
tres= loadImage("tes.jpg");
tres.resize(width,height);
cuatro= loadImage("cua.jpg");
cuatro.resize(width,height);
cinco= loadImage("cin.jpg");
cinco.resize(width,height);
}



void draw()
  {   
    background (img);
     image (img, 0, 0, width, height );
     float diameter= map(x,y,width,0,30);
    x+=1;//velocidad
    
     //esto para que cambie el fondo con las teclass a y b
     
        keyPressed();
        if (key==CODED) 
        {
            if (keyCode==UP) 
        {
            background(0);
        }
        else if (keyCode==DOWN) 
        {
            background(img);
        }
        else if (keyCode==LEFT)
        {
            background(#FA0303);
        }
        else if (keyCode==RIGHT) 
        {
            background(255);
        }
        }
        else {
        if (key=='a') 
        {
            background(dos);
        }
        else if (key=='b') 
        {
            background(tres);
        }
        
    //para que crezca    
  if ( key == 'p')
  {
    grande -= 0.01;
  }
  if ( key == 'g')
  {
    grande += 0.01;
  }
        }
        
        
        
       
     
     
     scale (grande);
    
     //lengua y boquita
    
    noStroke();
    fill(0);
    //arc(x+250,y+250,30,40,PI,TWO_PI); //boca
    noFill();
    arc(x+250,y+250,20,40+diameter,0,PI); //lengua
    
    
    //ojos
   noStroke();
    fill(#FF0396);
    ellipse(x+160,y+240,diameter,diameter);
    ellipse(x+340,y+240,diameter,diameter);
   
     
   
   //cuerpo
    fill(0,60);
    stroke(#FAF323);
    triangle(x+250,y+200,x+350,y+350,x+140,y+350);
  
  //antenaas
   stroke(#FFA2A4);
    
    line(x+250+diameter,y+200,x+160+diameter,y+100);
    line(x+250,y+200+diameter,x+340,y+100+diameter);
    
    //patas
stroke(#FF0396);
    line(x+150,y+380,x+170,y+350);
    line(x+337,y+380,x+320,y+350);
    
    
    //cabeza 
    noStroke();
    fill(#FFCE05);
    arc(x+250,y+250,160,160,PI,TWO_PI);
    
    //bolas de antenas
   noFill();
   stroke(#FAF323);
   ellipse(x+160+diameter,y+100,5,5);
    ellipse(x+340,y+100+diameter,5,5);
    
      float diameter4= map(x,y,width,5,20);
    
   if(x>=550)
   {
     background(img);
     
     float diameter3= map(x,y,width,20,0);
     float diameter2= map(x,y,width,5,20);
    x2--;
    
    keyPressed();
        if (key==CODED) 
        {
            if (keyCode==UP) 
        {
            background(0);
        }
        else if (keyCode==DOWN) 
        {
            background(img);
        }
        else if (keyCode==LEFT)
        {
            background(#FA0303);
        }
        else if (keyCode==RIGHT) 
        {
            background(255);
        }
        }
        else {
        if (key=='c') 
        {
            background(cuatro);
        }
        else if (key=='d') 
        {
            background(cinco);
        }
        
        if ( key == 'p')
  {
    grande -= 0.01;
  }
  if ( key == 'g')
  {
    grande += 0.01;
  }
        }
     
    
    
    //ojos 2
    noStroke();
   fill(#FF0396);
    ellipse(x2+160,y+240,diameter3,diameter3);
    ellipse(x2+340,y+240,diameter3,diameter3);
    
     //lengua y boquita 2
    noFill();
    noStroke();
    arc(x2+250,y+250,20,40,0,PI);
    fill(0);
     arc(x2+250,y+250,30,30,PI,TWO_PI);
    
    //cuerpo 2
    fill(0,60);
    stroke(#23FAB4);
    triangle(x2+250,y+200,x2+350,y+350,x2+140,y+350);
  
   //antenas 2
   stroke(#FFA2A4);
    line(x2+250,y+200+diameter2,x2+160,y+100+diameter2);
    line(x2+250+diameter2,y+200,x2+340+diameter2,y+100);
    
    
    //patas 2
stroke(#FF0396);
    line(x2+150,y+380,x2+170,y+350);
    line(x2+337,y+380,x2+320,y+350);
    
   
    
    //cabeza 2
    noStroke();
    fill(#03CAFF);
    arc(x2+250,y+250,160,160,PI,TWO_PI);
    
    //bolas de antena 2
   noFill();
   stroke(#23FAB4);
   ellipse(x2+160,y+100+diameter2,5,5);
    ellipse(x2+340+diameter2,y+100,5,5);
    
    
   }
   if (x2<=-400)//este y el de abajo
    {
      x=-400; //cambiamos este y el de arriba para que el mono llegue hasta que no se vea
      x2=550;
  
    }
    
    
    
        //esto para que prendan las antenas y saque la lengua   
      if (mousePressed) 
      {
        {
        if( mouseButton==LEFT)
       
       
       
       fill(0);
       noStroke();
       arc(x+250,y+250,27+diameter,30+diameter,PI,TWO_PI);
        arc(x2+250,y+250,30,30,PI,TWO_PI);
       stroke(#FF0303);
       fill(#FF0303);
       arc(x+250,y+250,15+diameter,30,0,PI);
       arc(x2+250,y+250,15,30,0,PI);
        }
      }
      
       else
      {
        stroke(0); 
        //stroke (0,50); por si quiero de color el contorno
       
      }
        ellipse(x+160+diameter,y+100,5,5);
        ellipse(x+340,y+100+diameter,5,5);
        
        ellipse(x2+160,y+100+diameter4,5,5);
        ellipse(x2+340+diameter4,y+100,5,5);
  
  }
  
  
  
  
  
  
  