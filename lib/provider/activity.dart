import 'package:flutter/material.dart';

class ActivityState extends ChangeNotifier {
  List<ActivityItem> activityItemList = [
    ActivityItem(activityName: "Bring bottle to work", isDone: false),
    ActivityItem(activityName: "Use stainless straw", isDone: false),
    ActivityItem(activityName: "Commute with public transportation", isDone: false),
  ];
  bool isLoading = true;


  // Pure Functions for State 
  void setActivityItemList(List<ActivityItem> activityItemList) {
    this.activityItemList = activityItemList;
    notifyListeners();
  }

  void setIsLoading(bool isLoading) {
    this.isLoading = isLoading;
    notifyListeners();
  }

  List<ActivityItem> getActivityItemList() {
    return activityItemList;
  }
}

class ActivityItem {
  String activityName;
  bool isDone;

  ActivityItem({
    this.activityName = "",
    this.isDone = false,
  });
}