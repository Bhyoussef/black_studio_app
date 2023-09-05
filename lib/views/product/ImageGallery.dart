import 'package:flutter/material.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class ImageGalleryDialog extends StatefulWidget {
  final List<String> imageAssets;
  final int initialIndex;

  const ImageGalleryDialog({
    Key? key,
    required this.imageAssets,
    required this.initialIndex,
  }) : super(key: key);

  @override
  _ImageGalleryDialogState createState() => _ImageGalleryDialogState();
}

class _ImageGalleryDialogState extends State<ImageGalleryDialog> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
    pageController = PageController(initialPage: widget.initialIndex);
  }

  void goToPrevious() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
        pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      });
    }
  }

  void goToNext() {
    if (currentIndex < widget.imageAssets.length - 1) {
      setState(() {
        currentIndex++;
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: widget.imageAssets.length,
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return SizedBox.expand(
                child: Image.network(
                  widget.imageAssets[index],
                  fit: BoxFit.fitHeight,
                ),
              );
            },
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => goToPrevious(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColor.primaryBlackColor,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Icon(
                      Icons.close,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => goToNext(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColor.primaryBlackColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
