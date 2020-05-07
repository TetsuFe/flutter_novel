# state_notifier_sample6 ![](https://github.com/tetsufe/state_notifier_sample6/workflows/Flutter%20CI/badge.svg) [![codecov](https://codecov.io/gh/TetsuFe/state_notifier_sample6/branch/master/graph/badge.svg)](https://codecov.io/gh/TetsuFe/state_notifier_sample6)
気になったFlutterの状態管理（state management）手法について試してみるサンプルリポジトリです
6に特に意味はありません

[サンプルサイト](https://tetsufe.github.io/state_notifier_sample6/#/)
[サンプルサイト(Firebase Hosting版)](https://state-notifier-sample6.web.app/#/)

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


### テスト
https://github.com/TetsuFe/state_notifier_sample6/wiki/%E3%83%86%E3%82%B9%E3%83%88tips


## freezed
[https://pub.dev/packages/freezed](https://pub.dev/packages/freezed)

コード生成
$ flutter pub pub run build_runner build --delete-conflicting-outputs


## flutter web 関連
https://github.com/TetsuFe/state_notifier_sample6/wiki/Web%E9%96%A2%E9%80%A3%E3%81%AETips


## github actions
https://github.com/TetsuFe/state_notifier_sample6/wiki/GitHub-Actions


## その他
https://hachibeechan.hateblo.jp/entry/change-notifier-does-not-solve-anything-by-itselfs
