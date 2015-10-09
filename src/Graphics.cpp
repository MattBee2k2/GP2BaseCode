#include "Graphics.h"
#include "Common.h"

//Function to initialise OpenGL
void initOpenGL()
{
	GLenum err = glewInit();
	if (GLEW_OK != err)
	{
		/* Problem: glewInit failed, something is seriously wrong. */
		std::cout << "Error: " << glewGetErrorString(err) << std::endl;
	}

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

//Function to set/reset viewport
void setViewport( int width, int height )
{
    //screen ration
    GLfloat ratio;

    //make sure height is always above 1
    if ( height == 0 ) {
        height = 1;
    }

    //calculate screen ration
    ratio = ( GLfloat )width / ( GLfloat )height;

    //Setup viewport
    glViewport( 0, 0, ( GLsizei )width, ( GLsizei )height );

    //Change to projection matrix mode
    glMatrixMode( GL_PROJECTION );
    glLoadIdentity( );

    //Calculate perspective matrix, using glu library functions
    gluPerspective( 45.0f, ratio, 0.1f, 100.0f );

    //Switch to ModelView
    glMatrixMode( GL_MODELVIEW );

    //Reset using the Identity Matrix
    glLoadIdentity( );
}
