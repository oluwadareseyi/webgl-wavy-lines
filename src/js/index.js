import * as THREE from "three";
import Canvas from "./app/Canvas";

const canvas = new Canvas();
const clock = new THREE.Clock();

const render = () => {
  const elapsedTime = clock.getElapsedTime();

  // Update canvas
  canvas.render(elapsedTime);

  // Call render again on the next frame
  window.requestAnimationFrame(render);
};

render();

// resize event
window.addEventListener("resize", () => {
  canvas.onResize();
});
