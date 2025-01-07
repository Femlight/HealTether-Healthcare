import 'package:flutter/foundation.dart';
import 'package:heal_tether/model/user.dart';
import 'package:heal_tether/service/api_service.dart';

class UserProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<User> _users = [];
  List<User> get users => _users;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  String _error = '';
  String get error => _error;
  String _searchQuery = '';

  List<User> get filteredUsers => _searchQuery.isEmpty
      ? _users
      : _users
          .where((user) =>
              user.name.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();

  Future<void> fetchUsers() async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      _users = await _apiService.getUsers();
      _error = '';
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void updateSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }
}
