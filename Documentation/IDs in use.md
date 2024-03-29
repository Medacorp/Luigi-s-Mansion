Mansions:

The empty mansion is used when a mansion has been cleared, or previous save data got loaded, but the currently selected mansion had no save data before.

```
Mansion      | ID                      | Index | Exterior | Data pack name
Empty        | luigis_mansion:empty    | -1    | -1       | "file/MEDACORP"
Normal       | luigis_mansion:normal   | 0     | 0        | "file/MEDACORP"
(GCN) Hidden | luigis_mansion:hidden   | 0     | 0        | "file/MEDACORP"
(3DS) Hidden | 3ds_remake:hidden       | 1     | 0        | "file/3DS Remake"
Original     | e3_demo:original        | 2     | 1        | "file/E3 Demo"
Trill Tower  | trill_tower:trill_tower | 3     | 2        | "file/Thrill Tower"
```

Music groups:

Music groups are used to make clashing less likely. The music type of group 0 and group 1 are unrelated.

```
Group | Add-on      | Namespace      | Data pack name
0     | vanilla     | luigis_mansion | "file/MEDACORP"
1     | 3ds_remake  | 3ds_remake     | "file/3DS Remake"
2     | e3_demo     | e3_demo        | "file/E3 Demo"
3-4   | music_packs | music_packs    | "file/Music Packs"
5     | trill_tower | trill_tower    | "file/Thrill Tower"
```

Radar types:

```
Type | Detects                  | Add-on  | Namespace      | Data pack name
0    | Boos in lit rooms        | vanilla | luigis_mansion | "file/MEDACORP"
1    | Ghosts in a small radius | e3_demo | e3_demo        | "file/E3 Demo"
```

Ghost appear types:

```
Ghost                             | Types              | Default
luigis_mansion:black_bogmire      | none, normal       | normal
luigis_mansion:blue_blaze         | none, normal, beta | normal
luigis_mansion:blue_twirler       | none, normal, beta | normal
luigis_mansion:bowling_ghost      | none, normal       | normal
luigis_mansion:ceiling_surprise   | none, normal       | normal
luigis_mansion:cinema_ghost       | none, normal       | normal
luigis_mansion:dancing_ghost_guy  | none, normal       | normal
luigis_mansion:flash              | none, normal, beta | normal
luigis_mansion:garbage_can_ghost  | none, normal       | normal
luigis_mansion:ghost_guy          | none, normal       | normal
luigis_mansion:gold_ghost         | none, normal, beta | normal
luigis_mansion:grabbing_ghost     | none, normal       | normal
luigis_mansion:mirror_ghost       | none, normal       | normal
luigis_mansion:mr_bones           | none, normal       | normal
luigis_mansion:purple_bomber      | none, normal       | normal
luigis_mansion:purple_puncher     | none, normal, beta | normal
luigis_mansion:red_grabbing_ghost | none, normal       | normal
luigis_mansion:speedy_spirit      | none, normal, beta | normal
luigis_mansion:temper_terror      | none, normal, beta | normal
luigis_mansion:waiter             | none               | none
e3_demo:basher                    | none, normal, beta | beta
e3_demo:body_slammer              | none, normal, beta | beta
e3_demo:ghost                     | none, normal, beta | beta
e3_demo:puncher                   | none, normal, beta | beta
```

Ghost attack types:

```
Ghost                             | Types                                | Default
luigis_mansion:black_bogmire      | none                                 | none
luigis_mansion:blue_blaze         | punch, basher, body_slam, earthquake | earthquake
luigis_mansion:blue_twirler       | punch, basher, body_slam, earthquake | earthquake
luigis_mansion:bowling_ghost      | throw_bowling_ball                   | throw_bowling_ball
luigis_mansion:ceiling_surprise   | none, drop_bomb                      | none
luigis_mansion:cinema_ghost       | basher, harmless_grab, harmfull_grab | harmfull_grab
luigis_mansion:dancing_ghost_guy  | stab, spin                           | spin
luigis_mansion:flash              | uppercut, basher                     | uppercut
luigis_mansion:garbage_can_ghost  | throw_banana                         | throw_banana
luigis_mansion:ghost_guy          | stab, spin                           | stab
luigis_mansion:gold_ghost         | none, punch, basher                  | punch
luigis_mansion:grabbing_ghost     | basher, harmless_grab, harmfull_grab | harmless_grab
luigis_mansion:mirror_ghost       | basher, harmless_grab, harmfull_grab | harmfull_grab
luigis_mansion:mr_bones           | throw_bone                           | throw_bone
luigis_mansion:purple_bomber      | none, drop_bomb                      | drop_bomb
luigis_mansion:purple_puncher     | uppercut, basher                     | uppercut
luigis_mansion:red_grabbing_ghost | basher, harmless_grab, harmfull_grab | harmfull_grab
luigis_mansion:speedy_spirit      | none, basher                         | none
luigis_mansion:temper_terror      | none, punch, basher                  | punch
luigis_mansion:waiter             | none                                 | none
e3_demo:basher                    | none, punch, basher                  | basher
e3_demo:body_slammer              | punch, basher, body_slam, earthquake | body_slam
e3_demo:ghost                     | none, punch, basher                  | punch
e3_demo:puncher                   | uppercut, basher                     | uppercut
```


