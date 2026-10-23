// MongoDB queries for ALFXION-TECH HUB

// Find products with stock available
db.products.find({
  stock: { $gt: 0 }
});

// Find service requests still in progress
db.customers.find({
  "service_requests.status": "In Progress"
});

// Find all customers with email matching a pattern
db.customers.find({
  email: /example/i
});
