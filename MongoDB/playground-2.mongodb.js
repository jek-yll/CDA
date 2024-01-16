use('book');
// db.books.find();

// READ : 

// -- Recherche id 45 : 
// db.books.find({_id: 45});

// -- limiter à 5
// db.books.find().limit(5);

// -- avec 2 auteurs
// db.books.find({authors: {$size:2}});

// -- nombre de page egal à 400 et plus
// db.books.find({pageCount: {$gte: 400}});

// -- id == 55, 75 et 120
// db.books.find({_id: {$in: [60, 75]}});

// -- avec 2 auteurs, tri par titre et puis _id 
// db.books.find({ authors: {$size: 2} }).sort({title: 1, _id: -1}).count();
 
// -- avec 2 auteurs, tri par titre, puis _id et les 3 premiers
// db.books.find({authors: {$size: 2}}).skip(10).sort({title: 1, _id: -1}).limit(3);

// -- les livre entre 26 et 49 au niveau de l'_id
// db.books.find({$and: [{_id: {$gt: 25}}, {_id: {$lt:50}}]});

// -- affiche l'id et le tableau de l'auteur des livres ayant un _id superieur à 45
// db.books.find({_id: {$gt :45}}, {_id:1, authors:1})

// -- affiche tout sauf le tableau d'auteur deslivres aven l'id superieur à 45.
// - db.books.find({_id: {$gt :45}}, {authors:0})

// -- compris dans le tableau
// db.books.find({categories: {$in : ['Java', 'Web Development']}});

// -- Contient les deux information
// db.books.find({categories: {$all: ['Java', 'Computer Graphics']}});

// -- l'un ou l'autre
// db.books.find({$or: [{_id: 19}, {_id: 55}]});

// -- REGEX : contient "Distributed" (insensible à la case)
// db.books.find({longDescription: {$regex: "Distributed", $options:"i"}})

// -- REGEX : commence par "ext" (insensible à la case)
// db.books.find({longDescription: {$regex: "^ext", $options:"i"}})

// -- REGEX : termine par "perl" (insensible à la case)
// db.books.find({title: {$regex: "Perl$", $options:"i"}})