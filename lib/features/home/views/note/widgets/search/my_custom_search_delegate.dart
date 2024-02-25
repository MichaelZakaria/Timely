import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/features/home/models/note_model.dart';
import 'package:timely/features/home/views/note/note.dart';
import 'package:timely/features/home/views/note/widgets/note_reminder/my_note_reminder_bar.dart';
import 'package:timely/temp_data/notes.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () => query = '', icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
  }


  @override
  void showResults(BuildContext context) {
    Get.to(const NoteScreen(), arguments: query);
    super.showResults(context);
  }



  @override
  Widget buildResults(BuildContext context) {
    List<NoteModel> matchQuery = [];

    for (var note in notes) {

      if (note.title != null) {
      if (note.content.toLowerCase().contains(query.toLowerCase())
          || note.title!.toLowerCase().contains(query.toLowerCase())
          || note.date.toLowerCase().contains(query.toLowerCase())
      ) {
        matchQuery.add(note);
      }
    } else {
        if (note.content.toLowerCase().contains(query.toLowerCase())
            || note.date.toLowerCase().contains(query.toLowerCase())
        ) {
          matchQuery.add(note);
        }
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) => MyNoteReminderBar(
            title: matchQuery[index].title,
            content: matchQuery[index].content,
            date: matchQuery[index].date,
        )
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<NoteModel> matchQuery = [];

    for (var note in notes) {

      if (note.title != null) {
        if (note.content.toLowerCase().contains(query.toLowerCase())
            || note.title!.toLowerCase().contains(query.toLowerCase())
            || note.date.toLowerCase().contains(query.toLowerCase())
        ) {
          matchQuery.add(note);
        }
      } else {
        if (note.content.toLowerCase().contains(query.toLowerCase())
            || note.date.toLowerCase().contains(query.toLowerCase())
        ) {
          matchQuery.add(note);
        }
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) => MyNoteReminderBar(
          title: matchQuery[index].title,
          content: matchQuery[index].content,
          date: matchQuery[index].date,
        )
    );
  }

}