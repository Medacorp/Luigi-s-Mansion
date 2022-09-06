WARNING! This data pack will always load itself right after the Luigi's Mansion data pack! Do not create other add-ons that want this position as well (make them after this one instead).

# Changes
Ghost behavioral changes the add-on applies:
* Using a flashlight on a temper terror, flash or blue blaze makes them "smug", laugh and then disappear, rather than ignore and continue moving/attacking; the functions for being smug exist in the base map.
* Portrait ghost rank is also determined by top vacuum damage not just largest pearl grabbed; if you deal 90 damage in one go, you get gold, even if you leave the pearl behind.
* Portrait ghosts have platinum rank for 140 damage in 1 go, or less than 5 damage for bosses in the hidden mansion.
* Strobulb flashlight type added, which ghosts can react to.

Room -4 is the gallery, regardless of add-on or not. The add-on will simply teleport players in the old gallery to the new one, and never start ticking the old one.

The new gallery's functions are under `luigis_mansion_3ds_remake:room/gallery/`.

The hidden mansion is replaced, but only a small amount of the original files are overwritten to do so, allowing other add-ons to change both hidden mansions separately.

If you make any add-ons that change the hidden mansion, overwrite the file with the following commands to support both versions:
`execute unless score #3ds_remake Loaded matches 1.. run function <vanilla version>'
`execute if score #3ds_remake Loaded matches 1.. run function <3ds version>'

The new hidden mansion's functions are under `luigis_mansion_3ds_remake:room/hidden/`.

The new hidden mansion simply re-uses the `luigis_mansion:normal` dimension.

Portrait ghosts in the hidden mansion will re-use the normal mansion behavior, aside from the slightly different function calls and non-mirroring AI changes (such as chauncey's battle).

# Portrait battle details
Portrait battles simply check for the following:
* If a portrait ghost had spawned, and a portrait ghost has been dying, and there's none left, the battle was a success.
* If a portrait ghost had spawned, and no portrait ghost has been dying, and there's none left, the battle will fail.
* If the player is dead, the battle will fail.
* If the battle was a success, an empty marker ghost is spawned to prevent the room from lighting up, and unlocking doors.

Additionally, during portrait battles, the following is done:
* All furniture searching is prevented.
* `pearl_dropper` is removed from all ghosts.
* Players who didn't select to battle are set to spectator mode.

The lowest health and fastest time scores are grabbed from the builtin `lowest_health_moment` and `in_mansion_time` values respectively.

The fastest time value has an additional 5 seconds removed, as that's the time it adds to clear the battle.

Portrait ghosts store in which `mansion_type` AND `mansion_data_index` they have been defeated, any combination is a different battle.

If you want the battle to be selected separately, use a new data index.

# Functions and tags of interest
* `#luigis_mansion_3ds_remake:get_lowest_scores` same as `#luigis_mansion:get_high_scores`, but then retrieving the `lowest_value`.
* `#luigis_mansion_3ds_remake:dialog/amiibo` Adding amiibo enabling and disabling is done here.
* `#luigis_mansion_3ds_remake:room/gallery/check_portrait/boos` Adding Boos here will make them show in the boo painting check messages.
* `#luigis_mansion_3ds_remake:room/gallery/interact_with_trophy/get_boo_count` Adding Boos here will make them count towards the trophy task goals.
* `#luigis_mansion_3ds_remake:room/gallery/load_boo_painting` Adding Boos here will make them visibly show in the boo painting.
* `#luigis_mansion_3ds_remake:room/gallery/check_portrait/small_ghosts` Adding ghosts here will make them show in the ghost painting check messages.
* `#luigis_mansion_3ds_remake:room/gallery/load_small_ghost_painting` Adding ghosts here will make them visibly show in the ghost painting.
* `#luigis_mansion_3ds_remake:room/gallery/portrait_battle/` These tags allow for portrait battles.
* `#luigis_mansion_3ds_remake:room/gallery/check_painting`, This tag allows adding paintings to the interaction list.
* `#luigis_mansion_3ds_remake:room/gallery/check_trophy`, `#luigis_mansion_3ds_remake:room/gallery/interact_with_trophy`, These tags allow adding tasks to the trophy.

# Predefined collections

## Trophy tasks
Values here refers to the FrameChoice score.

```
Values | Add-on             | Namespace                 | Data pack name
1-5    | 3ds_remake         | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
6      | beta_mansion       | beta_mansion              | "file/Luigi's Beta Mansion"
7      | trill_tower        | trill_tower               | "file/Thrill Tower"
8      | extensive_training | extensive_training        | "file/Extensive Training"
```

## Amiibo selection
Value here refers to the AmiiboChoice score.

```
Value | Amiibo name | Add-on             | Namespace                 | Data pack name
1     | Toad        | 3ds_remake         | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
2     | Mario       | 3ds_remake         | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
3     | Boo         | 3ds_remake         | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
4     | Luigi       | 3ds_remake         | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
5     | E. Gadd     | beta_mansion       | beta_mansion              | "file/Luigi's Beta Mansion"
6     | Polterpup   | trill_tower        | trill_tower               | "file/Thrill Tower"
7     | Koopa       | extensive_training | extensive_training        | "file/Extensive Training"
```
