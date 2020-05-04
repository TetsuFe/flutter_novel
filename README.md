# flutter_state_management ![](https://github.com/tetsufe/state_notifier_sample6/workflows/Flutter%20CI/badge.svg)
気になったFlutterの状態管理（state management）手法について試してみるサンプルリポジトリです

[サンプルサイト](https://tetsufe.github.io/state_notifier_sample6/)

- ChangeNotifier/ValueNotifier
- StateNotifier & Freezed


## provider
[https://pub.dev/packages/provider](https://pub.dev/packages/provider)


## state_notifier
[https://pub.dev/packages/state_notifier](https://pub.dev/packages/state_notifier)


## freezed
[https://pub.dev/packages/freezed](https://pub.dev/packages/freezed)


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
