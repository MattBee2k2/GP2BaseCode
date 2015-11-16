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

//Functiontoset/resetviewport
void setViewport(int width, int height)
{
	//screenration
	GLfloat ratio;
	//makesureheightisalwaysabove1
	if (height == 0)
	{
		height = 1;
	}
	//calculatescreenration
	ratio = (GLfloat)width / (GLfloat)height;
	//Setupviewport
	glViewport(0, 0, (GLsizei)width, (GLsizei)height);
	//Changetoprojectionmatrixmode
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	//Calculateperspectivematrix,usingglulibraryfunctions
	gluPerspective(45.0f, ratio, 0.1f, 100.0f);
	//SwitchtoModelView
	glMatrixMode(GL_MODELVIEW);
	//ResetusingtheIdentityMatrix
	glLoadIdentity();
}