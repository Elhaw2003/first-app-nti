import 'package:ffffiff/features/collection/data/lists/items.dart';
import 'package:flutter/material.dart';

import '../../../generated/assets.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new)
          ),
          centerTitle: true,
          title: const Text(
            "Collection",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const SizedBox(height: 24,),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(Assets.imagesBanner,fit: BoxFit.fill,),
                ),
                Positioned(
                  bottom: -25,
                  child: CircleAvatar(
                    radius: 42,
                    child: ClipOval(
                      child: Image.asset(Assets.imagesImage,width: 80,height: 80,),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30,),
            const Text("Darlene Robertson",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14)),
            const Text(
              "Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.",
              style: TextStyle(
                  color: Color(0xff979796),
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 17,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("10.0K",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)
                    ),
                    Text("Items",
                        style: TextStyle(
                            color: Color(0xff979796),
                            fontWeight: FontWeight.w400,
                            fontSize: 12)
                    ),
                  ],
                ),
                SizedBox(width: 8,),
                SizedBox(
                  height: 30,
                    child: VerticalDivider(),
                ),
                Column(
                  children: [
                    Text("689.10K",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)
                    ),
                    Text("Volume",
                        style: TextStyle(
                            color: Color(0xff979796),
                            fontWeight: FontWeight.w400,
                            fontSize: 12)
                    ),
                  ],
                ),
                SizedBox(width: 8,),
                SizedBox(
                  height: 30,
                  child: VerticalDivider(),
                ),
                Column(
                  children: [
                    Text("13.99",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)
                    ),
                    Text("Floor Price",
                        style: TextStyle(
                            color: Color(0xff979796),
                            fontWeight: FontWeight.w400,
                            fontSize: 12)
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16,),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  alignment: Alignment.center,
                  width: 231,
                  height: 37,
                  decoration: BoxDecoration(
                      color: const Color(0xffA3D80D),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.add,color: Colors.white,size: 20,),
                      SizedBox(width: 8,),
                      Text("Watchlist",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14)),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.more_horiz_outlined,
                  color: Color(0xff979796),
                  size: 30,
                )
              ],
            ),
            const SizedBox(height: 24,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Item’s",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)
                  ),
                  Text("Activity",
                      style: TextStyle(
                          color: Color(0xff979796),
                          fontWeight: FontWeight.w500,
                          fontSize: 14)
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            Expanded(
              child: GridView.builder(
                itemCount: ItemsList.items.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          width: 148,
                          height: 209,
                          ItemsList.items[index].image,fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ItemsList.items[index].title,
                                style: const TextStyle(
                                    color: Colors.lightGreenAccent,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                            ),
                            Text(ItemsList.items[index].description,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 16
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
