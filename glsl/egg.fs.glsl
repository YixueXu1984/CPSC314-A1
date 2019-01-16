#version 300 es

precision highp float;
precision highp int;
out vec4 out_FragColor;
uniform vec3 bunnyPosition;
in vec3 eggP;

// HINT: YOU WILL NEED TO PASS IN THE CORRECT VARYING (SHARED) VARIABLE)

void main() {

  // HINT: YOU WILL NEED TO SET YOUR OWN DISTANCE THRESHOLD

    float dist = distance(eggP, bunnyPosition);

  if (dist>5.0) {
  out_FragColor = vec4(0.0,0.0,0.0, 1.0); //black
  } else{
  out_FragColor = vec4(1.0,1.0,1.0, 1.0); //white
  }
}