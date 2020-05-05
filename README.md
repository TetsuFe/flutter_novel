# state_notifier_sample6 ![](https://github.com/tetsufe/state_notifier_sample6/workflows/Flutter%20CI/badge.svg)
気になったFlutterの状態管理（state management）手法について試してみるサンプルリポジトリです
6に特に意味はありません

[サンプルサイト](https://tetsufe.github.io/state_notifier_sample6/)

- StateNotifier & Freezed


## 特に参考にした資料
- [https://github.com/mono0926/wdb106-flutter/tree/state_notifier](https://github.com/mono0926/wdb106-flutter/tree/state_notifier)

## provider
[https://pub.dev/packages/provider](https://pub.dev/packages/provider)

- 本リポジトリでは、v4.10.1-dev以上のバージョンを使用
  - BuildContextの static extension である context.select や context.read を使いたいため

- [Consumer](https://pub.dev/documentation/provider/latest/provider/Consumer-class.html)
  - contextが取得できないタイミングで使う
- [Selector]()
  - クラスの一部のメンバーに対して更新をlistenする

## state_notifier
[https://pub.dev/packages/state_notifier](https://pub.dev/packages/state_notifier)


- [LocatorMixin](https://pub.dev/documentation/state_notifier/latest/state_notifier/LocatorMixin-mixin.html)
- [state_notifierのソースコード](https://github.com/rrousselGit/state_notifier/blob/master/packages/state_notifier/lib/state_notifier.dart)

### 参考サイト
- https://qiita.com/_masaokb/items/fe77495db0aeba226d2a


## freezed
[https://pub.dev/packages/freezed](https://pub.dev/packages/freezed)

コード生成
$ flutter pub pub run build_runner build --delete-conflicting-outputs

## flutter web
[https://flutter.dev/docs/get-started/web](https://flutter.dev/docs/get-started/web)

すでに通常の方法でflutterプロジェクトを作っている場合

```
$ flutter channel beta
$ flutter upgrade
$ flutter config --enable-web
$ flutter create .
$ flutter run -d chrome
```


## github actions
サンプルアプリのデプロイにGithub Actionsを使っています。

本リポジトリのworkflow設定ファイルは以下です

[https://github.com/TetsuFe/state_notifier_sample6/blob/master/.github/workflows/main.yml](https://github.com/TetsuFe/state_notifier_sample6/blob/master/.github/workflows/main.yml)


### actionsの文法について
- [https://help.github.com/ja/actions/reference/workflow-syntax-for-github-actions](https://help.github.com/ja/actions/reference/workflow-syntax-for-github-actions)
- [https://qiita.com/HeRo/items/935d5e268208d411ab5a#%E3%83%97%E3%83%AB%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88%E3%82%92%E3%83%9E%E3%83%BC%E3%82%B8%E3%81%99%E3%82%8B](https://qiita.com/HeRo/items/935d5e268208d411ab5a#%E3%83%97%E3%83%AB%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88%E3%82%92%E3%83%9E%E3%83%BC%E3%82%B8%E3%81%99%E3%82%8B)
- [https://gist.github.com/TetsuFe/fcfbd2731ee0577289f625687297bd18](https://gist.github.com/TetsuFe/fcfbd2731ee0577289f625687297bd18)

### deploy
- [https://github.com/peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)
- [https://qiita.com/taigamikami/items/348878ee606cf9352e84](https://qiita.com/taigamikami/items/348878ee606cf9352e84)
    - [v3とv2の差分](https://github.com/peaceiris/actions-gh-pages/issues/123)
- [https://help.github.com/ja/actions/configuring-and-managing-workflows/authenticating-with-the-github_token](https://help.github.com/ja/actions/configuring-and-managing-workflows/authenticating-with-the-github_token)


## その他
https://hachibeechan.hateblo.jp/entry/change-notifier-does-not-solve-anything-by-itselfs


## web関連のtips

### mediaquery
https://qiita.com/najeira/items/c98c5fec9c71104f8263

```dart
    final windowWidth = MediaQuery.of(context).size.width;

    return 
      Padding(
          padding: windowWidth > 800
              ? EdgeInsets.symmetric(horizontal: 140)
              : EdgeInsets.symmetric(horizontal: 0),
          child: Container()
```


### assets
画像のデバッグ時はキャッシュの削除を忘れないようにしましょう。これで少しハマりました。

web/assets/story/1/hokuma.jpg を表示させないとします

1. まず web/ 配下に　assets/story/1/hokuma.jpg ファイルをディレクトリと一緒に作成します
2. pubspec.yamlに以下を追記します

```dart
flutter:
  assets:
   - web/assets/
```

3. Imageウィジェットの使い方
以下のようにImage.networkを使ってアクセスできます

```dart
Image.network('assets/story/1/hokuma.jpg'),
```


### パイパーリング
サンプル

![サンプル画像](https://github.com/TetsuFe/state_notifier_sample6/blob/master/docs/images/hyperlink_sample.png)

https://pub.dev/packages/url_launcher_web を使います

pubspec.yamlに以下を記述

```yaml
dependencies:
  url_launcher: ^5.1.4
  url_launcher_web: ^0.1.0
```

使い方

```dart
import 'package:url_launcher/url_launcher.dart';

GestureDetector(
  onTap: () {
    launch('https://github.com/tetsufe/state_notifier_sample6/');
  },
  child: Text(
    'GitHubリポジトリはこちら',
    style: TextStyle(
      decoration: TextDecoration.underline,
      color: Colors.blue,
    ),
  ),
),
```



