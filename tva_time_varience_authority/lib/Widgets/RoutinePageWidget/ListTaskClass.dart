import 'package:flutter/material.dart';




class Task {
  const Task({
    //***************** Content ***************//
    required this.startTime,
    required this.endTime,
    required this.taskName,



    //**************** decorate *****************//
    required this.colorTask,
    required this.videoPath,
    required this.musicPath,
  });


  //***************** Content ***************//
  final int startTime;
  final int endTime;
  final String taskName;

  //**************** decorate *****************//
  final int colorTask;
  final String videoPath;
  final String musicPath;


}

const List<Task> _tasks = [
  Task(
    startTime: 1000,
    endTime: 2000,
    taskName: 'drink',
    colorTask: 100,
    videoPath: '123/123/123',
    musicPath: '123/123/123',
  ),
];