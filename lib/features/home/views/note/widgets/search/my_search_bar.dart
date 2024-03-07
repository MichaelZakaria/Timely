import 'package:flutter/material.dart';
import 'package:timely/features/home/controllers/note_list_controller.dart';
import 'package:timely/features/home/models/note_model.dart';
import 'package:timely/temp_data/notes.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = NoteListController.instance;

    void search(String value) {
      List<NoteModel> matchQuery = [];

      for (var note in notes) {

        if (note.title != null) {
          if (note.content.toLowerCase().contains(value.toLowerCase().trim())
              || note.title!.toLowerCase().contains(value.toLowerCase().trim())
              || note.date.toLowerCase().contains(value.toLowerCase().trim())
          ) {
            matchQuery.add(note);
          }
        } else {
          if (note.content.toLowerCase().contains(value.toLowerCase().trim())
              || note.date.toLowerCase().contains(value.toLowerCase().trim())
          ) {
            matchQuery.add(note);
          }
        }
      }
      controller.noteList.clear();
      controller.noteList.addAll(matchQuery);
    }

    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xFFCCC2FE)
      ),
      child: TextField(

        onChanged: (value) =>  search(value),

        expands: false,
        style: const TextStyle(color: Colors.black),


        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search Note',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        ),
      ),
    );

    /// Using SearchDelegate
    // return Container(
    //   height: 40,
    //   margin: const EdgeInsets.symmetric(horizontal: 20),
    //   child: SearchBar(
    //     backgroundColor: const MaterialStatePropertyAll(Color(0xFFCCC2FE)),
    //     leading: const Icon(Icons.search),
    //     hintText: 'Search Note',
    //     onTap: () => showSearch(
    //         context: context,
    //         delegate: CustomSearchDelegate()
    //     ),
    //   ),
    // );

  }
}