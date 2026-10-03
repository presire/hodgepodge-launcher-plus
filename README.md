# Hodgepodge Application Launcher Plus for KDE Plasma 6

An extended version of [Hodgepodge Application Launcher](https://github.com/the-ge/thege.hodgepodge.launcher) by Gabriel Tenita.
It is based on version 2.2.2 of the original, and adds the features listed in [DIFFERENCES FROM THE ORIGINAL](#differences-from-the-original).

> [!IMPORTANT]
> This version keeps the widget ID of the original.
> It appears as "Hodgepodge Launcher Plus" in the widget list, and installing it replaces the original (the two cannot be installed at the same time).
> Please report issues of this version to [this repository](https://github.com/presire/hodgepodge-launcher-plus/issues), not to the original one.

日本語: [README_JP.md](README_JP.md)

## DIFFERENCES FROM THE ORIGINAL

+ Application descriptions below grid icons
    + Shows the description of each application (the `Comment` of its desktop entry) below its icon, on one or two lines.
    + Choose where to show them: none, favorites, applications, or favorites and applications.
    + Descriptions are shown only in layouts set to Grid.
    + Descriptions take one line by default. With two lines, longer descriptions are shown, but grid cells (which are square) also become wider and fewer icons fit in a row.
    + Grid cells become larger only when descriptions are shown. When they are hidden, the grids are the same size as in the original.
+ Japanese translation
+ Dutch and Romanian translations also cover the added settings.
+ Compiled translations are included in the repository, so translations work when installing from GitHub without compiling them.

## FEATURES OF THE ORIGINAL

### New configuration options

The following configuration options were added on top of Application Launcher (Kickoff)'s:
+ the launcher can start with favorites, places or one of the existing categories
+ user avatar size
+ grids icons size
+ lists icons size
+ separator lines width
+ separator lines color
+ toolbar action buttons can be all moved to the overflow menu, in addition to the former power/session/power+session options

## SCREENSHOTS (ORIGINAL VERSION)

![Default settings (48px grid) vs my settings(64px grid)](https://github.com/user-attachments/assets/de2351db-83d2-4f83-921d-cc540fe5149e)

![Default settings (32px list)](https://github.com/user-attachments/assets/e502e142-23f6-47ef-a158-93ac6c0da52f)

![Grid variants: 128px vs 16px](https://github.com/user-attachments/assets/ba353256-bd98-44ca-91b1-b64f9a899515)

![List variants: 1280px vs 16px](https://github.com/user-attachments/assets/862ebf2d-f8b2-4728-a8b3-7e5df32d8471)

![Configuration options](https://github.com/user-attachments/assets/b0b7d127-5288-4701-af9c-708ac8bb2105)

## INSTALLATION

> [!NOTE]
> The [KDE Store page](https://store.kde.org/p/2330881) distributes the original version, without the features of this version.

### 1. Get the files

Get the files from the GitHub repository page (https://github.com/presire/hodgepodge-launcher-plus):
- Click `Code` > `Download ZIP`, then extract it to your system.
- or clone the repository.

### 2. Install or upgrade

Go to the extracted files root (where README.md is) and open a terminal.

If neither this version nor the original is installed yet (this also restarts plasmashell):
```sh
./bin/plasmoid-install
```

If this version or the original is already installed (this also restarts plasmashell):
```sh
./bin/plasmoid-upgrade
```

When upgrading from the original, the widgets already on your panels and their settings are kept.

### 3. Add the widget

1. Right-click on the taskbar and choose `Add or Manage Widgets`.
2. Click on the plasmoid in the widget list, then drag and drop this widget to the taskbar.

### 4. Show application descriptions

1. Right-click on the launcher and choose `Configure Hodgepodge Launcher Plus…`.
2. On the `Appearance` page, choose where to show descriptions in `Show comments below icons in:`.
3. If needed, choose one or two lines in `Comment lines:`.

### Uninstallation

This also restarts plasmashell.

```sh
./bin/plasmoid-uninstall
```

## TRANSLATION STATUS

| Locale | ¹Translatable | Translated | ²Translated Ratio |
| :---   |          ---: |       ---: |              ---: |
| ja     | ✅         82 |         82 | ✅        100.00% |
| nl     | ✅         82 |         82 | ✅        100.00% |
| ro     | ✅         82 |         82 | ✅        100.00% |

*¹ The language file translatable string count is checked to be the same as in the template.*

*² The language file translated string ratio is checked to be 100%.*

> [!TIP]
> See more details at [i18n-status.md](i18n-status.md).

## HOW TO TRANSLATE

### 1. Clone this repository or update it if already cloned, then go to your cloned repository local root (where this README is located).

### 2. Extract translatable strings from the plasmoid code:

```sh
./bin/i18n-extract
```

> [!NOTE]
> `./bin/i18n-extract` will attempt to install gettext if not already installed.

### 3. Create your language catalog file, if it does not already exist:
```sh
./bin/i18n-new <LANGUAGE_CODE> # <LANGUAGE_CODE> i.e. de, en_UK
```

### 4. Translate as many of the strings in the `/src/translate/<LANGUAGE_CODE>.po` file as you can. 

### 5. Compile the translations:
```sh
./bin/i18n-compile
```

> [!NOTE]
> This repository includes the compiled translations (`/src/contents/locale/`), so commit them together with the `.po` file.

### 6. Test your translation

#### 6.1 Check that your system has the locale for the language you're translating:

```sh
locale --all
```

#### 6.2 Rebuild translations and install/upgrade the plasmoid:

```sh

# if this plasmoid is not already installed
./bin/i18n-extract && ./bin/i18n-compile && ./bin/plasmoid-install

# if this plasmoid is already installed
./bin/i18n-extract && ./bin/i18n-compile && ./bin/plasmoid-upgrade
 
```

> [!NOTE]
> `./bin/plasmoid-install` and `./bin/plasmoid-upgrade` will also restart plasmashell

## TESTING

1. Using `plasmoidviewer`:
    ```sh
    plasmoidviewer --size 960x720 --location bottomedge --formfactor horizontal --applet .
    plasmoidviewer --size 960x720 --location leftedge --formfactor vertical --applet .
    plasmoidviewer --help
    ```

    If you are testing translations, add the locale of your translation, i.e.

    ```sh
    LC_ALL=ro_RO.utf8 plasmoidviewer --size 960x720 --applet .
    ```

2. Installing on your system from the cloned repository (see [INSTALLATION](#installation)).

3. View the plasmashell system logs:
    ```sh
    journalctl -f /usr/bin/plasmashell
    ```

## UTILITIES

### Plasmoid (in the `/bin/` folder)

- `plasmoid-install` (also restarts `plasmashell`)

- `plasmoid-upgrade` (also restarts `plasmashell`)

- `plasmoid-uninstall` (also restarts `plasmashell`)

- `plasmoid-generate` (generates a .plasmoid package versioned by `/src/metadata.json`)

### Internationalisation (in the `/bin/` folder)

- `i18n-test`: displays a concise translations status (it is meant for use in a GitHub action, though it only works locally for now).

- `i18n-status`: displays translations status, alog with some tests' results.

- `i18n-extract`: extracts translatable strings from code and existing i18n catalogs into a new `template.pot` i18n template file.

- `i18n-new`: generates a new i18n catalog (.po) file; takes a language code argument, i.e.
    ```sh
    ./bin/i18n-new de
    ```

    or

    ```sh
    ./bin/i18n-new en_UK
    ```

- `i18n-compile`: compiles existing i18n catalog (.po) files to machine object (.mo) files, i.e. `/src/translate/nl.po` to `/src/contents/locale/nl/LC_MESSAGES/plasma_applet_thege.hodgepodge.launcher.mo`.

### Restart plasmashell

1. Recommended method:
    ```sh
    systemctl --user restart plasma-plasmashell.service
    ```

2. Brute force (do not use it possible):
    ```sh
    killall plasmashell && kstart plasmashell
    ```

## CREDITS

- [Gabriel Tenita](https://github.com/the-ge): author of the original [Hodgepodge Application Launcher](https://github.com/the-ge/thege.hodgepodge.launcher), on which this version is based.

The original author thanks the following individuals/teams for their work that helped understand things related to this plasmoid or code things into this plasmoid.

- [Chris Holland](https://github.com/Zren):
    - [Tiled Menu](https://github.com/Zren/plasma-applet-tiledmenu) (or [on KDE Store](https://store.kde.org/p/2142716/)) - the original author's favorite launcher, whose issues with KDE 6 prompted the original author to make Hodgepodge.
    - [Plasma Widget tutorial](https://develop.kde.org/docs/plasma/widget/) (and its [old version](https://zren.github.io/kde/docs/widget/))
    - [Plasma Widget Library](https://github.com/Zren/plasma-applet-lib)
    - [Zren's Plasma Widgets](https://github.com/Zren/plasma-applets)

- [Jin Liu](https://github.com/jinliu):
    - [Kickon](https://github.com/jinliu/plasma-applet-kickon) (or [on KDE Store](https://store.kde.org/p/2286877))

- [Claudio Catterina](https://github.com/ccatterina):
    - [PlasMusic Toolbar](https://github.com/ccatterina/plasmusic-toolbar): not directly related, but it gave ideas about internationalization and GitHub repository presentation.

- [KDE team](https://kde.org/):
    - [Plasma Framework](https://invent.kde.org/plasma/libplasma)
    - [Application Launcher (Kickoff)](https://invent.kde.org/plasma/plasma-desktop/-/tree/master/applets/kickoff)
    - [Application Menu (Kicker)](https://invent.kde.org/plasma/plasma-desktop/-/tree/master/applets/kickerf)
    - [KDE Developer Documentation](https://develop.kde.org/docs/)
    - [KDE API Reference](https://api.kde.org/index.html) (especially [Kirigami](https://api.kde.org/kirigami-index.html))
    - [Plasma 6 Wiki](https://community.kde.org/Plasma/Plasma_6)

- [Qt team](https://www.qt.io/)
    - [Qt QML Documentation](https://doc.qt.io/qt-6/qtqml-index.html)
    - [Qt Quick Controls Documentation](https://doc.qt.io/qt-6/qtquickcontrols-index.html)
    - [Qt Learning Hub](https://www.qt.io/qt-learning-hub)
    - [Qt Blog](https://www.qt.io/blog)

## LICENSE

This version is distributed under the same license as the original, the GNU General Public License. See [LICENSE](LICENSE).
