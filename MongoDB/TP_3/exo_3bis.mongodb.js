use("info");

// db.produits.insertMany([{
//     nom: "Macbook Pro",
//     fabriquant: "Apple",
//     prix: 11435.99,
//     options: [
//         "Intel Core i5", 
//         "Retina Display",
//         "Long Life battery"
//     ]
// }, {
//     nom: "Macbook Air",
//     fabriquant: "Apple",
//     prix: 125794.73,
//     ultrabook: true,
//     options: [
//         "Intel Core i7", 
//         "SSD",
//         "Long Life battery"
//     ]
// }, {
//     nom: "Thinkpad X230",
//     fabriquant: "Lenovo",
//     prix: 114358.74,
//     ultrabook: true,
//     options: [
//         "Intel Core i5", 
//         "SSD",
//         "Long Life battery"
//     ]
// }]);

// db.produits.find().limit(1);

// db.produits.find({_id: ObjectId('65a69a96ecdc593001d6b39f')})

// db.produits.find({prix: {$gt: 13723}})

// db.produits.find({ultrabook: true}).limit(1)

// db.produits.findOne({nom: {$regex: "Macbook", $options: "i"}})

// db.produits.find({nom: {$regex: "^Macbook"}})

// db.produits.deleteMany({fabriquant: "Apple"})

// db.produits.deleteOne({_id: ObjectId('65a69a96ecdc593001d6b39f')});

db.produits.find();