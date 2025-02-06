import 'package:flutter/material.dart';

import '../../../generated/assets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

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
            "Detail",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24,),
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(Assets.imagesImage5,fit: BoxFit.fill,),
            ),
            const SizedBox(height: 24,),
            const Text(
              "#14415",
              style: TextStyle(
                  color: Color(0xffA3D80D),
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hypebest Apes B",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Icon(Icons.ac_unit_rounded)
              ],
            ),
            const SizedBox(height: 12,),
            const Row(
              children: [
                Text(
                  "125 Sold",
                  style: TextStyle(
                      color: Color(0xff979796),
                      fontSize: 10,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(width: 18,),
                Icon(Icons.watch_later_outlined,color: Color(0xff979796),size:14,),
                Text(
                  "1h 23m 32s",
                  style: TextStyle(
                      color: Color(0xff979796),
                      fontSize: 10,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12,),
            const Text(
              "------------------------------------------------------------------------------------------",
              style: TextStyle(
                  color: Color(0xff979796),
                  fontWeight: FontWeight.w500,
                  fontSize: 10
              ),
            ),
            const SizedBox(height: 12,),
            const Text(
              "Description",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 8,),
            const Text(
              "Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.",
              style: TextStyle(
                  color: Color(0xff979796),
                  fontSize: 14,
                  fontWeight: FontWeight.w300
              ),
            ),
            const SizedBox(height: 40,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          color: Color(0xffBBBBBB),
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text(
                      "2.23 ETH",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  width: 122,
                  height: 37,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Text("Place Bid",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
