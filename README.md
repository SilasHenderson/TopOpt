# TopOpt

Topology Optimization with JavaScript

#### Q4 OC Method (Based on Sigmund 99-line)
* `top_0.html`: initial topopt script *(needs sushi)*
* `top_1.html`: added windowing *(needs sushi)*
* `top_2.html`: wrote in custom ku=f solver *(no sushi)*
* `sushi.js`: *External Matrix Library*

*About*

This is a work-in-progress.  Right now, the program can only handle 20x20 meshes before getting slow.  The bottleneck is solving ku = f.  A 20x20 mesh means 21*21 = 441 nodes = 882 dof's = (882-fixed) linear equations to solve.  Some possible fixes are:

* Write a more efficient sparse-solver
* distribute computation in web-workers
* Use approximation methods for ku = f
* parallelize solving ku = f using GLSL
* write ku = f solver with WebGL2's new Compute Shader
* compile ku = f solver with wasm
* write a node-OpenCL version of solver
* wait for tensorflow.js to add lin-solve

All of this fixes are pretty difficult.  If anyone is aware of a GPU-accelerated linear system solver (not just mult and add), please let me know.  Also, sushi.js is awesome for matrices < [500x500].  However, it doesn't have a linear-solver.  Only a matrix inverter (too expensive).  The linear solver in version top_2 used same approach as sushi: work with 1d Float32Arrays, but saves on cost because it just solves (not invert) the matrix.

*To Do*
* add support for compliant mechanisms
* add support for multi-load cases
* add support for passive elements
* add filter
* add easier access to node/element labeler
* add option to plot with displacement

#### Finite-Element Analysis for Truss

`finite_lite_min.html`: Up-to-date version

`finite_lite.html:` Version with More features

*About*

Truss Optimization Gui with JavaScript.  `Sushi.js` Used for Matrix Operations. 

*To Do:*
* Add OC Method
* Add More Examples
* Fix Finite_gui.html
* Write script for 3d truss



