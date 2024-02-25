import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAddButton {

  static void openDialog() {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: true,
        builder: (_) => PopScope(
            canPop: true,
            child: GestureDetector(
              onTap: stopDialog,
              child: Container(
                color: Colors.black.withOpacity(0.5),
                height: double.infinity,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 16,
                      right: 15,
                      child: SizedBox(
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Row(
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('Note', style: TextStyle(color: Colors.white, fontSize: 13, decoration: TextDecoration.none),),
                                    SizedBox(height: 40,),
                                    Text('Schedule', style: TextStyle(color: Colors.white, fontSize: 13, decoration: TextDecoration.none),)
                                  ],
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      mini: true,
                                      backgroundColor: const Color(0xFF7E64FF),
                                      shape: const CircleBorder(),
                                      onPressed: () {},
                                      child: const Icon(Icons.sticky_note_2_outlined, size: 25, color: Colors.white,),
                                    ),
                                    const SizedBox(height: 8),
                                    FloatingActionButton(
                                      mini: true,
                                      backgroundColor: const Color(0xFF7E64FF),
                                      shape: const CircleBorder(),
                                      onPressed: () {},
                                      child: const Icon(Icons.event_note_rounded, size: 25, color: Colors.white,),
                                    ),
                                  ],
                                )
                              ],
                            ),

                            const SizedBox(height: 8),
                            FloatingActionButton(
                              backgroundColor: const Color(0xFF7E64FF),
                              shape: const CircleBorder(),
                              onPressed: () => stopDialog(),
                              child: const Icon(Icons.clear, size: 35, color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
        )
    );
  }

  static void stopDialog() {
    Navigator.of(Get.overlayContext!).pop();
  }
}