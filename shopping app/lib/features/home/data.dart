class Product {
  final String title;
  final String imageUrl;
  const Product(this.title, this.imageUrl);
}

const featured = [
  'https://picsum.photos/id/1018/800/300',
  'https://picsum.photos/id/1015/800/300',
  'https://picsum.photos/id/1025/800/300',
];

const products = [
  Product('Shoe', 'https://picsum.photos/id/100/300/300'),
  Product('Watch', 'https://picsum.photos/id/101/300/300'),
  Product('Bag', 'https://picsum.photos/id/102/300/300'),
  Product('Glasses', 'https://picsum.photos/id/103/300/300'),
  Product('Hat', 'https://picsum.photos/id/104/300/300'),
  Product('Jacket', 'https://picsum.photos/id/210/300/300'),
];

const hotOffers = [
  {'img': 'https://picsum.photos/id/180/120/130', 'desc': 'offer1'},
  {'img': 'https://picsum.photos/id/181/120/120', 'desc': 'offer2'},
  {'img': 'https://picsum.photos/id/182/120/120', 'desc': 'offer3'},
  {'img': 'https://picsum.photos/id/183/120/120', 'desc': 'offer4'},
  {'img': 'https://picsum.photos/id/184/120/120', 'desc': 'offer5'},
];
