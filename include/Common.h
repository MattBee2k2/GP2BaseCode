#ifndef _COMMON_H
#define _COMMON_H

#include <iostream>
#include <GL/glew.h>
#include <SDL.h>
#include <SDL_opengl.h>

#ifdef _APPLE_
#include <OPenGL/glu.h>
#elif (_WIN64 || _WIN32)
#include <gl\GLU.h>
#endif

#endif