Furniture shake sounds:

An invalid value results in no sound.

```
Value                        | Sound type
luigis_mansion:cello         | Cello
luigis_mansion:ceramic       | Vase
luigis_mansion:chest         | Room clear chest
luigis_mansion:concrete      | Concrete
luigis_mansion:drum          | Drum
luigis_mansion:fridge        | Fridge
luigis_mansion:generic       | Generic
luigis_mansion:harp          | Harp
luigis_mansion:heavy_generic | Heavy generic
luigis_mansion:heavy_metal   | Heavy metal
luigis_mansion:metal         | Metal
luigis_mansion:oven          | Oven
luigis_mansion:plant         | Plant
luigis_mansion:plate         | Plate
luigis_mansion:saxophone     | Saxophone
luigis_mansion:stone         | Stone
luigis_mansion:wood          | Wood
luigis_mansion:xylophone     | Xylophone
```

Door models:

An invalid or absent value results in spawn failure.

```
Value                                   | Model
luigis_mansion:club                     | Club key special
luigis_mansion:diamond                  | Diamond key special
luigis_mansion:gallery                  | Golden one in the gallery
luigis_mansion:ghost_portrificationizer | Dark one in the lab
luigis_mansion:heart                    | Heart key special, half of double design
luigis_mansion:lab                      | Metal with red markings
luigis_mansion:mansion/1                | Dark design
luigis_mansion:mansion/2                | Beige design
luigis_mansion:mansion/3                | Brown design
luigis_mansion:mansion/4                | Same as mansion/2, half of double design
luigis_mansion:mansion/entrance         | Front door, half of double design
luigis_mansion:mansion/metal            | Basement hallway
luigis_mansion:mansion/wooden           | Basement and attic
luigis_mansion:spade                    | Spade key special
luigis_mansion:training                 | Green planks
3ds_remake:new_gallery                  | Orange gallery one, half of double design
e3_demo:heart                           | Pink mansion/1 with hearts
e3_demo:star                            | Blue mansion/1 with stars
```

Door frame models:

An invalid or absent value results in no frame.

```
Value                               | Model
luigis_mansion:arched               | Arch over the top
luigis_mansion:arched_decoration    | Normal with curling decoration on top
luigis_mansion:astral_decoration    | Normal with star and astral wings decoration above
luigis_mansion:blue_stones          | Blue-stone-tiled
luigis_mansion:columned             | White columns on the sides and laying on top
luigis_mansion:curtained            | Normal with curtains hanging by the door
luigis_mansion:curved_planks        | Orange planks that stick out at the bottom
luigis_mansion:double/arched        | Double variant of arched
luigis_mansion:double/basic         | Simple gray outline, no single variant exists
luigis_mansion:double/light_wood    | Double variant of light wood
luigis_mansion:double/windowed      | Double variant of windowed
luigis_mansion:emblemized           | Red edge with an emblem on top
luigis_mansion:exposed_bricks       | Gray bricks
luigis_mansion:fancy                | Buff sides with a tree-like decoration on top
luigis_mansion:frozen               | Normal, but composed of ice
luigis_mansion:gold_lining          | Normal with some gold lining
luigis_mansion:golden               | Golden arched version
luigis_mansion:golden_decoration    | Gray with golden decorations on top
luigis_mansion:gray                 | Slightly gray colored version of normal
luigis_mansion:light_wood           | Thin light brown edge
luigis_mansion:mansion_wall         | Green cobblestone outline
luigis_mansion:marble               | Thin white outline
luigis_mansion:mossy                | Green tinted version of normal
luigis_mansion:normal               | Main frame model shared among most doors
luigis_mansion:planks               | Oak planks nailed to the wall
luigis_mansion:rotten               | Normal with a light to dark color pallete
luigis_mansion:sawtooth             | White with pink sawtooth pattern
luigis_mansion:simple_planks        | Two white support beams and a white plank on top
luigis_mansion:smooth_stone         | Off-gray version of normal
luigis_mansion:stacked_blocks       | Stone brick pattern of normal
luigis_mansion:stone                | Stone version of normal
luigis_mansion:stone_arch           | Stone version of arched
luigis_mansion:windowed             | A design resembling windows in the frame
luigis_mansion:windowed_2           | A second windowed design, lighter of color
3ds_remake:double/reinforced_planks | Green planks with a metal center decoration, no single variant exists
3ds_remake:red_metal                | Red metal outline
```

Gallery numbers:

The 3DS Remake Values column refers to the SelectedFrame score.

```
Numbers shown | 3DS Remake Values | Add-on             | Namespace      | Data pack name
1-23          | 1-23 and 25       | vanilla            | luigis_mansion | "file/MEDACORP"
              | 24 and 26         | 3ds_remake         | 3ds_remake     | "file/3DS Remake"
              | 27                | trill_tower        | trill_tower    | "file/Thrill Tower"
```

Trophy tasks:

Values here refers to the FrameChoice score.

```
Values | Add-on             | Namespace          | Data pack name
1-5    | 3ds_remake         | 3ds_remake         | "file/3DS Remake"
6      | e3_demo            | e3_demo            | "file/E3 Demo"
7      | trill_tower        | trill_tower        | "file/Thrill Tower"
8      | extensive_training | extensive_training | "file/Extensive Training"
```
