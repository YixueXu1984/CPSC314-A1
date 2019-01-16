#version 300 es

precision highp float;
precision highp int;
out vec4 out_FragColor;
in float dist;

// HINT: YOU WILL NEED TO PASS IN THE CORRECT VARYING (SHARED) VARIABLE)

void main() {

  // HINT: YOU WILL NEED TO SET YOUR OWN DISTANCE THRESHOLD
  vec3 bunnyColor;
  if (dist<5.0) {
  bunnyColor.x = 1.0;
  } else bunnyColor.x = 0.0;
  bunnyColor.y = 1.0;
  bunnyColor.z = 1.0;

  // Set constant color red
  out_FragColor = vec4(bunnyColor, 1.0); // REPLACE ME

}