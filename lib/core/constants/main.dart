final List<Map<String, dynamic>> tabAssets = [
  {
    'label': 'home',
    'img': 'lib/core/assets/logotype.png',
  },
  {
    'label': 'cart',
    'img': 'lib/core/assets/bag.png',
  },
  {
    'label': 'favourite',
    'img': 'lib/core/assets/heart.png',
  },
  {
    'label': 'profile',
    'img': 'lib/core/assets/user.png',
  },
];

const int storyDuration = 5;

Map<String, int> reviewConfig = {'min': 1, 'max': 5};
int numOfProductPageImages = 5;

final List<String> reviewStates = [
  'Please add your review!',
  'Poor',
  'Average',
  'Good',
  'Nice',
  'Awesome'
];

const int maxPinNumber = 5;

const measurements = [
  {'title': 'Height:', 'info': '50 cm'},
  {'title': 'Width:', 'info': '40 cm'},
  {'title': 'Depth:', 'info': '35 cm'},
  {'title': 'Weight:', 'info': '11.7 kg'},
];

const composition = [
  {'title': 'Main Material', 'info': '100% Mango tree wood'},
  {'title': 'Weight', 'info': '100% Chipboard'},
];
