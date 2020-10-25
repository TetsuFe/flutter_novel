import 'package:firebase/firebase.dart' as fb;
import 'package:flutter_novel/sentence/models/sentence.dart';
import 'package:flutter_novel/story/models/story.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoryApi {
  Stream<List<Story>> getStoryList() {
    try {
      return fb.firestore().collection('stories').onSnapshot.map(
          (event) => event.docs.map((e) => Story.fromJson(e.data())).toList());
    } on Exception catch (_) {
      throw Exception('なんらかのエラーが発生しました');
    }
  }

  Future<List<Sentence>> getStorySentenceList(String storyId) async {
    try {
      final storySentenceListReference = await fb
          .firestore()
          .collection('storySentenceLists')
          .doc(storyId)
          .get();
      final storySentenceListDocument = storySentenceListReference.data();
      final storySentenceList =
          storySentenceListDocument['sentenceList'] as List<dynamic>;
      // storySentenceList.cast<Map<String, dynamic>>();
      return storySentenceList
          .cast<Map<String, dynamic>>()
          .map((e) => Sentence.fromJson(e))
          .toList();
    } on Exception catch (_) {
      throw Exception('なんらかのエラーが発生しました');
    }
  }
}

final storyApiProvider = Provider(
  (_) => StoryApi(),
);
