# Taskset
This package allows you to set the affinity of your Meteor application, by setting a simple environment variable.

## How to use Taskset?
To use Taskset, you need to define the `METEOR_TASKSET` environment variable, and it needs to be a value between 1 and X, where X represents the total amount of CPU Threads your server has.
