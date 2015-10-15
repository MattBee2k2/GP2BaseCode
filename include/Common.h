#ifndef _COMMON_H
#define _COMMON_H

#include <iostream>
#include <string>
#include <sstream>
#include <fstream>

using namespace std;

#include <GL/glew.h>
#include <SDL.h>
#include <SDL_opengl.h>

const string ASSET_PATH = "assets";
const string SHADER_PATH = "/shaders";

//Maths headers
#include <glm/glm.hpp>
using namespace glm;

#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#endif
