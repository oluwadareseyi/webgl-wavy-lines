varying vec2 vUv;

void main () {
    vec3 color = vec3(step(0.85, mod(vUv.y * 20.0, 1.0)));
    gl_FragColor = vec4(color, 1.0);

    // gl_FragColor = vec4(vec3(1.0), 1.0);

}