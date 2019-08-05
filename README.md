# TopOpt

Topology Optimization with JavaScript

* top_0: initial topopt script
* top_1: added windowing
* top_2: wrote in custom ku=f solver

### About

This is a work-in-progress.  Right now, the program can only handle 20x20 meshes before getting slow.  The bottleneck is solving ku = f.  A 20x20 mesh means 21*21 = 441 nodes = 882 dof's = 882 linear equations to solve.  
