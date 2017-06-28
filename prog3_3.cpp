#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <iostream>

using namespace std;

extern "C"{
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

int main(int argc, char* argv[]){
	printf("Assignment #3-3, Meelad Dawood, mdawood2@sdsu.edu\n");
	string filename = argv[1];
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);
	luaL_dofile(L, filename.c_str());
	char expression = *luaL_checkstring(L,-1);
	cout << expression << endl;

}

