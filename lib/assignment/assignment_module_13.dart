import 'package:flutter/material.dart';

List<Map<String, String>> list = [
  {
    "image": "asset/1.png",
    "text1": "Batch 11",
    "text2": "6 seats left",
    "text3": "6 days left",
    "title": "Full Stack Web Development with Javascript(MERN)",
  },
  {
    "image": "asset/2.png",
    "text1": "Batch 6",
    "text2": "86 seats left",
    "text3": "40 days left",
    "title": "Full Stack Web Development with Python,Django & React",
  },
  {
    "image": "asset/3.png",
    "text1": "Batch 7",
    "text2": "75 seats left",
    "text3": "39 days left",
    "title": "Full Stack Web Development with ASP.Net Core",
  },
  {
    "image": "asset/4.png",
    "text1": "Batch 13",
    "text2": "65 seats left",
    "text3": "41 days left",
    "title": "SQA: Manual & Automated Testing",
  },
];

class MyAssignment extends StatelessWidget {
  const MyAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        children: List.generate(4, (index) {
          return Card(
            child: Column(
              children: [
                Image.asset(list[index]["image"]!),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 192, 191, 191),
                        ),
                        child: Text(
                          list[index]["text1"]!,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 192, 191, 191),
                        ),

                        child: Row(
                          children: [
                            Icon(Icons.chair,
                            size: 12,),
                            Text(
                              list[index]["text2"]!,
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 192, 191, 191),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.punch_clock_outlined,
                            size: 12,),
                            Text(
                              list[index]["text3"]!,
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      list[index]["title"]!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      
                      iconColor: Colors.black,
                      backgroundColor: const Color.fromARGB(255, 202, 201, 201),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('See Details',
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
