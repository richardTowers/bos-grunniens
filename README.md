Bos Grunniens
=============

A dashboard / command center for visualising and manging the state of a network of services.

Architecture
------------

Haskell web server wraps a number of plugins. Each plugin is responsible for gathering data from a particular source.

CycleJS (?) front end listens to server through an EventSource. Plugins are configured with the location and types of visualisations that they produce.


