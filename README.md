# simple_beautiful_checklist

Eine kleine, aber schöne Flutter-Checklisten-App, um das Verwenden von `SharedPreferences` zu üben.

## Aufgabe

In diesem Projekt wurde die bestehende MockDatabase durch ein neues SharedPreferencesRepository ersetzt. Ziel war es, Daten dauerhaft in den SharedPreferences zu speichern, sodass sie auch nach einem Neustart der App erhalten bleiben.

Folgende Schritte wurden durchgeführt:

1. Klasse erstellt: Eine neue Klasse SharedPreferencesRepository wurde angelegt, die die Struktur und Funktionen eines DatabaseRepository implementiert.
2. Methoden vorbereitet: Die notwendigen Methoden wurden hinzugefügt, zunächst ohne vollständige Funktionalität.
3. Repository ausgetauscht: Das MockDatabase-Repository wurde durch das neue SharedPreferencesRepository ersetzt.
4. Methoden implementiert: Schritt für Schritt wurden die Methoden des neuen Repositories vollständig implementiert.
5. Bugfix durchgeführt: Ein Fehler, bei dem der Modus (Dark/Light) beim Neustart der App ungewollt geändert wurde, wurde behoben.

Am Ende der Umsetzung funktionierte die App wie zuvor, mit dem Vorteil, dass die Checklisten nun auch nach dem Schließen der App gespeichert bleiben. 

## App laufen lassen

Eventuell muss `flutter pub get` oder über VSCode `Flutter: Get Packages` ausgeführt werden.
Dann kann man in der `main.dart` auf "run" klicken.

## Screenshots

Splash Screen                  |  Checklist Screen
:--------------------------------:|:-------------------------:
![](screenshots/splash.png)  |  ![](screenshots/task_list.png)

Editing a Task           |  Statistics Screen
:--------------------------------:|:-------------------------:
![](screenshots/edit_task.png)  |  ![](screenshots/task_stats.png)