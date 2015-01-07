---
layout: post
title: "New placing algorithm & OpenGL help needed"
date: 2014-04-25
categories: 
- blog 
- Project Logs
project:
- Pyrite
---

Hi guys, I've been very busy with college lately but I got a few updates to show. 

First of all, the project was featured on Hackaday! I would like to thank the great feedback from the Hackaday community, It really means a lot to me!

Recently I implemented some new functions on Pyrite (not committed yet), the first is a new method of placing components in the grid. The idea was to find independent cycles in the circuit graph and try to position then perpendicular to each other before routing.

<!--more-->

Lately I realized that mostly circuit graphs have a big cycle containing most of the components. This way the surplus components can be placed in the middle of the cycle during routing. Currently the cycle can only be placed in the shape of a rectangle, in latter versions will be possible not only to chose the cycle shape, but "fold" the shape so maximum density can be achieved.

The current algorithm find some random cycles and them selects one to place. The results look promising:




I also start implementing an boundary editor for creating delimited circuits:





###Processing vs pure JOGL

Currently Pyrite uses Processing for drawing 3D graphics, the problem is that Processing can only run one instance at a time, it sometimes fail to load on Swing panels and it is sometimes slow. So I looking for alternatives. I wold like to use only JOGL, I only need 3 things:

- Drawing simple shapes and lines
- Moving around easily (Camera)
- Picking objects (color picking probably)

I found really hard to find some alternative and developing this all by myself with 0 knowledge of OpenGL has showed to be a hard task, so if you know OpenGL and like to help, let me know!
