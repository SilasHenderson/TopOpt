# TopOpt

Topology Optimization with JavaScript

* top_0: initial topopt script
* top_1: added windowing
* top_2: wrote in custom ku=f solver

### About

This is a work-in-progress.  Right now, the program can only handle 20x20 meshes before getting slow.  The bottleneck is solving ku = f.  A 20x20 mesh means 21*21 = 441 nodes = 882 dof's = (882-fixed) linear equations to solve.  Some possible fixes are:

* Write a more efficient sparse-solver
* distribute computation in web-workers
* Use approximation methods for ku = f
* parallelize solving ku = f using GLSL
* write ku = f solver with WebGL2's new Compute Shader
* compile ku = f solver with wasm
* write a node-OpenCL version of solver
* wait for tensorflow.js to add lin-solve

All of this fixes are pretty difficult.  If anyone is aware of a GPU-accelerated linear system solver (not just mult and add), please let me know.  
