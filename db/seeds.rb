### Suppliers

Supplier.create!([
  {name: "Amazon", email: "amazon@test.com", phone_number: "(800)987-6543"},
  {name: "Walmart", email: "walmart@test.com", phone_number: "(800)756-3455"},
  {name: "Best Buy", email: "bestbuy@test.com", phone_number: "(800)123-2345"}
])

### Products

Product.create!([
  {name: "Meat Shredder Claws", price: "25.0", description: "This surprisingly efficient way of shredding your meat has the added in bonus of making you feel like Wolverine.", quantity: 89, supplier_id: 1},
  {name: "KFC Romance Novel", price: "40.0", description: "The enchanting tale on the pages of this KFC romance novel is so great it's, dare we say it, finger-lickin' good. Read how the colonel comes to the rescue of a damsel in distress complete with cheesy dialog.", quantity: 1,supplier_id: 1},
  {name: "The Hen Bag Handbag", price: "25.0", description: "Is that the latest Hermès bag straight off the runway? No, it's a rubber chicken purse from Amazon.", quantity: 56,supplier_id: 1},
  {name: "Nicolas Cage Pillow", price: "5.0", description: "No words for this one.", quantity: 7, supplier_id: 2},
  {name: "Lifelike Inflatable Elephant", price: "60.0", description: "Try to toss a hula hoop over the trunk of the 19-inch tall inflatable elephant, because why not?", quantity: 10,supplier_id: 2},
  {name: "Realistic Dog Head Masks", price: "100.0", description: "Take a trip to the dog park wearing this mask and NO ONE will think you've gone off the deep end. The high-quality mask is made from 100% latex and fits most adult heads.", quantity: 22,supplier_id: 2},
  {name: "Thanos One-Piece Swimsuit for Men", price: "78.0", description: "Dressing up as the ultimate villain will give you all the confidence come beach day.", quantity: 12, supplier_id: 3},
  {name: "Stuffed Blobfish Plush", price: "20.0", description: "In 2013, the gelatinous blobfish won the 'World's Ugliest Animal' award. But somehow, these mini plush dolls make them seem kind of adorable.", quantity: 67, supplier_id: 3},
  {name: "Mac Inspired Candle", price: "30.0", description: "You may not be able to afford a new Macbook (even though Apple has some great Black Friday deals coming up), but you'll be able to get that new Mac smell with this inspired candle", quantity: 47, supplier_id: 3}
])

### Images

Image.create!([
  {url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1571689550-51Q0xuEOjRL.jpg?crop=1xw:1.00xh;center,top&resize=768:*", product_id: 1},

  {url: "https://m.media-amazon.com/images/S/al-na-9d5791cf-3faf/1bd56db3-1e87-4a1e-b53b-381ac3853688._CR0,421,1500,785_SX405_QL70_.jpg", product_id: 1},


  {url: "https://cdn.thisiswhyimbroke.com/buying-guides-thumb/54/kfc-romance-novel_400x.jpg", product_id: 2},

  {url: "https://isitfunnyoroffensive.com/wp-content/uploads/2017/05/kfc-romance-novel-mom-model.jpg", product_id: 2},


  {url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1571683417-rubber-chicken-purse-1571683378.jpg?crop=1.00xw:0.667xh;0,0.168xh&resize=768:*", product_id: 3},

  {url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/rubber-chicken-purse-1579809802.jpg", product_id: 3},


  {url: "https://static.onecms.io/wp-content/uploads/sites/20/2019/08/nicholas-cage.jpg", product_id: 4},

  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgySK_CWeFyZNs0nnKNd8t5CNexuwmwGEdXA&usqp=CAU", product_id: 4},


  {url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1571692002-inflatable-elephant-1571691977.jpg?crop=1.00xw:0.667xh;0,0.220xh&resize=768:*", product_id: 5},

  {url: "https://odditymall.com/includes/content/upload/life-size-inflatable-elephant-toy-3002.jpg", product_id: 5},


  {url: "https://cdn.thisiswhyimbroke.com/buying-guides-thumb/54/realistic-dog-head-masks_400x.jpg", product_id: 6},

  {url: "https://odditymall.com/includes/content/realistic-dog-masks-0.jpg", product_id: 6},


  {url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1565295660-412g9mL-i8L.jpg?crop=1xw:1.00xh;center,top&resize=768:*", product_id: 7},

  {url: "https://m.media-amazon.com/images/I/71chGq6U61L._AC_UL1277_.jpg", product_id: 7},


  {url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1632326997-31v8fPnS8UL._SL500_.jpg?crop=1xw:1.00xh;center,top&resize=768:*", product_id: 8},

  {url: "https://m.media-amazon.com/images/I/51cNIZc6fwL._AC_.jpg", product_id: 8},


  {url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1571691785-31gZkTuUknL.jpg?crop=1xw:1.00xh;center,top&resize=768:*", product_id: 9},

  {url: "https://cdn.vox-cdn.com/thumbor/f67rOLX7lQc7mZSR2FdhUKuBdrw=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/9478071/80a23050534b3baf94e141977a2a61a555a244fc.jpg", product_id: 9},


])

