# TopOpt

Topology Optimization with JavaScript

### top.html
* `top_0.html`: minimal demo
* `top_1.html`: working version
* `top_2.html`: faster version
* `sushi.js`: *External Matrix Library*

*About*

This is a JavaScript interpretation of Ole Sigmund's '99-Line' top.m Matlab code.  It was a good opportunity to learn about JavaScripts numerical strengths and weaknesses.  JavaScript is awesome.  However, high-speed numerical libraries, at the level of numpy don't exist yet for javascript.  This is because javascript also needs to be safe and run in the browser.  I'd guess that a high-speed linear-algebra will definitely arrive within the next five years.  

to be very fast, except for matrix math.

Right now, the bottleneck is solving linear systems with (1000+) equations.

This is a work in progress.  
The bottleneck is the *time spent solving ku = f*.  Some potential options for faster matrix-math are:

* Write a more efficient sparse-solver
* distribute computation in web-workers
* Use approximation methods for ku = f
* parallelize solving ku = f using GLSL
* write ku = f solver with WebGL2's new Compute Shader
* compile ku = f solver with wasm
* write a node-OpenCL version of solver
* wait for tensorflow.js to add lin-solve

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



