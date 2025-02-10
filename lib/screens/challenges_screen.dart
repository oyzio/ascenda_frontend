import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class ChallengesScreen extends StatefulWidget {
  const ChallengesScreen({super.key});

  @override
  _ChallengesScreenState createState() => _ChallengesScreenState();
}

class _ChallengesScreenState extends State<ChallengesScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Colors.deepOrange, Colors.orangeAccent, Colors.black],
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 20),
                child: IconButton(
                  icon: Icon(Icons.account_circle, color: Colors.white, size: 40),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
              ),
            ),
            SizedBox(height: 50),

            TabBar(
              controller: _tabController,
              indicatorColor: Colors.orange,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs: [
                Tab(text: "Free"),
                Tab(text: "Professional"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildChallengeList(free: true),
                  _buildChallengeList(free: false),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 1),    );
  }

  Widget _buildChallengeList({required bool free}) {
    List<Map<String, String>> challenges = free
        ? [
      {"title": "Push-up Challenge", "location": "Online"},
      {"title": "5K Run Challenge", "location": "London"},
    ]
        : [
      {"title": "Bench Press Challenge NYC", "location": "New York"},
      {"title": "Pull-up Championship", "location": "Los Angeles"},
    ];

    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 20),
      itemCount: challenges.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  challenges[index]["title"]!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  "Location: ${challenges[index]["location"]!}",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: free ? Colors.orange : Colors.deepOrange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: Text(free ? "Join Challenge" : "Request to Join"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
