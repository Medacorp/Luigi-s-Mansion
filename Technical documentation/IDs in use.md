Mansions:

The empty mansion is used when a mansion has been cleared, or previous save data got loaded, but the currently selected mansion had no save data before.

```
Mansion      | Type | Index | Exterior | Add-on       | Namespace                 | Data pack name
Empty        | -1   | -1    | -1       | vanilla      | -                         | "file/Luigi's Mansion"
Normal       | 0    | 0     | 0        | vanilla      | luigis_mansion            | "file/Luigi's Mansion"
(GCN) Hidden | 1    | 0     | 0        | vanilla      | luigis_mansion            | "file/Luigi's Mansion"
(3DS) Hidden | 1    | 1     | 0        | 3ds_remake   | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
Original     | 2    | 2     | 1        | beta_mansion | luigis_beta_mansion       | "file/Luigi's Beta Mansion"
Trill Tower  | 3    | 3     | 2        | trill_tower  | trill_tower               | "file/Thrill Tower"
```

Training room programs:

```
Program    | Value | Add-on              | Namespace                 | Data pack name
Vanilla    | 0     | vanilla             | luigis_mansion            | "file/Luigi's Mansion"
3DS Remake | 1     | 3ds_remake          | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
Endless    | 2     | extensive_training  | extensive_training        | "file/Extensive Training"
Speedrun   | 3     | extensive_training  | extensive_training        | "file/Extensive Training"
```

Music groups:

Music groups are used to make clashing less likely. The music type of group 0 and group 1 are unrelated.

```
Group | Add-on        | Namespace                 | Data pack name
0     | vanilla       | luigis_mansion            | "file/Luigi's Mansion"
1     | 3ds_remake    | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
2     | beta_mansion  | luigis_beta_mansion       | "file/Luigi's Beta Mansion"
3-4   | music_packs   | music_packs               | "file/Music Packs"
5     | trill_tower   | trill_tower               | "file/Thrill Tower"
```

Radar types:

```
Type | Detects                  | Add-on        | Namespace                 | Data pack name
0    | Boos in lit rooms        | vanilla       | luigis_mansion            | "file/Luigi's Mansion"
1    | Ghosts in a small radius | beta_mansion  | luigis_beta_mansion       | "file/Luigi's Beta Mansion"
```

Map settings:

```
Values | Add-on       | Namespace           | Data pack name
1-4    | vanilla      | luigis_mansion      | "file/Luigi's Mansion"
5      | beta_mansion | luigis_beta_mansion | "file/Luigi's Beta Mansion"
6      | music_packs  | music_packs         | "file/Music Packs"
```

Gallery numbers

The 3DS Remake Values column refers to the SelectedFrame score.

```
Numbers shown | 3DS Remake Values | Add-on             | Namespace                 | Data pack name
1-23          | 1-23 and 25       | vanilla            | luigis_mansion            | "file/Luigi's Mansion"
              | 24 and 26         | 3ds_remake         | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
24            | 27                | trill_tower        | trill_tower               | "file/Thrill Tower"
```