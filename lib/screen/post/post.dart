import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:goodaction/screen/utils/constants/sizes.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:goodaction/screen/utils/constants/colors.dart';
import 'package:permission_handler/permission_handler.dart';
import '../utils/constants/app_text_style.dart';
import '../utils/constants/image_string.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  File? _selectedImage;
  final TextEditingController _captionController = TextEditingController();

  Future<void> _pickImage(ImageSource source) async {
    // Check if the camera permission is granted
    if (await Permission.camera.isGranted) {
      // Proceed with opening the camera or gallery
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
      }
    } else {
      // If permission is not granted, request it
      final cameraPermission = await Permission.camera.request();
      final storagePermission = await Permission.photos.request();

      if (cameraPermission.isGranted && storagePermission.isGranted) {
        // If permissions are granted, proceed with opening the camera or gallery
        final pickedFile = await ImagePicker().pickImage(source: source);
        if (pickedFile != null) {
          setState(() {
            _selectedImage = File(pickedFile.path);
          });
        }
      } else {
        // Show an error message if the permissions are denied
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text("Camera and storage permissions are required.")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GAppColors.backColor,
      bottomNavigationBar: Row(
        children: [
          const SizedBox(width: 10.0),
          IconButton(
            onPressed: () => _pickImage(ImageSource.camera),
            icon: Icon(
              Icons.camera_alt,
              color: Colors.black.withValues(alpha: 0.6),
            ),
          ),
          IconButton(
            onPressed: () => _pickImage(ImageSource.gallery),
            icon: Icon(
              Icons.photo,
              color: Colors.black.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: GAppColors.backColor,
        actions: [
          SizedBox(
            height: 58,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      context.go("/navigation");

                    },
                    icon: SvgPicture.asset(
                      'assets/svgiocon/cross.svg',
                      width: 16,
                      height: 16,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withValues(alpha: 0.8),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'New Post',
                    style: AppTextStyle.inter(
                      color: Colors.black,
                      fontSize: 18.0,
                      weight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Handle post action
                    },
                    child: Container(
                      width: 60,
                      height: 32,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          'Post',
                          style: AppTextStyle.inter(
                            color: Colors.white,
                            fontSize: 14.0,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      GImages.profile,
                      height: 46,
                      width: 46,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Container(
                      constraints: BoxConstraints(maxHeight: 100),
                      // Limit max height
                      child: SingleChildScrollView(
                        child: TextField(
                          controller: _captionController,
                          maxLines: null,
                          // Allows unlimited lines
                          minLines: 1,
                          // Starts with one line
                          keyboardType: TextInputType.multiline,
                          // Enables multiline input
                          decoration: const InputDecoration(
                            hintText: "Write a caption...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: GSizes.spaceBtwSections),
              _selectedImage != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.file(
                        _selectedImage!,
                        height: 500,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "No Image Selected",
                          style: AppTextStyle.inter(
                            color: Colors.black.withValues(alpha: 0.6),
                            fontSize: 16.0,
                            weight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
