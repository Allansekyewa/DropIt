enum TrackingStatus {
  processing,       // Order being prepared
  pickedUp,         // Driver collected package
  inTransit,        // On the way
  outForDelivery,   // Near destination
  delivered,        // Successfully delivered
  delayed,          // Held due to traffic/weather
  failed,           // Failed attempt (e.g., closed address)
}