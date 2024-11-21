import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_beautiful_checklist_exercise/shared/database_repository.dart';

class SharedPreferencesRepository implements DatabaseRepository {
  final SharedPreferencesAsync prefs = SharedPreferencesAsync();

  List<String> _items = [];

  @override
  Future<void> addItem(String item) async {
    _items.add(item);
    await saveItem();
  }

  @override
  Future<void> deleteItem(int index) async {
    _items.removeAt(index);
    await saveItem();
  }

  @override
  Future<void> editItem(int index, String newItem) async {
    getItems();
    _items[index] = newItem;
    await saveItem();
  }

  @override
  Future<List<String>> getItems() async {
    _items = await prefs.getStringList("toDos") ?? [];
    return _items;
  }

  @override
  Future<int> get itemCount async {
    await getItems();
    return _items.length;
  }

  Future<void> saveItem() async {
    await prefs.setStringList("toDos", _items);
  }
}
