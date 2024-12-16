# design_patterns_dart

Observer Pattern:

Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.

🧩 Concept
The Observer Pattern allows you to create a relationship where a single object (called the Subject) can have multiple dependent objects (Observers). When the state of the Subject changes, all its Observers are automatically notified and updated. This pattern is useful in scenarios where changes in one object require automatic updates to other objects.

📚 Common Use Cases
- Weather Applications: When weather data changes, all linked UI components (like temperature, humidity, etc.) are updated automatically.
- Data Synchronization: Keeping multiple views or devices in sync with a single source of truth.
- Notification Systems: When an event occurs, notifications are sent to all subscribers.

⚙️ How It Works
- **Subject**: The main object that holds the state. When its state changes, it notifies all registered Observers.
- **Observers**: Objects that watch the Subject. When notified, they update themselves accordingly.

This design pattern promotes loose coupling, making it easier to maintain and extend your code as new Observers can be added without changing the Subject.
