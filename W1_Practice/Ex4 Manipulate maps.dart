// Ex4 Manipulate maps

void main() {
  // pizza prices
  const Map<String, double> pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  const List<String> order = ['margherita', 'pepperoni', 'pineapple'];
  double total = 0.0;
  for (var pizza in order) {
    if (pizzaPrices.containsKey(pizza)) {
      total += pizzaPrices[pizza]!;
    } else {
      print('$pizza pizza is not on the menu');
    }
  }
  if (total > 0) {
    print('Total: \$$total');
  }
}