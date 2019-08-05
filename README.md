## top.html

Topology Optimization with JavaScript.  This is a JavaScript interpretation of Ole Sigmund's '99-Line' top.m Matlab code. It runs OC Method optimization on a mesh of Q4 elements.  The files related to this project are:

*Files: top.html*

* `top_0.html`: minimal demo
* `top_1.html`: working version
* `top_2.html`: faster version
* `sushi.js`: *External Matrix Library*

*About: top.html*

The challenge *right now* for this project is to find a faster solver for ku = f.  Numberical computing in javascript is still new. High-speed numerical libraries like `numpy` don't exist yet for javascript.  This is because javascript needs to run *safely in the browser*.  The native computer's full power isn't used, because javascript is sand-boxed within the browser.  However, there are already *safe ways* of getting the local system to contribute more to the computation effort. These are`WASM`, `WebGL`,`Web-Workers`.

*To Do: top.html*
* Write a more efficient *sparse-solver*
* distribute computation in `web-workers`
* Use *approximation* methods for ku = f
* add support for compliant mechanisms
* add support for multi-load cases
* add support for passive elements
* add filter
* add easier access to node/element labeler
* add option to plot with displacement

## finite_lite.html

Truss Optimization App with JavaScript. Uses `Sushi.js` Used for Matrix Operations. 

*Files: finite lite*

`finite_lite_min.html`: Up-to-date version

`finite_lite.html:` Version with More features

`finite_gui.html`: Point-and-Click (in progress)

*To Do: finite_lite*
* Add OC Method
* Add More Examples
* Fix Finite_gui.html
* Write script for 3d truss
