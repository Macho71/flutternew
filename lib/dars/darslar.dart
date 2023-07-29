import 'package:flutter/material.dart';

class Yangi extends StatefulWidget {
  const Yangi({super.key});

  @override
  State<Yangi> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Yangi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          leading: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color:const Color.fromARGB(255, 189, 186, 186),
            ),
            child: IconButton(
              onPressed: () {},
              icon:const Icon(Icons.arrow_back),
            ),
          ),
          centerTitle: true,
          floating: true,
          snap: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.3,
          actions: const [Icon(Icons.ramp_left)],
          flexibleSpace: FlexibleSpaceBar(
            background: Opacity(
              opacity: 0.9,
              child: Image.network(
                "https://funart.pro/uploads/posts/2021-04/1617342138_54-p-oboi-bakhor-rasmlari-55.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate(((context, index) {
          return Row(
            children: const [
              Text(
                "Long Beach Ixtapa",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 100,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "4.5 ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 10,
              ),
              Text("(35)")
            ],
          );
        }))),
      ]),
    );
  }
}
