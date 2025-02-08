import 'package:ffffiff/features/daetails/view/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import '../../collection/view/collection_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<String> titles = ["Trending", "By Artist", "Eth", "Btc"];
int defaultChoiceIndex = 0;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          RichText(
            text: const TextSpan(
                text: "Selling the ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
                children: [
                  TextSpan(
                    text: "Most Popular",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                ]),
          ),
          const Text("NFT is only here",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24)),
          const SizedBox(
            height: 32,
          ),
          Wrap(
            spacing: 10,
            children: List.generate(titles.length, (index) {
              return ChoiceChip(
                labelStyle:
                const TextStyle(color: Colors.white, fontSize: 14),
                showCheckmark: false,
                side: const BorderSide(color: Colors.transparent),
                backgroundColor: Colors.grey.withOpacity(0.3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                label: Text(
                  titles[index],
                ),
                selected: defaultChoiceIndex == index,
                selectedColor: const Color(0xffA3D80D),
                onSelected: (value) {
                  setState(() {
                    defaultChoiceIndex = value ? index : defaultChoiceIndex;
                  });
                },
                // backgroundColor: color,
              );
            }),
          ),
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (c){
                return const DetailsScreen();
              }));
            },
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Top Collection 🔥",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18)),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c){
                          return const CollectionScreen();
                        }));
                      },
                      icon: const Icon(Icons.more_horiz_outlined,
                        color: Color(0xff979796),
                        size: 30,),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ClipRRect(
                  borderRadius:  const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  child: Image.asset(Assets.imagesImage5,fit: BoxFit.fill,),
                ),
                const SizedBox(height: 23,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hypebest Apes G",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Ends in",
                            style: TextStyle(
                                color: Color(0xff979796),
                                fontWeight: FontWeight.w400,
                                fontSize: 12)),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            Icon(Icons.watch_later_outlined,size: 14,),
                            SizedBox(width: 4,),
                            Text("1h 23m 32s",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)),
                          ],
                        ),
                        SizedBox(height: 12,),
                      ],
                    ),
                  ],
                ),
                const Text(
                  "------------------------------------------------------------------------------------------",
                  style: TextStyle(
                      color: Color(0xff979796),
                      fontWeight: FontWeight.w500,
                      fontSize: 10
                  ),
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Highest Bid Today",
                            style: TextStyle(
                                color: Color(0xff979796),
                                fontWeight: FontWeight.w400,
                                fontSize: 12)),
                        Text("2.23 ETH",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
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
          const SizedBox(height: 15,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Best Artist",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
              Icon(
                Icons.more_horiz_outlined,
                color: Color(0xff979796),
                size: 30,
              )
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              ClipOval(
                child: Image.asset(Assets.imagesImage,width: 37,height: 37,),
              ),
              const SizedBox(width: 12,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Darlene Robertson",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                  Text("125k Followers",
                      style: TextStyle(
                          color: Color(0xff979796),
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                ],
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: 91,
                height: 37,
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(40)
                ),
                child: const Text("Follow",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
