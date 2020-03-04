import 'package:kopkarnet/models/akun.dart';
import 'package:kopkarnet/utilities/theme.dart';

// TODO: fetch from API

const mockAccounts = AccountSet(<AccountModel>[
  AccountModel('Tabungan Wajib', '1231231234', 100.000, AppTheme.greenColor1),
  AccountModel('Tabungan Pokok', '1231235678', 867.988, AppTheme.greenColor2),
  AccountModel('Tabungan Sukarela', '1231239012', 987.48, AppTheme.greenColor3),
]);

// TODO: fetch from API
const mockBills = AccountSet(<AccountModel>[
  AccountModel('Pinjaman 1', '20/5/2019', -45.36, AppTheme.yellowColor1),
  AccountModel('Pinjaman 2', '20/6/2019', -1200.00, AppTheme.yellowColor2),
  AccountModel('Pinjaman 3', '20/7/2019', -87.33, AppTheme.yellowColor3),
]);