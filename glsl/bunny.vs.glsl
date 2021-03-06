#version 300 es

// The uniform variable is set up in the javascript code and the same for all vertices
uniform vec3 bunnyPosition;
uniform vec3 bunnyHight;

// HINT: YOU WILL NEED AN ADDITIONAL UNIFORM VARIABLE TO MAKE THE BUNNY HOP

// Create shared variable for the vertex and fragment shaders
out vec3 interpolatedNormal;

void main() {
    // Set shared variable to vertex normal
    interpolatedNormal = normal;

    // HINT: USE bunnyPosition HERE
    vec3 jumpBunnyjump;
     jumpBunnyjump.x = bunnyPosition.x + bunnyHight.x;
     jumpBunnyjump.z = bunnyPosition.z;
     jumpBunnyjump.y = bunnyPosition.y + bunnyHight.y;

    vec4 bPos = modelMatrix * vec4(position, 1.0);
    vec4 bunnyPos =  bPos + vec4(jumpBunnyjump,0.0);

    // Multiply each vertex by the model matrix to get the world position of each vertex, then the view matrix to get the position in the camera coordinate system, and finally the projection matrix to get final vertex position
    gl_Position = projectionMatrix * viewMatrix * bunnyPos;
 }