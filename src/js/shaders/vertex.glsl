varying vec2 vUv;

uniform float uTime;

void main () {

  vec4 position = vec4(position, 1.0);
  position.z += sin((position.x + position.y) * 10.0 + (uTime * 2.3)) * 0.03;

  float whitePosition = step(0.85, mod(position.y * 20.0, 1.0));

  // position.y += sin(uTime * 2.3) * 0.03;

  // position.y += sin(uTime * 2.3) * 0.03 + (whitePosition * 1.0);
  position.y += sin(uTime * 2.3) * 0.03 * (whitePosition) * 100.0;

  // position.y += (whitePosition * 100.0);


  // position.y += (whitePosition * 0.01);
  // position.z += sin(position.y * 5.0 + (uTime * 2.0)) * 0.03;

  vec4 projectedPosition = projectionMatrix * viewMatrix * modelMatrix * position;
  // flag wave effect

  gl_Position = projectedPosition;

  vUv = uv;
}