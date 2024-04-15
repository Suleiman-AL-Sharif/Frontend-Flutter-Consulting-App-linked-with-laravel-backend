import '../../models/meal.dart';

const DUMMY_MEALS =  [
  Meal(
    id: 'm1',
    categories: [
      'c3',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.$50,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/busness.jpg',
    duration: 20,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c3',
    ],
    title: 'Sliman Al-Sharif',
    affordability: Affordability.$40,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/busness.jpg',
    duration: 10,
    ingredients: [
      'name : Sliman Al-Sharif',
      'Ditels: Ready to provide any business advice',
      'Price: 40',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'Taghrid Johas',
    affordability: Affordability.$30,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/busness.jpg',
    duration: 45,
    ingredients: [
      'name : Taghrid Johas',
      'Ditels: Ready to provide any business advice',
      'Price: 30',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.$50,
    complexity: Complexity.Challenging,
    imageUrl:
    'assets/image/meidical.jpg',
    duration: 60,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any medical advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c1'
    ],
    title: 'Sliman Al-Sharif',
    affordability: Affordability.$50,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/meidical.jpg',
    duration: 15,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any medical advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c1',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'assets/image/meidical.jpg',
    duration: 240,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c2',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/psyco.jpg',
    duration: 20,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c2',
    ],
    title: 'Sliman Al-Sharif',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
    'assets/image/psyco.jpg',
    duration: 35,
    ingredients: [
      'name : Sliman Al-Sharif',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c2',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'assets/image/psyco.jpg',
    duration: 45,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/tecn.jpg',
    duration: 30,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c4',
    ],
    title: 'Sliman Al-Sharif',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/tecn.jpg',
    duration: 30,
    ingredients: [
      'name : Sliman Al-Sharif',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/tecn.jpg',
    duration: 30,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/familial.jpg',
    duration: 30,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'Sliman Al-Sharif',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/familial.jpg',
    duration: 30,
    ingredients: [
      'name : Sliman Al-Sharif',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/familial.jpg',
    duration: 30,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm17',
    categories: [
      'c6',
    ],
    title: 'Sliman Al-Sharif',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/lionel messi.jpg',
    duration: 30,
    ingredients: [
      'name : Sliman Al-Sharif',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm17',
    categories: [
      'c6',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/lionel messi.jpg',
    duration: 30,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),Meal(
    id: 'm18',
    categories: [
      'c6',
    ],
    title: 'Abdullah alkabbani',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'assets/image/lionel messi.jpg',
    duration: 30,
    ingredients: [
      'name : Abdullah alkabbani',
      'Ditels: Ready to provide any business advice',
      'Price: 50',
      'address: syria ',
      'Phone: 0936837406',
      'time: from 1 to 6'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

];