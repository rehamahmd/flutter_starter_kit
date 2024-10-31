enum UsersRolesEnum {
  storeAdmin(2, 'StoreAdmin'),
  employee(3, 'Employee'),
  dataManager(5, 'DataManager'),
  unassigned(6, 'Unassigned'),
  publicUser(7, 'PublicUser');

  final int value;
  final String name;
  const UsersRolesEnum(this.value, this.name);
}
