## top.html

*Topology Optimization* with *JavaScript*.  

JavaScript interpretation of Ole Sigmund's `top.m` (Matlab) <br/>
Runs *OC Method* optimization on a mesh of *Q4 elements*.

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
FEA app with JavaScript. Uses `Sushi.js` for Matrix Operations. 

*files:*
* `finite_lite_min.html`: Up-to-date version
* `finite_lite.html:` Version with More features
* `finite_gui.html`: Point-and-Click (in progress)

*to-do:*
* Add OC Method
* Add More Examples
* Fix Finite_gui.html
* Write script for 3d truss
* Add more optimization options
