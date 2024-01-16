use("restaurant")

// Aggregation : 

db.restaurants.aggregate({$match: {rating: 5}}, {$count:"comptage"})

