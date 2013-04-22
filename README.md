ar-challenge
============

Problem set for training AR

Goal
====

Model a graph with active record models.

Something that looks like:

```sh
node - link - node - link - node
node -  /
```

# Requirements:
 * A link has upstream and downstream nodes
 * A node has an upstream and downstream link
 * A node should have a list of the closest upstream and downstream nodes

# Notes:

The models are created and empty migrations already setup. Fill out
the migrations and setup the associations. 

# Excerse:

Create a simple program in the rake task under `lib/tasks/program.rake` which demonstraights the solution.

To run the task, type `rake program:run` on the command line.
