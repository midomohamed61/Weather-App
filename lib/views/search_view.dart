import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search text"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16),
        child: Center(
          child: TextFormField(
            onChanged: (value){
              
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 32,horizontal: 16),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                  color: Colors.black
              )
              ),
              hintText: "Enter city name",
              suffixIcon: Icon(Icons.search),
              labelText: 'Search',
            ),
          ),
        ),
      ),
    );
  }
}
