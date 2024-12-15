abstract class Observer {
  /// Updates the observer with a new message
  /// @param message The message to be delivered to the observer
  /// @throws StateError if observer is not properly initialized
  void update(String message);
}