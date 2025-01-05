import 'package:chat_app/firestore/room_firestore.dart';
import 'package:chat_app/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../utils/shared_prefs.dart';

class UserFirestore {
  static final FirebaseFirestore _firebaseFirestoreInstance = FirebaseFirestore.instance;
  static final _userCollection = _firebaseFirestoreInstance.collection('user');

  static Future<String?> insertNewAccount() async{
    try{
      final newDoc = await _userCollection.add({
        'name':'ななし',
        'image_path':'https://play-lh.googleusercontent.com/3ImQkiRynf23t3kZ3PMtmGNA0OaozdlzjkH0e2OTV_wmHxUdXglyGpnWuxqmofmMAw'
      });

      print('アカウント作成完了');
      return newDoc.id;
    }catch(e){
      print('アカウント作成失敗　==== $e');
      return null;
    }
  }

  static Future<void> createUser() async{
    final myUid = await insertNewAccount();
    if(myUid != null) {
      await RoomFirestore.createRoom(myUid);
      await SharedPrefs.setUid(myUid);
    }
  }

  static Future<List<QueryDocumentSnapshot>?> fetchUsers() async {
    try{
      final snapshot = await _userCollection.get();
      snapshot.docs.forEach((doc) {
        print('ドキュメントID: ${doc.id} ----　名前: ${doc.data()['name']}');
      });
      return snapshot.docs;

    }catch(e){
      print('ユーザー情報の取得失敗 ==== $e');
      return null;
    }
  }

  static Future<void> updateUser(User newProfile) async{
    try{
      String myUid = SharedPrefs.fetchUid()!;
     await  _userCollection.doc(myUid).update({
        'name': newProfile.name,
        'image_path':newProfile.imagePath
      });
    }catch(e){
      print('ユーザー情報の更新失敗　==== $e');
    }
  }

  static Future<User?> fetchProfile(String uid) async{
    try{
      final snapshot = await _userCollection.doc(uid).get();
      User user = User(
        name: snapshot.data()!['name'],
        imagePath: snapshot.data()!['image_path'],
        uid: uid
      );
      return user;
    }catch(e){
      print('ユーザー情報の取得失敗 ----- $e');
      return null;
    }
  }

}