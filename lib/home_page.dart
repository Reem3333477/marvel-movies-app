import 'package:flutter/material.dart';
import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGridView = true;
  String searchQuery = '';
  String sharedBadgeText = '20% OFF';

  void toggleView() {
    setState(() {
      isGridView = !isGridView;
    });
  }

  void changeAllBadges() {
    setState(() {
      if (sharedBadgeText == '20% OFF') {
        sharedBadgeText = '50% OFF';
      } else if (sharedBadgeText == '50% OFF') {
        sharedBadgeText = 'FREE';
      } else {
        sharedBadgeText = '20% OFF';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final filteredMovies = movies.where((movie) {
      final query = searchQuery.toLowerCase();
      return movie.title.toLowerCase().contains(query) ||
             movie.genre.toLowerCase().contains(query);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Library'),
        actions: [
          IconButton(
            icon: Icon(isGridView ? Icons.view_list : Icons.grid_view),
            onPressed: toggleView,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: filteredMovies.isEmpty
                ? const Center(
                    child: Text(
                      'No movies found',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  )
                : isGridView
                    ? GridView.builder(
                        padding: const EdgeInsets.all(12),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: filteredMovies.length,
                        itemBuilder: (context, index) {
                          return MovieCard(
                            movie: filteredMovies[index],
                            onAddToList: () {},
                            discountBadge: sharedBadgeText,
                            onBadgeTap: changeAllBadges,
                          );
                        },
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.all(12),
                        itemCount: filteredMovies.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: SizedBox(
                              height: 140,
                              child: MovieCard(
                                movie: filteredMovies[index],
                                onAddToList: () {},
                                discountBadge: sharedBadgeText,
                                onBadgeTap: changeAllBadges,
                              ),
                            ),
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}