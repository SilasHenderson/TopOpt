# TopOpt

Topology Optimization with JavaScript

### top.html
* `top_0.html`: minimal demo
* `top_1.html`: working version
* `top_2.html`: faster version
* `sushi.js`: *External Matrix Library*

*About*

This is a JavaScript interpretation of Ole Sigmund's '99-Line' top.m Matlab code. It runs OC Method optimization on a mesh of Q4 elements.

The challenge *right now* for this project is to find a faster solver for ku = f.  Numberical computing in javascript is still new. a. High-speed numerical libraries like `numpy` don't exist yet for javascript.  This is because javascript needs to run *safely in the browser*.  The native computer's full power isn't used, because javascript is sand-boxed within the browser.  However, there are already **three *safe* ways** of getting the local system to contribute more to the computation effort. These are

* `WASM`: (a new Low-Level Virtual Machine)
* `WebGL` (Use the GPU for math)
* `Web-Workers` ( Use more Threads )

Additional possibilities for speeding up this 
* Write a more efficient sparse-solver
* distribute computation in web-workers
* Use approximation methods for ku = f
* parallelize solving ku = f using `GLSL`
* write ku = f solver with WebGL2's new `Compute Shader`
* compile ku = f solver with `wasm`
* write a `node-OpenCL` version of solver
* wait for `tensorflow.js` to add lin-solve

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
