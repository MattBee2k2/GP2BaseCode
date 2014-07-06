#include <iostream>

#ifdef __APPLE__
#include <SDL2/SDL.h>
#include <SDL2/SDL_opengl.h>
#include <OpenGL/glu.h>
#elif WIN32
#include <SDL.h>
#include <SDL_opengl.h>
#include <gl\GLU.h>
#endif

//Function to initialise OpenGL
void initOpenGL()
{
    //Smooth shading
    glShadeModel( GL_SMOOTH );
    
    //clear the background to black
    glClearColor( 0.0f, 0.0f, 0.0f, 0.0f );
    
    //Clear the depth buffer
    glClearDepth( 1.0f );
    
    //Enable depth testing
    glEnable( GL_DEPTH_TEST );
    
    //The depth test to go
    glDepthFunc( GL_LEQUAL );
    
    //Turn on best perspective correction
    glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );
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
    
    //Change to poject matrix mode
    glMatrixMode( GL_PROJECTION );
    glLoadIdentity( );
    
    //Calculate perspective matrix, using glu library functions
    gluPerspective( 45.0f, ratio, 0.1f, 100.0f );
    
    //Swith to ModelView
    glMatrixMode( GL_MODELVIEW );
    
    //Reset using the Indentity Matrix
    glLoadIdentity( );
}

void render()
{
    //old imediate mode!
    //Set the clear colour(background)
    glClearColor( 0.0f, 0.0f, 0.0f, 0.0f );
    //clear the colour and depth buffer
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
    
    //Swith to ModelView
    glMatrixMode( GL_MODELVIEW );
    //Reset using the Indentity Matrix
    glLoadIdentity( );
    //translate
    glTranslatef( -1.5f, 0.0f, -6.0f );
    
    //Begin drawing triangles
    glBegin( GL_TRIANGLES );
        glVertex3f(  0.0f,  1.0f, 0.0f ); // Top
        glVertex3f( -1.0f, -1.0f, 0.0f ); // Bottom Left
        glVertex3f(  1.0f, -1.0f, 0.0f ); // Bottom Right
    glEnd( );
    
    //Translate model view 3 units from previos position
    glTranslatef( 3.0f, 0.0f, 0.0f );
    
    //Begin Drawing Quads
    glBegin( GL_QUADS );
        glVertex3f( -1.0f,  1.0f, 0.0f ); // Top Left
        glVertex3f(  1.0f,  1.0f, 0.0f ); // Top Right
        glVertex3f(  1.0f, -1.0f, 0.0f ); // Bottom Right
        glVertex3f( -1.0f, -1.0f, 0.0f ); // Bottom Left
    glEnd( );
}

int main(int argc, char * arg[])
{
    //Controls the game loop
    bool run=true;
    bool pause=false;
    // init everyting - SDL, if it is nonzero we have a problem
    if(SDL_Init(SDL_INIT_EVERYTHING) != 0)
    {
        std::cout << "ERROR SDL_Init " <<SDL_GetError()<< std::endl;
        
        return -1;
    }
    
    //Create a window
    SDL_Window * window = SDL_CreateWindow(
                                           "SDL",             // window title
                                           SDL_WINDOWPOS_CENTERED,     // x position, centered
                                           SDL_WINDOWPOS_CENTERED,     // y position, centered
                                           640,                        // width, in pixels
                                           480,                        // height, in pixels
                                           SDL_WINDOW_OPENGL           // flags
                                           );
    // Create an OpenGL context associated with the window.
    SDL_GLContext glcontext = SDL_GL_CreateContext(window);
    
    //Call our InitOpenGL Function
    initOpenGL();
    //Set our viewport
    setViewport(640,480);
    
    //Value to hold the event generated by SDL
    SDL_Event event;
    //Game Loop
    while(run)
    {
        //While we still have events in the queue
        while (SDL_PollEvent(&event)) {
            //Get event type
            if (event.type == SDL_QUIT || event.type == SDL_WINDOWEVENT_CLOSE) {
                //set our boolean which controls the loop to false
                run = false;
            }
            if (event.type==SDL_WINDOWEVENT)
            {
                switch (event.window.event) {
                    case SDL_WINDOWEVENT_MINIMIZED:
                            pause=true;
                        break;
                    default:
                        break;
                }
                
            }
        }
        
        //render
        render();
        //Call swap so that our GL buffer is displayed
        SDL_GL_SwapWindow(window);
        
    }
    
    // clean up, reverse order!!!
    SDL_GL_DeleteContext(glcontext);
    SDL_DestroyWindow(window);
    SDL_Quit();
    
    return 0;
}