class DbHive {
  // singleton
  static final DbHive _dbHive = DbHive.privateConstructor();
  factory DbHive() => _dbHive;
  DbHive.privateConstructor();
}
