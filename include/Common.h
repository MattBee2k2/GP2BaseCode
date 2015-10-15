#ifndef _COMMON_H
#define _COMMON_H

#include <iostream>
<<<<<<< HEAD
=======
#include <string>
#include <sstream>

using namespace std;

>>>>>>> refs/remotes/origin/master
#include <GL/glew.h>
#include <SDL.h>
#include <SDL_opengl.h>

<<<<<<< HEAD
#ifdef _APPLE_
#include <OPenGL/glu.h>
#elif (_WIN64 || _WIN32)
=======

#ifdef __APPLE__
#include <OpenGL/glu.h>
#elif WIN32
>>>>>>> refs/remotes/origin/master
#include <gl\GLU.h>
#endif

#endif
