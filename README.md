## top.html

*Topology Optimization* with *JavaScript*.  This is a JavaScript interpretation of Ole Sigmund's `top.m` Matlab code. It runs *OC Method* optimization on a mesh of *Q4 elements*.

The challenge *right now* for this project is to find a *faster solver* for **ku = f**.  High-speed numerical libraries like `numpy` don't exist yet for javascript. There are already *safe ways* of getting the local system to contribute more to the computation effort, but implementations for linear algebra aren't fully cooked yet.  Hopefully, `tensorflow.js` will add a linear system solver (like `tf.py`).  If not, `WASM`, `WebGL`,`Web-Workers`, all offer significant opportunities for *savings*.

*files:*
* `top_0.html`: minimal demo
* `top_1.html`: working version
* `top_2.html`: faster version
* `sushi.js`: *External Matrix Library*

*to-do:*
* Write a more efficient *sparse-solver*
* distribute computation in `web-workers`
* Use *approximation* methods for ku = f
* add support for *compliant mechanisms*
* add support for *multi-load* cases
* add support for *passive* elements
* add *filter*
* improve gui

## finite_lite.html
Truss Optimization App with JavaScript. Uses `Sushi.js` Used for Matrix Operations. 

*files:*

* `finite_lite_min.html`: Up-to-date version
* `finite_lite.html:` Version with More features
* `finite_gui.html`: Point-and-Click (in progress)

*to-do:*
* Add OC Method
* Add More Examples
* Fix Finite_gui.html
* Write script for 3d truss
