WARNING! This data pack will always load itself right after the MEDACORP data pack! Do not create other add-ons that want this position as well (make them after this one instead).

# Changes
Ghost behavioral changes the add-on applies:
* Using a flashlight on a temper terror, flash or blue blaze makes them "smug", laugh and then disappear, rather than ignore and continue moving/attacking; the functions for being smug exist in the base map.
* Portrait ghost rank is also determined by top vacuum damage not just largest pearl grabbed; if you deal 90 damage in one go, you get gold, even if you leave the pearl behind.
* Portrait ghosts have platinum rank for 140 damage in 1 go, or less than 5 damage for bosses in the hidden mansion.
* Strobulb flashlight type added, which ghosts can react to.

Room -4 is the gallery, regardless of add-on or not. The add-on will simply teleport players in the old gallery to the new one, and never start ticking the old one.

The new gallery's functions are under `3ds_remake:room/gallery/`.

A second hidden mansion is added, only a small amount of the original files are overwritten, so other add-ons can change both separately.

If you make any add-ons that change the hidden mansion, and the file is overwritten by the 3DS Remake, overwrite the file with the following commands to support both versions:
`execute unless score #3ds_remake Loaded matches 1.. run function <vanilla version>'
`execute if score #3ds_remake Loaded matches 1.. run function <3ds version>'

The 3DS hidden mansion's functions are under `3ds_remake:room/hidden/`.

The 3DS hidden mansion simply re-uses the `luigis_mansion:normal` dimension.

Portrait ghosts in the 3DS hidden mansion re-use the normal mansion behavior, aside from the slightly different function calls and non-mirroring AI changes (such as chauncey's battle); they use a function that redirects to the normal mansion function, so it can be modified alone too.

# Portrait battle details
Portrait battles simply check for the following:
* If a portrait ghost had spawned, and a portrait ghost has been dying, and there's none left, the battle was a success.
* If a portrait ghost had spawned, and no portrait ghost has been dying, and there's none left, the battle will fail.
* If the player is dead, the battle will fail.
* If the battle was a success, an empty marker ghost is spawned to prevent the room from lighting up, and unlocking doors.

Additionally, during portrait battles, the following is done:
* All furniture loot is removed, and nothing spawns dust; they can be searched though.
* `pearl_dropper` is removed from all ghosts.
* Players who didn't select to battle are set to spectator mode.

The lowest health and fastest time scores are grabbed from the builtin `lowest_health_moment` and `in_mansion_time` values respectively.

The fastest time value has an additional 5 seconds removed, as that's the time it adds to clear the battle.

Portrait ghosts store in which `mansion_type` AND `mansion_data_index` they have been defeated, any combination is a different battle.