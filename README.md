To receive development build updates, pull from https://github.com/Medacorp/Luigi-s-Mansion into the extracted download folder.

Before you pull, you need to disregard all your changes. Doing this without preparation may cause "damage" to your world.
To have no lasting "damage" on your world, follow these steps before disregarding changes:
1. Go to the Underground Lab.
2. Talk to E. Gadd.
3. Select "The Mansion".
4. Wait for E. Gadd to go back inside the lab.
5. Have every player in the world be in the Boo Woods. Being in the lab or mansion may result in some broken behavior.
6. Close the world/server.

# Official add-ons
When making your own, consider supporting these, as players may install them as well.

# Variables of interest

## Mansion data variables
To define a new mansion, you need to set the mansion_type value, mansion_data_index is for saved data, all mansions with the same data index use the same save data.

* `#loaded_exterior` (int): ID of the outside of the mansion that's loaded. (For example -1 is no mansion, 0 is the mansion.)
* `#mansion_type` (int): Defines the mansion that is loaded.
* `#mansion_data_index` (int): Defines the save data ID that is used.
* `#mirrored` (bool): Whether the ghosts mirror all their animations.
* `#can_revive` (bool): Whether dead players can be revived by other players.
* `#can_warp` (bool): Whether the Gameboy Horror can warp players by scanning mirrors.
* `#multiply_hurt` (int): Multiplies base damage taken by this value where 100 = 1x. Does not affect non-mansion rooms (there values is always treated as 100).
* `#multiply_damage` (int): Multiplies base damage dealt by this value where 100 = 1x. Does not affect non-mansion rooms (there values is always treated as 100).
* `#changing_max_health` (bool): Whether players' max health is displayed. ("<Health>/<MAX> Health")
* `#heart_coin_count` (int): The amount of gold coins needed for small hearts to change from healing 10 HP to 20 HP. 0 disables small hearts altogether. Does not affect non-mansion rooms (there values is always treated as 0).
* `#radar_type` (int): Defines what type of radar the Gameboy Horror has.
* `#gbh_clock` (int): The current time shown by the Gameboy Horror.
* `#gbh_clock_increase` (int): The `#gbh_clock` value increases by this value every tick, as long as the `in_mansion_time` value also increases. (When 0 the clock is not shown.)

## Variables that immediately reset
* `#freeze_timer` (bool): Whether the `in_mansion_time` value is frozen this tick. (If there's players in different rooms not connected with viewpoints, this is set back to 0. (Room tick is after player tick but before value update, so if a room sets this to 1, do check if there's only players in that room.))
* `#training_choice` (bool): Whether multiple training room programs are installed.

# Predefined collections
Add-on is the variable defined as loaded, namespace is the namespace used for files.

The following groups are predefined, keep them in mind when making your add-ons.

## Mansions
Add new ones in `#luigis_mansion:mansion_options` to allow selecting it, `#luigis_mansion:mansion_detect` to tick rooms, `#luigis_mansion:mansion_interaction_detect` to allow searching and scanning furniture, `#luigis_mansion:room/dark_room` to allow the flashight to work in dark rooms, `#luigis_mansion:mansion_forceload_chunks` to allow add-ons to arbitrarily load the mansion's chunks, and `#luigis_mansion:mansion_reset` for unloading.

If the mansion has a new exterior, add to `#luigis_mansion:mansion_gameboy_horror_scan` to add a scan message for it.

There's more tags you may want to use, such as `#luigis_mansion:items/key` and `#luigis_mansion:entities/gameboy_horror_marker/teleport`, but those are the main ones to add a mansion; rest depends on what you include in the mansion.

```
Mansion      | Type | Index | Exterior | Add-on       | Namespace                 | Data pack name
Empty        | -1   | -1    | -1       | vanilla      | -                         | "file/Luigi's Mansion"
Normal       | 0    | 0     | 0        | vanilla      | luigis_mansion            | "file/Luigi's Mansion"
(GCN) Hidden | 1    | 0     | 0        | vanilla      | luigis_mansion            | "file/Luigi's Mansion"
(3DS) Hidden | 1    | 1     | 0        | 3ds_remake   | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
Original     | 2    | 2     | 1        | beta_mansion | luigis_beta_mansion       | "file/Luigi's Beta Mansion"
Trill Tower  | 3    | 3     | 2        | trill_tower  | trill_tower               | "file/Thrill Tower"
```

### Empty mansion
The empty mansion is used after King Boo has been portrificationized, to make sure nobody is in the mansion when resetting. It has no rooms, no data and no functions other than an exterior (which is actually wiping out the existing mansion).

The exterior is loaded in when you save Mario from the mansion, but the data variables are set only when Mario has been unportrificationized.

## Training room programs
Add new ones in `#luigis_mansion:dialog/training_room/option` to allow selecting it, and `#luigis_mansion:dialog/training_room/play` to run it.

Make sure to set the `#training_choice` variable when adding any, as described above.

```
Program    | Value | Add-on              | Namespace                 | Data pack name
Vanilla    | 0     | vanilla             | luigis_mansion            | "file/Luigi's Mansion"
3DS Remake | 1     | 3ds_remake          | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
Endless    | 2     | extensive_training  | extensive_training        | "file/Extensive Training"
Speedrun   | 3     | extensive_training  | extensive_training        | "file/Extensive Training"
```

