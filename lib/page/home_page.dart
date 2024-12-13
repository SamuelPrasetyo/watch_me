import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_page.dart';
import '../model/movie_list.dart';
import '../colors/color_palette.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  List<Movie> filteredMovies = movieList;

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Watch Me',
              style: GoogleFonts.oxygen(
                color: Colors.black, 
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            )),
          // backgroundColor: colorWhite,
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rekomendasi Film',
                    style: GoogleFonts.oxygen(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const FilmCarousel(),
                  const SizedBox(height: 20),
                  SearchBox(
                    controller: _searchController,
                    focusNode: _searchFocusNode,
                    onSearch: _onSearch,
                  ),
                  const SizedBox(height: 10),
                  Expanded(child: MovieGrid(movies: filteredMovies))
                ],
              ),
            ),
          ),
        ));
  }

  void _onSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredMovies = movieList;
      } else {
        filteredMovies = movieList
            .where((movie) =>
                movie.title.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }
}

class SearchBox extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String) onSearch;

  const SearchBox({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2), // Warna bayangan
          spreadRadius: 2, // Sebarannya
          blurRadius: 5, // Ketajaman blur
          offset: const Offset(0, 3), // Posisi bayangan (x, y)
        ),
      ],
    ),
    child: TextField(
      controller: controller,
      focusNode: focusNode,
      onChanged: onSearch,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        prefixIcon: const Icon(
          Icons.search,
          color: colorBlack,
          size: 20,
        ),
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 20,
          minWidth: 25,
        ),
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: GoogleFonts.oxygen(color: colorGrey),
      ),
    ),
  );
}
}

class FilmCarousel extends StatelessWidget {
  const FilmCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'images/venom-the-last-dance.jpg',
      'images/moana2.jpg',
      'images/deadpool-and-wolverine.jpg',
      'images/inside-out2.jpg',
      'images/despicable-me4.jpg'
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 220,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        enlargeCenterPage: true,
        viewportFraction: 0.6,
        scrollDirection: Axis.horizontal,
      ),
      items: imgList
          .map((item) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                ),
              ))
          .toList(),
    );
  }
}

class MovieGrid extends StatelessWidget {
  final List<Movie> movies;

  const MovieGrid({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.6,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MovieCard(movie: movies[index]);
      },
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(movie: movie),
          ),
        );
      },
      child: SizedBox(
        height: 350, // Tinggi eksplisit untuk card
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  movie.imagePoster,
                  fit: BoxFit.cover,
                  height: 220,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  movie.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oxygen(
                      fontSize: 14, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star_rounded, color: Colors.amber),
                        const SizedBox(width: 4),
                        Text(
                          '${movie.scoreRating}',
                          style: GoogleFonts.oxygen(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    // Grup 2: Age Rating
                    Row(
                      children: [
                        const Icon(Icons.person, color: Colors.blue),
                        const SizedBox(width: 4),
                        Text(
                          '${movie.ageRating}',
                          style: GoogleFonts.oxygen(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
