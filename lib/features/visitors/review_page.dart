import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testproject/utils/device/device_utility.dart';
import 'package:testproject/utils/helpers/helper_functions.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  int mycount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewAppBar(title: "Review",),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            TImages.user,
                          )),
                      border: Border.all(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(100),
                      color: TColors.primary),
                ),
              ),
              Center(
                child: Text(
                  "Moriah Aimes",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Development Manager",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.grey, fontSize: 11),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "How was your meeting with Jeremiah Yahaya?",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 15, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Your overall rating",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: FivePointedStar(
                    count: 5,
                    selectedColor: Colors.blue,
                    gap: 10,
                    size: Size(35, 35),
                    onChange: (count) {
                      setState(() {
                        mycount = count;
                      });
                    }),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Add detailed review",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 15,
                      ),
                  textAlign: TextAlign.left,
                ),
              ),
              TextFormField(
                minLines: 7,
                maxLines: null,
                decoration: InputDecoration(
                    label: Text(
                  "Enter here",
                  style: TextStyle(color:Colors.grey),
                )),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Submit"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReviewAppBar({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
      child: AppBar(
        title: Text(title),

        centerTitle: true,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
