#version 300 es

// HINT: YOU WILL NEED TO PASS IN THE CORRECT UNIFORM AND CREATE THE CORRECT SHARED VARIABLE
uniform vec3 bunnyPosition;
out float dist;

void main() {



  	// HINT: BE MINDFUL OF WHICH COORDINATE SYSTEM THE BUNNY'S POSITION IS IN
  	    vec4 ePos = modelMatrix * vec4(position, 1.0);

        // HINT: USE bunnyPosition HERE
        vec4 eggPos = ePos + vec4(bunnyPosition,1.0);

        vec3 eggP = vec3(eggPos);

  float dist = distance(bunnyPosition, eggP);


    // Multiply each vertex by the model matrix to get the world position of each vertex, then the view matrix to get the position in the camera coordinate system, and finally the projection matrix to get final vertex position
    gl_Position = projectionMatrix * viewMatrix * eggPos;

}