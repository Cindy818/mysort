int numbers1[] = { 2, 95, 23, 45, 26, 87, 35, 8, 51, 10};
int numbers2[] = { 2, 95, 23, 45, 26, 87, 35, 8, 51, 10};
int temp;
int stick=10;
int i , j;
void setup()
{
  size(500,500);
  for (int j=0;j<10;j++)
 {
  fill(255,100,255);
  rectMode(CORNER);
  rect(j*10+10,400-numbers1[j]*4,10,numbers1[j]*4);
 }  
}

void draw() {
 
 
  if(j>-1){
 
 
    if(i>-1){
      if(numbers1[i]>numbers1[i+1]){
        temp = numbers1[i];  
        numbers1[i] = numbers1[i+1];
        numbers1[i+1] = temp;
      }
 
      i++;
      if(i >= stick-1){
         i = 0;
         j++;
      }
    }
 
 
    if(j >= stick-1){
       j = -1; 
    }
 
  }
 
  rectMode(CENTER);
  background(255);
  for(int s = 0; s < 10; s++){
    if(numbers1[s] == numbers2[s]){
       fill(255,200,255); 
    } else {
       fill(255,0,255); 
    }
 
    rect(s*10+10,400-numbers1[s],10,numbers1[s]*2);
 
    numbers2[s] = numbers1[s];
  }
}



