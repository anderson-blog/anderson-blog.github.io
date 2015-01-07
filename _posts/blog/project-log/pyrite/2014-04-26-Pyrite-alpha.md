---
layout: post
title: "​Software update – Pyrite alpha"
date: 2014-04-25
categories: 
- blog 
- Project Logs
project:
- Pyrite
img: post01.jpg
thumb: thumb01.jpg
---

I'm pre-releasing the alpha version of Pyrite, I'm still need to finish the GUI, fix some bugs and optimize the graph algorithms, there is a lot of work to do but will be nice to hear some comments about the software, so be free to look this unfinished build.

<!--more-->

This version uses a framework that I'm developing in the last months (S3F - https://github.com/anderson-/S3F, page in Portuguese, sorry) and includes an modified Paul Falstad's circuit simulator (www.falstad.com/circuit) as the default schematic editor. It can now run several simulations independently, and have a new component for allowing modularity (sub-circuits).

The next step is defining the ALU design, simulating it, and create the 3D schematic.



Download (linux): https://github.com/anderson-/Pyrite/releases



2D Schematic editor shortcuts:

“;” - place sub-circuit (right-click->edit, for choosing the circuit);

“+” - place logic input;

“-” - place logic output;

3D schematic editor shortcuts:

“1” -> “5” - change grid;

“r” - place source and ground in positions {4, 2, 2} and {2, 2, 2}, respectively;

“ENTER” - start fitting alghorithm; 

