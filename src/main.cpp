#include "Common.h"
#include "Graphics.h"
<<<<<<< HEAD
#include "Vertex.h"

Vertex verts[] 
		//Front face
		{{-0.5f, 0.5f, 0.5f,
		1.0f, 0.0f, 1.0f, 1.0f}, //Top Left

		{ -0.5f, -0.5f, 0.5f,
		1.0f, 1.0f, 0.0f, 1.0f }, //Bottom Left

		{ 0.5f, -0.5f, 0.5f,
		0.0f, 1.0f, 1.0f, 1.0f }, //Bottom Right

		{ 0.5f, 0.5f, 0.5f,
		1.0f, 0.0f, 1.0f, 1.0f },//Top Right

		{ -0.5f, 0.5f, 0.5f,
		1.0f, 0.0f, 1.0f, 1.0f },//Top Left

		{ 0.5f, -0.5f, 0.5f,
		0.0f, 1.0f, 1.0f, 1.0f },//Bottom Right

		//Back face
		{ -0.5f, 0.5f, -0.5f,
		1.0f, 0.0f, 1.0f, 1.0f }, //Top Left

		{ -0.5f, -0.5f, -0.5f,
		1.0f, 1.0f, 0.0f, 1.0f }, //Bottom Left

		{ 0.5f, -0.5f, -0.5f,
		0.0f, 1.0f, 1.0f, 1.0f }, //Bottom Right

		{ 0.5f, 0.5f, -0.5f,
		1.0f, 0.0f, 1.0f, 1.0f },//Top Right

		{ -0.5f, 0.5f, -0.5f,
		1.0f, 0.0f, 1.0f, 1.0f },//Top Left

		{ 0.5f, -0.5f, -0.5f,
		0.0f, 1.0f, 1.0f, 1.0f },//Bottom Right

		//Side Face
};



GLuint VBO;

void render()
{
	//Set the clea colour(background)
	glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
	
	//Clear the colour and depth buffer
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	//Make the new VBO active. Repeat here as a sanity check( may have changed since initialisation)
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	//Establish its 3 coordinates per vertex with zero stride(space between elements) in array and contain floating point numbers
	glVertexPointer(3, GL_FLOAT, sizeof(Vertex), NULL);
	//The last parameter basically says that the colours start 3 floats into each element of the array
	glColorPointer(4, GL_FLOAT, sizeof(Vertex), (void**)(3 * sizeof(float)));

	//Establish array contains vertices and colours
	glEnableClientState(GL_VERTEX_ARRAY);
	glEnableClientState(GL_COLOR_ARRAY);

	//Switch to ModelView
	glMatrixMode(GL_MODELVIEW);
	//Reset using the identity matrix
	glLoadIdentity();

	gluLookAt(0.0, 0.0, 6.0, 0.0, 0.0, -1.0f, 0.0, 1.0, 0.0);

	//Translate to -5.0f on z-axis
	glTranslatef(0.0f, 0.0f, -5.0f);
	//Actually draw the triangle, giving the number of vertices provided
	glDrawArrays(GL_TRIANGLES, 0, sizeof(verts) / sizeof(Vertex));


}

void update()

{
	
}

void initScene()
{
	//Create buffer
	glGenBuffers(1, &VBO);
	//Make the new VBO active
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	//Copy Vertext Data to VBO
	glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);


}

