use("hopital");

// db.patient.insertMany([
//   {
//     firstname: "Mohammed",
//     lastname: "Deloin",
//     age: 45,
//     history: [
//       {desease: "rhume",
//       treatment: "sirop"},
//       {desease: "grippe",
//       treatment: "supo"}
//     ]
//   },
//   {
//     firstname: "Mohammed",
//     lastname: "Depres",
//     age: 24,
//     history: [
//       {desease: "covid",
//       treatment: "hydroxychloroquine"},
//       {desease: "grippe",
//       treatment: "sucre"}
//     ]
//   },
//   {
//     firstname: "Jean",
//     lastname: "Neymar",
//     age: 42,
//     history: [
//       {desease: "ligament croisé",
//       treatment: "bandage"},
//       {desease: "entorse",
//       treatment: "pommade"}
//     ]
//   }
// ]);

// db.patient.updateOne(
// {_id: ObjectId("65a663e06d1d7d1b7aed0af6")}, 
// {$set: {age: 29, lastname: "Ali", history: [
//   {desease: "ligament croisé",treatment: "bandage"},
//   {desease: "entorse",treatment: "pommade"}
// ]}});

// db.patient.updateOne(
//   { _id: ObjectId("65a663e06d1d7d1b7aed0af6") },
//   {
//     $set: {
//       age: 29,
//       lastname: "Ali",
//     },
//     $push: {
//       history: {
//         desease: "ligament croisé",
//         treatment: "bandage"
//       }
//     }
//   }
// );

// db.patient.find({age: {$gt: 29}});

// db.patient.deleteMany({
//   history: {
//     $elemMatch: {
//       desease: "covid"
//     }
//   }
// });

db.patient.find();

