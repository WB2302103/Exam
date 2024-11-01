import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/widgets/top_card.dart';
class crazyanimation extends StatelessWidget {
  const crazyanimation({super.key});

  @override
  Widget build(BuildContext context) {
    var size=Get.size;
    RxBool menuClicked=false.obs;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: (){
                      menuClicked.value=!menuClicked.value;
                    },
                    child: Icon(Icons.menu)),
                SizedBox(
                  height: size.width*.075,
                ),
                SizedBox(
                    width: size.width,
                    height: size.width*1.1,
                    child: Obx(()=>Stack(
                      children: [
                        TopCard(menuClicked: menuClicked, defaultWidth: size.width*.44 , dynamicWidth: size.width, defaultHeight: size.width*1.1, dynamicHeight: size.width*1.1, colors: Colors.black, imageAsset: "assets/images/ahmad.png", replacementWidget: const SizedBox()),

                        AnimatedPositioned(
                          duration:const Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          right: 0,
                          top:menuClicked.value?65: 0,
                          child: Padding(
                            padding:EdgeInsets.all(menuClicked.value?17:0),
                            child:TopCard(menuClicked: menuClicked, defaultWidth: size.width*.44, dynamicWidth: size.width -42 -34 , defaultHeight:  size.width*0.65, dynamicHeight:size.width*1.1 -65 -34, colors: Colors.red, imageAsset:"assets/images/khalid.png", replacementWidget: AnimatedOpacity(
                              duration:const Duration(milliseconds: 355),
                              curve: Curves.easeOut,
                              opacity: menuClicked.value?1:0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        children: [
                                          WidgetSpan(child:Icon(Icons.shopping_cart,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                                          TextSpan(
                                              text: "Items in Cart",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize:size.width*.045,
                                                  height: 0
                                              )
                                          ),
                                        ]
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(21.0),
                                    child: Text.rich(
                                      TextSpan(
                                          children: [
                                            WidgetSpan(child:Icon(Icons.history_toggle_off,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                                            TextSpan(
                                                text: "Purchase history",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize:size.width*.045,
                                                    height: 0
                                                )
                                            ),
                                          ]
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                  Text.rich(
                                    TextSpan(
                                        children: [
                                          WidgetSpan(child:Icon(Icons.settings,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                                          TextSpan(
                                              text: "App Settings",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize:size.width*.045,
                                                  height: 0
                                              )
                                          ),
                                        ]
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            )),
                            //    child: AnimatedContainer(
                            //     duration:const Duration(milliseconds: 355),
                            //      curve: Curves.easeOut,
                            //    width:menuClicked.value?size.width -42 -34 :size.width*.44 ,
                            //     height:menuClicked.value?size.width*1.1 -65 -34: size.width*0.65 ,
                            //      decoration: BoxDecoration(
                            //        color: Color(0xff616161),
                            //       borderRadius: BorderRadius.circular(menuClicked.value?55:100)
                            //        ),
                            //    child: Stack(
                            //          children: [
                            //            ClipRRect(
                            //               borderRadius: BorderRadius.circular(100),
                            //              child: AnimatedOpacity(
                            //                  duration:const Duration(milliseconds: 355),
                            //                  curve: Curves.easeOut,
                            //                 opacity: menuClicked.value?0:1,
                            //                 child: Image.asset("assets/images/riha.png",fit:
                            //                 BoxFit.cover,
                            //                   width: size.width*.44,
                            //                    height: size.width*65,),
                            //                ),
                            //              ),
                            //            AnimatedOpacity(
                            //               duration:const Duration(milliseconds: 355),
                            //                curve: Curves.easeOut,
                            //                opacity: menuClicked.value?1:0,
                            //                child: Column(
                            //                   mainAxisAlignment: MainAxisAlignment.center,
                            //                 crossAxisAlignment: CrossAxisAlignment.center,
                            //               children: [
                            //                  Text.rich(
                            //                     TextSpan(
                            //                      children: [
                            //                       WidgetSpan(child:Icon(Icons.shopping_cart,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                            //                        TextSpan(
                            //                           text: "Items in Cart",
                            //                            style: TextStyle(
                            //                               color: Colors.white,
                            //                            fontWeight: FontWeight.w900,
                            //                         fontSize:size.width*.045,
                            //                        height: 0
                            //                  )
                            //   ),
                            //          ]
                            //   ),
                            //    textAlign: TextAlign.center,
                            //      ),

                            //     Padding(
                            //     padding: const EdgeInsets.all(21.0),
                            //      child: Text.rich(
                            //       TextSpan(
                            //         children: [
                            //          WidgetSpan(child:Icon(Icons.history_toggle_off,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                            //         TextSpan(
                            //          text: "Purchase history",
                            //        style: TextStyle(
                            //            color: Colors.white,
                            //         fontWeight: FontWeight.w900,
                            //        fontSize:size.width*.045,
                            //        height: 0
                            //           )
                            //         ),
                            //        ]
                            //            ),
                            //           textAlign: TextAlign.center,
                            //        ),
                            //      ),

                            //    Text.rich(
                            //   TextSpan(
                            //      children: [
                            //    WidgetSpan(child:Icon(Icons.settings,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                            //     TextSpan(
                            //     text: "App Settings",
                            //   style: TextStyle(
                            //     color: Colors.white,
                            //   fontWeight: FontWeight.w900,
                            //  fontSize:size.width*.045,
                            //    height: 0
                            //   )
                            //   ),
                            //  ]
                            //    ),
                            //   textAlign: TextAlign.center,
                            //  )
                            //  ],
                            //   ),
                            //   )
                            //    ],
                            //   )
                            //),
                          ),
                        ),

                        AnimatedPositioned(
                          duration:const Duration(milliseconds: 450),
                          curve: Curves.easeOut,
                          bottom:menuClicked.value?size.width*1.05-size.width*0.13-17: 0,
                          right: menuClicked.value?17:0,
                          child: TopCard(menuClicked: menuClicked, defaultWidth: size.width*.44, dynamicWidth: size.width*.12, defaultHeight: size.width*.43, dynamicHeight: size.width*.12, colors: Colors.grey, imageAsset:"assets/images/rifayee.png", replacementWidget:
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 355),
                            curve: Curves.easeOut,
                            opacity: menuClicked.value?1:0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),child: Image.asset("assets/images/easin.png",fit: BoxFit.cover,width: size.width*.12,height: size.width*.12,),
                            ),
                          ),),
                          //   child: AnimatedContainer(
                          //    duration:const Duration(milliseconds: 355),
                          //    curve: Curves.easeOut,
                          //    width:menuClicked.value?size.width*0.12: size.width*.44 ,
                          //    height:menuClicked.value?size.width*0.12: size.width*0.43 ,
                          //    decoration: BoxDecoration(
                          //        color: Colors.grey,
                          //         borderRadius: BorderRadius.circular(100)
                          //    ),
                          //    child: ClipRRect(
                          //      borderRadius: BorderRadius.circular(100),
                          //      child: Image.asset("assets/images/easin.png",fit:
                          //     BoxFit.cover
                          //       ,),
                          //      )
                          //  ),
                        )
                      ],
                    ),)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}