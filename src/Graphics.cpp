#include "Graphics.h"
#include "Common.h"

//Function to initialise OpenGL
void initOpenGL()
{
	//Smooth shading
	glShadeModel(GL_SMOOTH);

	//clear the background to black
	glClearColor(0.0f, 0.0f, 0.0f, 0.0f);

	//Clear the depth buffer to1.0
	glClearDepth(1.0f);

	//Enable depth testing
	glEnable(GL_DEPTH_TEST);

	//The depth test to use
	glDepthFunc(GL_LEQUAL);

	//Turn on best perspective correction
	glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
}

void setViewport(int width, int height)
{
	//Screen ratio
	GLfloat ratio;

	//make sure height is always above 1
	if (height == 0)
	{
		height = 1;
	}

	//Calculate screen ratio
	ratio = (GLfloat)width / (GLfloat)height;

	//setup Viewport
	glViewport(0, 0, (GLsizei)width, (GLsizei)height);

	//Change to projection matrix mode
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();

	//Switch to Modelview
	glMatrixMode(GL_MODELVIEW);

	//Reset using the identity matrix
	glLoadIdentity();
}