void cleanUp()
{
	glDeleteBuffers(1, &VBO);
=======
#include "Vertices.h"

Vertex verts[]={
	//Front Face
    {-0.5f, -0.5f, 0.5f},
     {0.5f, -0.5f, 0.5f},
     {0.5f,  0.5f, 0.5f},

	 { -0.5f, -0.5f, 0.5f },
	 {-0.5f, 0.5f, 0.5f},
	 { 0.5f, 0.5f, 0.5f },

	 //Back Face
	 { -0.5f, -0.5f, -0.5f },
	 { 0.5f, -0.5f, -0.5f },
	 { 0.5f, 0.5f, -0.5f },

	 { -0.5f, -0.5f, -0.5f },
	 { -0.5f, 0.5f, -0.5f },
	 { 0.5f, 0.5f, -0.5f },

	 //Left Face
   { -0.5f, -0.5f, -0.5f },
    { -0.5f, 0.5f, -0.5f },
    {-0.5f, -0.5f,  0.5f },

    { -0.5f, 0.5f, -0.5f },
    { -0.5f, 0.5f, 0.5f },
    { -0.5f, -0.5f, 0.5f },

	 //Right Face
   { 0.5f, -0.5f, -0.5f },
    { 0.5f, 0.5f, -0.5f },
    {0.5f, -0.5f,  0.5f },

    { 0.5f, 0.5f, -0.5f },
    { 0.5f, 0.5f, 0.5f },
    { 0.5f, -0.5f, 0.5f },

   //top Face
   {0.5f,  0.5f, 0.5f},
   {0.5f,  0.5f, -0.5f},
   {-0.5f,  0.5f, -0.5f},

   {-0.5f,  0.5f, -0.5f},
   {0.5f,  0.5f, 0.5f},
   {-0.5f,  0.5f, 0.5f},

	 //bottom Face
   {0.5f,  -0.5f, 0.5f},
   {0.5f,  -0.5f, -0.5f},
   {-0.5f,  -0.5f, -0.5f},

   {-0.5f,  -0.5f, -0.5f},
   {0.5f,  -0.5f, 0.5f},
   {-0.5f,  -0.5f, 0.5f},
   };

float xRotation=0.0f;
float yRotation=0.0f;
float zRotation=0.0f;

GLuint vertexBuffer;

void initScene()
{
  vertexBuffer=createAndFillBuffer(verts,30);
  //glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
}

void cleanUp()
{
  glDeleteBuffers(1,&vertexBuffer);
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
	  setCameraProperties(0.0f, 0.0f, 5.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
    glRotatef(xRotation,1.0f,0.0f,0.0f);
    glRotatef(yRotation,0.0f,1.0f,0.0f);
    glRotatef(zRotation,0.0f,0.0f,1.0f);

	glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);

	glEnableClientState(GL_VERTEX_ARRAY);
	glVertexPointer(3, GL_FLOAT, 0, 0);

	glDrawArrays(GL_TRIANGLES, 0, 30);

	glDisableClientState(GL_VERTEX_ARRAY);
	glBindBuffer(GL_ARRAY_BUFFER, 0);

>>>>>>> refs/remotes/origin/master
}

int main(int argc, char * arg[])
{
<<<<<<< HEAD
	bool run = true;

	//init everything - SDL, if it is nonzero we have a problem
	if (SDL_Init(SDL_INIT_EVERYTHING) != 0)
	{
		std::cout << "ERROR SDL_Init" << SDL_GetError() << std::endl;

		return -1;
	}

	//Create Window
	SDL_Window * window = SDL_CreateWindow("SDL", // Window title
						SDL_WINDOWPOS_CENTERED,  // x position, centered
						SDL_WINDOWPOS_CENTERED,  // y position, centered
						640,					 // Width, in pixels
						480,					 // height, in pixels
						SDL_WINDOW_OPENGL		 // flags
						);

	//Creat an OpenGL context associated with the window
	SDL_GLContext glcontext = SDL_GL_CreateContext(window);

	//Initilisation
	//Call our InitOpenGL Function
	initOpenGL();
	initScene();
	//Set our viewport
	setViewport(640, 480);

	//Value to hold the event generated by SDL
	SDL_Event event;
	//Game Loop
	while (run)
	{
		//While we still have events in the queu
		while (SDL_PollEvent(&event))
		{
			//Get event type
			if (event.type == SDL_QUIT || event.type == SDL_WINDOWEVENT_CLOSE)
			{
				//Set our boolean which controls the loop to false
				run = false;
			}
		}

		//update
		update();
		//Then draw
		render();

		//Call swap so that our GL back buffer is displayed
		SDL_GL_SwapWindow(window);

	}

	//Clean up, reverse order!!!
	cleanUp();
	SDL_GL_DeleteContext(glcontext);
	SDL_DestroyWindow(window);
	SDL_Quit();
	return 0;
=======
    //Controls the game loop
    bool run=true;
    bool pause=false;
    // init everyting - SDL, if it is nonzero we have a problem
    if(SDL_Init(SDL_INIT_EVERYTHING) != 0)
    {
        std::cout << "ERROR SDL_Init " <<SDL_GetError()<< std::endl;

        return -1;
	}

	//Request opengl 4.1 context, Core Context
	//SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK,SDL_GL_CONTEXT_PROFILE_CORE);
	//SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 4);
	//SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 1);

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

	initScene();



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
                }
            }
            if (event.type==SDL_KEYDOWN){
                  switch( event.key.keysym.sym )
                  {
                    case SDLK_LEFT:
                        yRotation-=1.0f;
                      break;
                      case SDLK_RIGHT:
                        yRotation+=1.0f;
                      break;
                      case SDLK_UP:
                        xRotation-=1.0f;
                      break;
                        case SDLK_DOWN:
                        xRotation+=1.0f;
                      break;
                    default:
                      break;
                  }
            }
        }
        //init Scene
        //render
        render();
        //Call swap so that our GL back buffer is displayed
        SDL_GL_SwapWindow(window);

    }

    // clean up, reverse order!!!
    cleanUp();
    SDL_GL_DeleteContext(glcontext);
    SDL_DestroyWindow(window);
    SDL_Quit();

    return 0;
>>>>>>> refs/remotes/origin/master
}