## Music groups
Add new ones in `#luigis_mansion:other/music/play`.
To disallow a track to overwrite another (by default), add the `cannot_overwrite` function of the track-to-not-overwrite to the `cannot_overwrite` tag of the trying-to-overwrite track.
The `#luigis_mansion:other/music/correct` tag is used to automatically change one track into another if a certain condition is met (such as catching chauncey).

```
Group | Add-on        | Namespace                 | Data pack name
0     | vanilla       | luigis_mansion            | "file/Luigi's Mansion"
1     | 3ds_remake    | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
2     | beta_mansion  | luigis_beta_mansion       | "file/Luigi's Beta Mansion"
3-4   | music_packs   | music_packs               | "file/Music Packs"
5     | trill_tower   | trill_tower               | "file/Thrill Tower"
```

## Radar types
Add new ones in `#luigis_mansion:items/gameboy_horror/radar_type`.

```
Type | Detects                  | Add-on        | Namespace                 | Data pack name
0    | Boos in lit rooms        | vanilla       | luigis_mansion            | "file/Luigi's Mansion"
1    | Ghosts in a small radius | beta_mansion  | luigis_beta_mansion       | "file/Luigi's Beta Mansion"
```

## Map settings
Add new ones in `#luigis_mansion:settings/map`.

```
Values | Add-on       | Namespace           | Data pack name
1-4    | vanilla      | luigis_mansion      | "file/Luigi's Mansion"
5      | beta_mansion | luigis_beta_mansion | "file/Luigi's Beta Mansion"
6      | music_packs  | music_packs         | "file/Music Packs"
```

## Gallery numbers
The 3DS Remake Values column refers to the SelectedFrame score.

```
Numbers shown | 3DS Remake Values | Add-on             | Namespace                 | Data pack name
1-23          | 1-23 and 25       | vanilla            | luigis_mansion            | "file/Luigi's Mansion"
              | 24 and 26         | 3ds_remake         | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
24            | 27                | trill_tower        | trill_tower               | "file/Thrill Tower"
```

# Check compatibility/dependency
To set this add-on as loaded, allowing for other add-ons to check/warn for compatibility issues, add to the function tag `#luigis_mansion:loaded_add_ons` a function with the following contents: 
`scoreboard players operation #<add-on> Loaded > * Loaded`
`scoreboard players add #<add-on> Loaded 1`

The value of your add-on's Loaded score will be equal to the pack order.

If you need to rely on the load order of data packs, then you can use the following commands in a function added to `#luigis_mansion:post_loaded_add_ons`:
`execute unless score #<add-on> Loaded matches <required number> run datapack disable "file/<pack name>"`
`execute unless score #<add-on> Loaded matches <required number> run datapack enable "file/<pack name>" after "file/<pack name to load after>"`

This is, however, something you should avoid. If 2 packs require to have the same loading position, the map will get stuck in a loop.

To check for add-on compatibility issues, check if the other add-on is loaded (`execute if score #<other add-on> Loaded matches 1.. run ...`) and send the mandatory commands.

You can also do the same, but for dependencies, eg if you need the 3ds_remake add-on to exist to have a functioning add-on. (`execute unless score #<required add-on> Loaded matches 1.. run ...`)

# Other
## Viewpoints
Most hallways contain several room scores, this is so that moving through a hallway resets rooms around it and parts of the hallway that are not seen.

For example the back of the F1 hallway is reset if you're in the front, until you get to the connecting section.

This behavior is called a viewpoint: the room has a smaller score-giving area than load area; the latter of which contains other rooms (partially).

To make sure sounds can be heard through viewpoints, make sure to add them to the `#luigis_mansion:get_same_room` list. This list basically means "if room score is A, it can also hear in room B".

## Pearl dropping behavior
Portrait ghosts always drop 4 small pearls before dropping a medium pearl.

The last possible small or medium pearl dropped is replaced with a big one if it had not dropped a pearl in any previous suction.

For example if max health = 20, the only pearl will always be big; if max health was 500, the 48th one is big if the first didn't drop in a previous suction.

Portrait ghosts drop pearls every health value which ends at a 0, except the max health, and 0 itself.

## Max health
If damage is given and MaxHealth set in the same tick, the player is first damaged, then it checks if the health is above the max

Examples: max 100->70+10 damage -> 70/70; max 100->70+50 damage -> 50/70

Deal damage 1 tick after setting max health to have it "stack" with the max health limitation.

Max health will return to 100 after 5 to 10 seconds depending on how much the player moves. This timer resets whenever the player is scared by a ghost.

## Special scores
Negative Room values are reserved for non-mansion rooms and Room 0 the boo woods, all positive room scores can be used freely; the GBH map can have a range of "valid" rooms to open the map in

MirrorX means the reflection is moved on the X axis (mirror aligned with Z axis), and Mirror Z on Z axis (aligned with X axis); at most 1 of these scores should ever be used.

LightX, LightY and LightZ should all be set at the same time, or not at all; they are the origin of the light in 1/100th block values (eg 1250 = 12.5); this is treated as the light origin point and shadows will be cast around it. (No shadow will be cast if the path is obstructed by a block)
