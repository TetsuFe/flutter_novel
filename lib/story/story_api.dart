import 'package:firebase/firebase.dart' as fb;
import 'package:flutter_state_management/story/story.dart';

class StoryApi {
  Stream<List<Story>> getStoryList() {
    try {
      return fb.firestore().collection('stories').onSnapshot.map(
          (event) => event.docs.map((e) => Story.fromJson(e.data())).toList());
    } on Exception catch (_) {
      throw Exception('なんらかのエラーが発生しました');
    }
  }
}
