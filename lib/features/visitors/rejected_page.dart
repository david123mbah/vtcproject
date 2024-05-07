import 'package:flutter/material.dart';

import 'review_page.dart';

class RejectedScreen extends StatefulWidget {
  const RejectedScreen({super.key});

  @override
  State<RejectedScreen> createState() => _RejectedScreenState();
}

class _RejectedScreenState extends State<RejectedScreen> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewAppBar(
        title: "Reject Visitor",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Please select the reason for rejection.",
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                title: const Text('Schedule Change'),
                leading: Radio<int>(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      print("Button value: $value");
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Whether Condition'),
                leading: Radio<int>(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      print("Button value: $value");
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Emergency meeting'),
                leading: Radio<int>(
                  value: 3,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      print("Button value: $value");
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Travel Delays'),
                leading: Radio<int>(
                  value: 4,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      print("Button value: $value");
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Other'),
                leading: Radio<int>(
                  value: 5,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      print("Button value: $value");
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Other",
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.left,
              ),
              TextFormField(
                minLines: 3,
                maxLines: null,
                decoration: InputDecoration(
                    label: Text(
                  "Enter your reason here",
                  style: TextStyle(color: Colors.grey),
                )),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Reject Booking"),
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
