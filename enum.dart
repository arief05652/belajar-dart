enum Role {
  admin(fungsi: "Admin"),
  user(fungsi: "User"),
  guest(fungsi: "Guest");

  // Constructor enum
  const Role({required this.fungsi});

  // Variable enum
  final String fungsi;

  // getter enum
  void get roles => print(admin.fungsi);

  // fungsi enum
  String getRoleName(Role role) => role.fungsi;
}

void main() {
  // cara pemakaian enum 
  Role.admin.roles;

  print(Role.admin.getRoleName(Role.admin));
}
