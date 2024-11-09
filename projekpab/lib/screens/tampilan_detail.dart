import 'package:flutter/material.dart';
import 'package:projekpab/data_list_novel/data_images_novel.dart';
import 'package:projekpab/screens/tampilan_home.dart';

class TampilanDetail extends StatefulWidget {

  const TampilanDetail({super.key});

  @override
  State<TampilanDetail> createState() => _TampilanDetailState();
}

class _TampilanDetailState extends State<TampilanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Detail", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 3000,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/Dilan.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
