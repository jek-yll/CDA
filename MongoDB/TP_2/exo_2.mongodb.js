use("datachuck");

// db.users.find();

// db.users.insertOne({
//     name: "Chuck Norris",
//     age: 77,
//     hobbies: [
//         "Karate", "Kung-fu", "Rulling the world"
//     ]
// })

// db.users.find({name: "Chuck Norris"}, {_id: 0})

// db.users.find({$and: [{age: {$gte: 20}}, {age: {$lte:25}}]})

// db.users.find({$and: [
//     {gender: "male"},
//     {age: {$gte: 30}},
//     {age: {$lte: 40}}
// ]})

// db.users.find({
//     "address.state": "Louisiana"
// })

// db.users.find({}).limit(20).sort({age:-1})

// db.users.find({$and: [{gender: "female"}, {age: 30}]}).count()

// db.users.find()

// db.users.updateMany({}, {$unset: {phone: ""}})

// db.users.findOneAndUpdate({name: "Chuck Norris"}, {$set: {age: "infinity"}})

// db.users.updateMany({age: {$gte: 50}}, {$push: {hobbies: "jardinier"}})

// db.users.find({age: {$gt: 50}})