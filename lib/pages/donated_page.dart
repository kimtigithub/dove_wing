import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonatedPage extends StatelessWidget {
  const DonatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color.fromARGB(255, 5, 119, 208),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'DoveWing',
          style: GoogleFonts.inika(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 5, 119, 208),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 5, 119, 208),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Donated Campaigns',
              style: GoogleFonts.inika(
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 5, 119, 208),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const CampaignBox(
              imagePath: 'assets/campaign1.png',
              campaignName: 'Campaign 1',
              campaignDetails: 'Details about Campaign 1',
            ),
            const SizedBox(height: 20),
            const CampaignBox(
              imagePath: 'assets/campaign2.png',
              campaignName: 'Campaign 2',
              campaignDetails: 'Details about Campaign 2',
            ),
          ],
        ),
      ),
    );
  }
}

class CampaignBox extends StatelessWidget {
  final String imagePath;
  final String campaignName;
  final String campaignDetails;

  const CampaignBox({
    super.key,
    required this.imagePath,
    required this.campaignName,
    required this.campaignDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(
            campaignName,
            style: GoogleFonts.inika(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 5, 119, 208),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            campaignDetails,
            style: GoogleFonts.inika(
              textStyle: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
