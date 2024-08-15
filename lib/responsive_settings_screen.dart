import 'package:flutter/material.dart';
import 'package:responsive_settings_screen/shared/custom_text_button_widget.dart';
import 'package:responsive_settings_screen/shared/custom_toggle_button_widget.dart';
import 'package:responsive_settings_screen/shared/section_header_widget.dart';

class ResposiveSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back
          },
        ),
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeaderWidget(text: 'Security Settings'),
              CustomContainer(size.height*0.3,size.width*1,Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Face ID'),
                      CustomToggleButtonWidget(
                        isOn: true, // Initial state
                        onChanged: (value) {
                          // Handle toggle change
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('pin'),
                      CustomToggleButtonWidget(
                        isOn: false, // Initial state
                        onChanged: (value) {
                          // Handle toggle change
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Change Pin'),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {
                          // Handle navigation to change pin screen
                        },
                      ),
                    ],
                  ),
                ],
              ),),
              SizedBox(height: 16), // Add some space
              SectionHeaderWidget(text: 'Password'),
              SizedBox(height: 8), // Add some space
              CustomContainer(size.height*0.1,size.width*1,CustomTextFormField(false,"change password")),
              SizedBox(height: 16), // Add some space
              SectionHeaderWidget(text: 'Approved addresses'),
              SizedBox(height: 8), // Add some space
              CustomContainer(size.height*0.1,size.width*1,CustomTextFormField(false,"manage")),
              SizedBox(height: 16), // Add some space
              SectionHeaderWidget(text: 'Security Keys'),
              SizedBox(height: 8), // Add some space
              CustomContainer(size.height*0.1,size.width*1,CustomTextFormField(true,"add security keys"))
            ],
          ),
        ),
      ),
    );
  }
}