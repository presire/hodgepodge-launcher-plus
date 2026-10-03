# Hodgepodge Application Launcher Plus for KDE Plasma 6

Gabriel Tenita 氏の [Hodgepodge Application Launcher](https://github.com/the-ge/thege.hodgepodge.launcher) の拡張版です。
元のバージョン 2.2.2 をもとに、[元のバージョンとの違い](#元のバージョンとの違い)の機能を追加しています。

> [!IMPORTANT]
> このバージョンは、ウィジェットの ID を元のバージョンから変えていません。
> ウィジェットの一覧には「Hodgepodge Launcher Plus」と表示され、インストールすると元のバージョンと置き換わります (両方を同時にはインストールできません)。
> このバージョンの不具合は、元のリポジトリではなく[このリポジトリ](https://github.com/presire/hodgepodge-launcher-plus/issues)へ報告してください。

English: [README.md](README.md)

## 元のバージョンとの違い

+ グリッドのアイコンの下にアプリケーションの説明を表示
    + 各アプリケーションの説明 (デスクトップエントリの `Comment`) を、アイコンの下に1行または2行で表示します。
    + 表示する場所を、なし、お気に入り、アプリケーション、お気に入りとアプリケーションから選べます。
    + 説明は、レイアウトがグリッドの場合だけ表示されます。
    + 説明は初期設定では1行です。2行にすると長い説明も表示されますが、グリッドのマス目は正方形のため幅も広がり、1行に並ぶアイコンの数が減ります。
    + 説明を表示するときだけ、グリッドのマス目が大きくなります。表示しないときは、元のバージョンと同じ大きさです。
+ 日本語翻訳
+ オランダ語とルーマニア語の翻訳も、追加した設定に対応しています。
+ コンパイル済みの翻訳をリポジトリに含めているため、GitHub からインストールする場合も、翻訳をコンパイルせずに翻訳が表示されます。

## 元のバージョンの機能

### 追加された設定

アプリケーションランチャー (Kickoff) の設定に、次の設定が追加されています。
+ ランチャーを開いたときに、お気に入り、場所、または既存のカテゴリのいずれかを最初に表示する
+ ユーザーアバターのサイズ
+ グリッドのアイコンのサイズ
+ リストのアイコンのサイズ
+ 区切り線の幅
+ 区切り線の色
+ ツールバーの操作ボタンを、従来の電源／セッション／電源とセッションに加えて、すべてオーバーフローメニューへ移動できる

## スクリーンショット (元のバージョン)

![Default settings (48px grid) vs my settings(64px grid)](https://github.com/user-attachments/assets/de2351db-83d2-4f83-921d-cc540fe5149e)

![Default settings (32px list)](https://github.com/user-attachments/assets/e502e142-23f6-47ef-a158-93ac6c0da52f)

![Grid variants: 128px vs 16px](https://github.com/user-attachments/assets/ba353256-bd98-44ca-91b1-b64f9a899515)

![List variants: 1280px vs 16px](https://github.com/user-attachments/assets/862ebf2d-f8b2-4728-a8b3-7e5df32d8471)

![Configuration options](https://github.com/user-attachments/assets/b0b7d127-5288-4701-af9c-708ac8bb2105)

## インストール

> [!NOTE]
> [KDE Store のページ](https://store.kde.org/p/2330881)で配布されているのは元のバージョンで、このバージョンの機能は含まれていません。

### 1. ファイルを取得する

GitHub のリポジトリページ (https://github.com/presire/hodgepodge-launcher-plus) からファイルを取得します。
- `Code` > `Download ZIP` をクリックし、ダウンロードしたファイルを展開する。
- または、リポジトリをクローンする。

### 2. インストールまたはアップデートする

展開したフォルダのルート (README.md がある場所) で端末を開きます。

このバージョンも元のバージョンもインストールしていない場合 (plasmashell も再起動されます):
```sh
./bin/plasmoid-install
```

このバージョンまたは元のバージョンをインストール済みの場合 (plasmashell も再起動されます):
```sh
./bin/plasmoid-upgrade
```

元のバージョンからアップデートした場合も、パネルに置いたウィジェットとその設定は残ります。

### 3. ウィジェットを追加する

1. タスクバーを右クリックし、`ウィジェットを追加または管理...`を選びます。
2. ウィジェットの一覧からこのウィジェットを選び、タスクバーへドラッグ＆ドロップします。

### 4. アプリケーションの説明を表示する

1. ランチャーを右クリックし、設定を開きます。
2. `外観`ページの`アイコンの下にコメントを表示：`で、説明を表示する場所を選びます。
3. 必要に応じて、`コメントの行数：`で1行か2行を選びます。

### アンインストール

plasmashell も再起動されます。

```sh
./bin/plasmoid-uninstall
```

## 翻訳状況

| 言語   | ¹翻訳対象     | 翻訳済み   | ²翻訳率           |
| :---   |          ---: |       ---: |              ---: |
| ja     | ✅         82 |         82 | ✅        100.00% |
| nl     | ✅         82 |         82 | ✅        100.00% |
| ro     | ✅         82 |         82 | ✅        100.00% |

*¹ 翻訳ファイルの翻訳対象の文字列数が、テンプレートと同じであることを確認しています。*

*² 翻訳ファイルの翻訳済みの割合が 100% であることを確認しています。*

> [!TIP]
> 詳細は [i18n-status_jp.md](i18n-status_jp.md) を参照してください。

## 翻訳の方法

### 1. このリポジトリをクローンするか、クローン済みの場合は更新し、クローンしたリポジトリのルート (この README がある場所) へ移動します。

### 2. ウィジェットのコードから翻訳対象の文字列を抽出します。

```sh
./bin/i18n-extract
```

> [!NOTE]
> gettext がインストールされていない場合、`./bin/i18n-extract` はインストールを試みます。

### 3. 翻訳する言語のカタログファイルがまだない場合は、作成します。
```sh
./bin/i18n-new <LANGUAGE_CODE> # <LANGUAGE_CODE> は de、en_UK など
```

### 4. `/src/translate/<LANGUAGE_CODE>.po` ファイルの文字列を、できるだけ多く翻訳します。

### 5. 翻訳をコンパイルします。
```sh
./bin/i18n-compile
```

> [!NOTE]
> このリポジトリはコンパイル済みの翻訳 (`/src/contents/locale/`) を含んでいるため、`.po` ファイルと一緒にコミットしてください。

### 6. 翻訳を確認します。

#### 6.1 翻訳する言語のロケールがシステムにあることを確認します。

```sh
locale --all
```

#### 6.2 翻訳を作り直し、ウィジェットをインストールまたはアップデートします。

```sh

# このウィジェットをまだインストールしていない場合
./bin/i18n-extract && ./bin/i18n-compile && ./bin/plasmoid-install

# このウィジェットをインストール済みの場合
./bin/i18n-extract && ./bin/i18n-compile && ./bin/plasmoid-upgrade
 
```

> [!NOTE]
> `./bin/plasmoid-install` と `./bin/plasmoid-upgrade` は、どちらも plasmashell を再起動します。

## テスト

1. `plasmoidviewer` を使う:
    ```sh
    plasmoidviewer --size 960x720 --location bottomedge --formfactor horizontal --applet .
    plasmoidviewer --size 960x720 --location leftedge --formfactor vertical --applet .
    plasmoidviewer --help
    ```

    翻訳を確認する場合は、その翻訳のロケールを指定します。

    ```sh
    LC_ALL=ja_JP.utf8 plasmoidviewer --size 960x720 --applet .
    ```

2. クローンしたリポジトリからシステムへインストールする ([インストール](#インストール)を参照)。

3. plasmashell のログを見る:
    ```sh
    journalctl -f /usr/bin/plasmashell
    ```

## ユーティリティ

### ウィジェット (`/bin/` フォルダ)

- `plasmoid-install` (`plasmashell` も再起動します)

- `plasmoid-upgrade` (`plasmashell` も再起動します)

- `plasmoid-uninstall` (`plasmashell` も再起動します)

- `plasmoid-generate` (`/src/metadata.json` のバージョンを付けた .plasmoid パッケージを生成します)

### 国際化 (`/bin/` フォルダ)

- `i18n-test`: 翻訳状況を簡潔に表示します (GitHub Actions での利用を想定していますが、現在はローカルでのみ動作します)。

- `i18n-status`: 翻訳状況と、いくつかのテストの結果を表示します。

- `i18n-extract`: コードと既存の翻訳カタログから翻訳対象の文字列を抽出し、新しい翻訳テンプレートファイル `template.pot` を作ります。

- `i18n-new`: 新しい翻訳カタログ (.po) ファイルを作ります。言語コードを引数に指定します。
    ```sh
    ./bin/i18n-new de
    ```

    または

    ```sh
    ./bin/i18n-new en_UK
    ```

- `i18n-compile`: 既存の翻訳カタログ (.po) ファイルを、コンパイル済みの翻訳 (.mo) ファイルに変換します。例: `/src/translate/ja.po` から `/src/contents/locale/ja/LC_MESSAGES/plasma_applet_thege.hodgepodge.launcher.mo` へ。

### plasmashell の再起動

1. 推奨する方法:
    ```sh
    systemctl --user restart plasma-plasmashell.service
    ```

2. 強制的な方法 (できるだけ使わないでください):
    ```sh
    killall plasmashell && kstart plasmashell
    ```

## クレジット

- [Gabriel Tenita](https://github.com/the-ge): このバージョンのもとになった [Hodgepodge Application Launcher](https://github.com/the-ge/thege.hodgepodge.launcher) の作者。

元のバージョンの作者は、このウィジェットに関する理解や実装の助けとなった、次の方々・チームに感謝しています。

- [Chris Holland](https://github.com/Zren):
    - [Tiled Menu](https://github.com/Zren/plasma-applet-tiledmenu) ([KDE Store](https://store.kde.org/p/2142716/)): 元のバージョンの作者が気に入っていたランチャーで、KDE 6 での問題が Hodgepodge を作るきっかけになりました。
    - [Plasma Widget tutorial](https://develop.kde.org/docs/plasma/widget/) ([旧版](https://zren.github.io/kde/docs/widget/))
    - [Plasma Widget Library](https://github.com/Zren/plasma-applet-lib)
    - [Zren's Plasma Widgets](https://github.com/Zren/plasma-applets)

- [Jin Liu](https://github.com/jinliu):
    - [Kickon](https://github.com/jinliu/plasma-applet-kickon) ([KDE Store](https://store.kde.org/p/2286877))

- [Claudio Catterina](https://github.com/ccatterina):
    - [PlasMusic Toolbar](https://github.com/ccatterina/plasmusic-toolbar): 直接の関係はありませんが、国際化と GitHub リポジトリの見せ方の参考になりました。

- [KDE team](https://kde.org/):
    - [Plasma Framework](https://invent.kde.org/plasma/libplasma)
    - [Application Launcher (Kickoff)](https://invent.kde.org/plasma/plasma-desktop/-/tree/master/applets/kickoff)
    - [Application Menu (Kicker)](https://invent.kde.org/plasma/plasma-desktop/-/tree/master/applets/kickerf)
    - [KDE Developer Documentation](https://develop.kde.org/docs/)
    - [KDE API Reference](https://api.kde.org/index.html) (特に [Kirigami](https://api.kde.org/kirigami-index.html))
    - [Plasma 6 Wiki](https://community.kde.org/Plasma/Plasma_6)

- [Qt team](https://www.qt.io/)
    - [Qt QML Documentation](https://doc.qt.io/qt-6/qtqml-index.html)
    - [Qt Quick Controls Documentation](https://doc.qt.io/qt-6/qtquickcontrols-index.html)
    - [Qt Learning Hub](https://www.qt.io/qt-learning-hub)
    - [Qt Blog](https://www.qt.io/blog)

## ライセンス

このバージョンは、元のバージョンと同じ GNU General Public License で配布しています。[LICENSE](LICENSE) を参照してください。
