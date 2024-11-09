class Global {
  static final Global _instance = Global._internal();
  factory Global() => _instance;
  Global._internal();

  // Define your variable here
  String?  userUUID;
}
