//
//  util.c
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 7/26/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#include "util.h"
int add(int a,int b){
    return a+b;
}
long factorial(long a){
    if(a<2){
        return 1;
    }else{
        return factorial(a-1)*a;
    }
}