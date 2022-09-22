import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Dan",
          selectionColor: Colors.black,
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: const [
            DrawerHeader(
                child: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 1,
            )),
            SizedBox(
              height: 12,
            ),
            ListTile(
              title: Text("Info"),
              leading: Icon(Icons.message_outlined),
            ),
            ListTile(
              title: Text("Calendar"),
              leading: Icon(Icons.calendar_today),
            ),
            ListTile(
              title: Text("ToDo"),
              leading: Icon(Icons.note),
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: (() {}),
                    ),
                    IconButton(
                      icon: const Icon(Icons.extension),
                      onPressed: (() {}),
                    ),
                  ],
                ),
                const SizedBox(height: 37),
                const Text.rich(
                  TextSpan(
                      text: 'Welcome,\n',
                      style: TextStyle(fontWeight: FontWeight.normal),
                      children: [
                        TextSpan(
                          text: 'Daniel',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 18,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Search',
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Saved places',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 250,
                  child: GridView.count(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      for (var country in countries)
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          child: Image.asset('assets/images/$country.png'),
                        )
                    ],
                  ),
                ),
                const SizedBox(height: 0.5),
                const Text(
                  'Learn more',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Kenya, officially the Republic of Kenya (Swahili: Jamhuri ya Kenya), is a country in Eastern Africa. At 580,367 square kilometres (224,081 sq mi), Kenya is the world's 48th largest country by area. With a population of more than 47.6 million in the 2019 census,[12] Kenya is the 29th most populous country in the world.[6] Kenya's capital and largest city is Nairobi, while its oldest, currently second largest city, and first capital is the coastal city of Mombasa.\n Kisumu City is the third-largest city and also an inland port on Lake Victoria. Other important urban centres include Nakuru and Eldoret.",
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 250,
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1.5,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      for (var country in countries)
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          child: Image.asset('assets/images/$country.png'),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final countries = [
  'kenya',
  'uganda',
  'tanzania',
  'ethiopia',
];
