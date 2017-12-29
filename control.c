
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

void while_loop_signed(int x) {
  int i;
  
  i = 0;
  
  // less than
  while (i < x) {
    printf("in LT loop\n");
    i++;
  }
  
  i = 0;
  
  // less than or equal
  while (i <= x) {
    printf("in LTE loop\n");
    i++;
  }

  i = x;
  
  // greater than
  while (i > 0) {
    printf("in GT loop\n");
    i--;
  }    
  
  i = x;
  // greater than or equal
  while (i >= 0) {
    printf("in GTE loop\n");
    i--;
  }  
}

void while_loop_unsigned(uint32_t x) {
  uint32_t i;
  
  i = 0;
  
  // less than
  while (i < x) {
    printf("in LT loop\n");
    i++;
  }
  
  i = 0;
  
  // less than or equal
  while (i <= x) {
    printf("in LTE loop\n");
    i++;
  }

  i = x;
  
  // greater than
  while (i > 0) {
    printf("in GT loop\n");
    i--;
  }    
  
  i = x;
  // greater than or equal
  while (i >= 0) {
    printf("in GTE loop\n");
    i--;
  }  
}


void do_while_loop_signed(int x) {
  int i;
  
  i = 0;
  
  // less than
  do {
    printf("in LT loop\n");
    i++;
  } while (i < x);
  
  i = 0;
  
  // less than or equal
  do {
    printf("in LTE loop\n");
    i++;
  } while (i <= x); 

  i = x;
  
  // greater than
  do {
    printf("in GT loop\n");
    i--;
  } while (i > 0);   
  
  i = x;
  // greater than or equal
  do {
    printf("in GTE loop\n");
    i--;
  } while (i >= 0);  
}

void do_while_loop_unsigned(uint32_t x) {
  uint32_t i;
  
  i = 0;
  
  // less than
  do {
    printf("in LT loop\n");
    i++;
  } while (i < x);
  
  i = 0;
  
  // less than or equal
  do {
    printf("in LTE loop\n");
    i++;
  } while (i <= x); 

  i = x;
  
  // greater than
  do {
    printf("in GT loop\n");
    i--;
  } while (i > 0);   
  
  i = x;
  // greater than or equal
  do {
    printf("in GTE loop\n");
    i--;
  } while (i >= 0);  
}


int main(int argc, char *argv[])
{
  int x;
  uint32_t u;
  
  x = atoi(argv[1]);
  u = x;
  
  while_loop_signed(x);
  while_loop_unsigned(u);
  do_while_loop_signed(x);
  do_while_loop_unsigned(u);
  return 0;
}
