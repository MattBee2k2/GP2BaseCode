#include "Common.h"
#include "Graphics.h"
#include "Vertices.h"
#include "Shader.h"
#include "Texture.h"

Vertex verts[]={
//Front
{ vec3(-0.5f, 0.5f, 0.5f),
   vec4( 1.0f, 0.0f, 1.0f, 1.0f), vec2(0.0f, 0.0f) },// Top Left

	{ vec3(-0.5f, -0.5f, 0.5f),
	vec4(1.0f, 1.0f, 0.0f, 1.0f), vec2(0.0f, 1.0f) },// Bottom Left

	{ vec3(0.5f, -0.5f, 0.5f),
	vec4(0.0f, 1.0f, 1.0f, 1.0f), vec2(1.0f, 1.0f) }, //Bottom Right

	{ vec3(0.5f, 0.5f, 0.5f),
	vec4(1.0f, 0.0f, 1.0f, 1.0f), vec2(1.0f, 0.0f) },// Top Right


//back
	{ vec3(-0.5f, 0.5f, -0.5f),
	vec4(1.0f, 0.0f, 1.0f, 1.0f), vec2(0.0f, 0.0f) },// Top Left

{ vec3(-0.5f, -0.5f, -0.5f),
vec4(1.0f, 1.0f, 0.0f, 1.0f), vec2(0.0f, 1.0f) },// Bottom Left

{ vec3(0.5f, -0.5f, -0.5f),
vec4(0.0f, 1.0f, 1.0f, 1.0f), vec2(1.0f, 1.0f) }, //Bottom Right

{ vec3(0.5f, 0.5f, -0.5f),
vec4(1.0f, 0.0f, 1.0f, 1.0f), vec2(1.0f, 0.0f) },// Top Right

};

GLuint indices[]={
    //front
    0,1,2,
    0,3,2,

    //left
    4,5,1,
    4,1,0,

    //right
    3,7,2,
    7,6,2,

    //bottom
    1,5,2,
    6,2,5,

    //top
    4,0,7,
    0,7,3,

    //back
    4,5,6,
    4,7,6
};

//Matrices
mat4 viewMatrix;
mat4 projMatrix;
mat4 worldMatrix;
mat4 MVPMatrix;

float xRotation=0.0f;
float yRotation=0.0f;
float zRotation=0.0f;

GLuint VBO;
GLuint EBO;
GLuint VAO;

GLuint shaderProgram = 0;

GLuint textureMap;
GLuint fontTexture;

void update()
{
	projMatrix = perspective(45.0f, 640.0f / 480.0f, 0.1f, 100.0f);

	viewMatrix = lookAt(vec3(0.0f, 0.0f, 10.0f), vec3(0.0f, 0.0f, 0.0f), vec3(0.0f, 1.0f, 0.0f));

	worldMatrix = translate(mat4(1.0f), vec3(0.0f, 0.0f, 0.0f));

	MVPMatrix = projMatrix*viewMatrix*worldMatrix;

}

void initScene()
{
	//load texture & bind
	string texturePath = ASSET_PATH + TEXTURE_PATH + "/texture.png";
	textureMap = loadTextureFromFile(texturePath);

	string fontPath = ASSET_PATH + FONT_PATH + "/OratorStd.otf";
	fontTexture = loadTextureFromFont(fontPath, 18, "Hello World");

	glBindTexture(GL_TEXTURE_2D, textureMap);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_MIRRORED_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_MIRRORED_REPEAT);
	glGenerateMipmap(GL_TEXTURE_2D);

	glBindTexture(GL_TEXTURE_2D, fontTexture);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_MIRRORED_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_MIRRORED_REPEAT);


	glGenVertexArrays(1, &VAO);
	glBindVertexArray(VAO);

    glGenBuffers(1, &VBO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);

    //create buffer
    glGenBuffers(1, &EBO);
    //Make the EBO active
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    //Copy Index data to the EBO
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

	//Tell the shader that 0 is the position element
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), NULL);

	glEnableVertexAttribArray(1);
	glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void**)(sizeof(vec3)));

	glEnableVertexAttribArray(2);
	glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void**)(sizeof(vec3) + sizeof(vec4)));

    GLuint vertexShaderProgram = 0;
    string vsPath = ASSET_PATH + SHADER_PATH + "/textureVS.glsl";
    vertexShaderProgram = loadShaderFromFile(vsPath, VERTEX_SHADER);
    checkForCompileErrors(vertexShaderProgram);
  
    GLuint fragmentShaderProgram = 0;
    string fsPath = ASSET_PATH + SHADER_PATH + "/textureFS.glsl";
    fragmentShaderProgram = loadShaderFromFile(fsPath, FRAGMENT_SHADER);
    checkForCompileErrors(fragmentShaderProgram);
  
    shaderProgram = glCreateProgram();
    glAttachShader(shaderProgram, vertexShaderProgram);
    glAttachShader(shaderProgram, fragmentShaderProgram);
    glLinkProgram(shaderProgram);
    checkForLinkErrors(shaderProgram);
  
    //now we can delete the VS & FS Programs
    glDeleteShader(vertexShaderProgram);
    glDeleteShader(fragmentShaderProgram);
  
    glBindAttribLocation(shaderProgram, 0, "vertexPosition");
	glBindAttribLocation(shaderProgram, 1, "vertexColour");
	glBindAttribLocation(shaderProgram, 2, "vertexTexCoords");

}

void cleanUp()
{
	glDeleteTextures(1, &fontTexture);
	glDeleteTextures(1, &textureMap);
	glDeleteProgram(shaderProgram);
	glDeleteBuffers(1, &EBO);
	glDeleteVertexArrays(1, &VAO);
	glDeleteBuffers(1, &VBO);
}

void render()
{
    //old imediate mode!
    //Set the clear colour(background)
    glClearColor( 0.0f, 0.0f, 0.0f, 0.0f );
    //clear the colour and depth buffer
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

	glUseProgram(shaderProgram);

//	glEnable(GL_BLEND);
	//glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	GLint MVPLocation = glGetUniformLocation(shaderProgram, "MVP");
	GLint texture0Location = glGetUniformLocation(shaderProgram, "texture0");

	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, fontTexture);

	glUniformMatrix4fv(MVPLocation, 1, GL_FALSE, glm::value_ptr(MVPMatrix));
	glUniform1i(texture0Location, 0);

	glBindVertexArray(VAO);

    glDrawElements(GL_TRIANGLES, sizeof(indices)/sizeof(GLuint), GL_UNSIGNED_INT,0);

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

	int imageInitFlags = IMG_INIT_JPG | IMG_INIT_PNG;
	int returnInitFlags = IMG_Init(imageInitFlags);
	if (((returnInitFlags)& (imageInitFlags)) != imageInitFlags)
	{
		cout << "ERROR SDL_Image Init" << IMG_GetError() << endl;
	}

	if (TTF_Init() == -1)
	{
		std::cout << "ERROR TTF_Init:" << TTF_GetError();
	}

	//Request opengl 4.1 context, Core Context
	//SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK,SDL_GL_CONTEXT_PROFILE_CORE);
	//SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 4);
	//SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 1);

	//Ask for version 4.2 of OpenGL
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 4);
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 2);
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);

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
	IMG_Quit();
	TTF_Quit();
    SDL_Quit();

    return 0;
}
