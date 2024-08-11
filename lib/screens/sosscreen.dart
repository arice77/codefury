import 'package:flutter/material.dart';

class SOSScreen extends StatefulWidget {
  const SOSScreen({super.key});

  @override
  State<SOSScreen> createState() => _SOSScreenState();
}

class _SOSScreenState extends State<SOSScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(254, 247, 255, 1),appBar: AppBar(title: Text('RECENT UPDATES',style: TextStyle(color: Color.fromRGBO(113, 31, 123, 1),fontWeight:FontWeight.bold),),),body: Column(
      children: [
        SizedBox(width: 350,child: ElevatedContainer(date: '24-04-2024',description: "Thsi feels right", title: "Disaster stuck",))
        ,Spacer(),
        Container(margin: EdgeInsets.all(10),
          padding: const EdgeInsets.all(8.0),
          child: Divider(height: 2,thickness: 3,),
        ),
        Container(child: Column(
          
          children: [
            ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // Background color of the button
            foregroundColor: Colors.white, // Color of the text
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50), // Rounded corners
            ),
            padding: EdgeInsets.all(20), // Padding around the text
            textStyle: TextStyle(
              fontSize: 24, // Font size of the text
              fontWeight: FontWeight.bold, // Font weight of the text
            ),
                  ),
                  child: Text('SOS'),
                ),
          ],
        ),)

      ],
    ),);
  }
}

class ElevatedContainer extends StatelessWidget {
  final String title;
  final String date;
  final String description;

  const ElevatedContainer({
    Key? key,
    required this.title,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(margin: EdgeInsets.all(20),
      elevation: 5, // Adjust elevation here
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20, // Font size for title
                  ),
            ),
            SizedBox(height: 8),
            Text(
              date,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 16, // Font size for date
                    color: Colors.grey[600], // Optional: color for the date
                  ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14, // Font size for description
                  ),
            ),
          ],
        ),
      ),
    );
  }
}