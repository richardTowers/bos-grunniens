Bos Grunniens
=============

![cc-by-sa Dennis Jarvis](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Bos_grunniens_at_Yundrok_Yumtso_Lake.jpg/320px-Bos_grunniens_at_Yundrok_Yumtso_Lake.jpg)

A dashboard / command center for visualising and manging the state of a network of services.

Architecture
------------

Haskell web server wraps a number of plugins. Each plugin is responsible for gathering data from a particular source.

CycleJS (?) front end listens to server through an EventSource. Plugins are configured with the location and types of visualisations that they produce.


