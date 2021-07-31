To receive development build updates, pull from https://github.com/Dhranios/Luigi-s-Mansion into the "`Luigi's Mansion/datapacks/Luigi's Mansion`" folder.

Before you pull, you need to disregard all your changes. Doing this without preparation may cause "damage" to your world
To have no lasting "damage" on your world, follow these steps before disregarding changes:
1. Go to the Underground Lab.
2. Talk to E. Gadd.
3. Select "The Mansion".
4. Wait for E. Gadd to go back inside the lab.
5. Have every player in the world be in the Boo Woods. Being in the lab or mansion may result in some broken behavior.
6. Close the world/server.

# Official add-ons
When making your own, consider supporting these, as players may instal them as well.

* [Luigi's Mansion 3DS Remake](https://github.com/Dhranios/Luigi-s-Mansion-3DS-Remake)

# Predefined mansions
Add-on is the variable defined as loaded, namespace is the namespace used for files.

The following mansion types and mansion indexes are predefined, keep them in mind when making your add-ons.

```
mansion  | type | index | add-on       | overwrites     | namespace                 | Data pack name
empty    | -1   | -1    | vanilla      |                | -                         | "file/Luigi's Mansion"
normal   | 0    | 0     | vanilla      |                | luigis_mansion            | "file/Luigi's Mansion"
hidden   | 1    | 0     | vanilla      |                | luigis_mansion            | "file/Luigi's Mansion"
hidden   | 1    | 1     | 3ds_remake   | vanilla/hidden | luigis_mansion_3ds_remake | "file/Luigi's Mansion 3DS Remake"
original | 2    | 2     | beta_mansion |                | luigis_beta_mansion       | "file/Luigi's Beta Mansion"
```

## Empty mansion
The empty mansion is used after King Boo has been portrificationized, to make sure nobody is in the mansion when resetting. It has no rooms, no data and no functions other than an exterior (which is actually wiping out the existing mansion).

The exterior is loaded in when you enter hallway 22 with Mario's painting, but the data variables are set only when Mario has been unportrificationized.

## Variables of interest

### Mansion data variables
To define a new mansion, you need to set the mansion_type value, mansion_data_index is for saved data, all mansions with the same data index use the same save data.

* `#loaded_exterior` (int): ID of the outside of the mansion that's loaded. (For example -1 is no mansion, 0 is the mansion.)
* `#mansion_type` (int): Defines the mansion that is loaded.
* `#mansion_data_index` (int): Defines the save data ID that is used.
* `#mirrored` (bool): Whether the ghosts mirror all their animations.
* `#can_warp` (bool): Whether the Gameboy Horror can warp players by scanning mirrors.
* `#multiply_hurt` (int): Multiplies base damage taken by this value where 100 = 1x. Does not affect non-mansion rooms (there values is always treated as 100).
* `#multiply_damage` (int): Multiplies base damage dealt by this value where 100 = 1x. Does not affect non-mansion rooms (there values is always treated as 100).
* `#changing_max_health` (bool): Whether players' max health is displayed. ("<Health>/<MAX> Health")
* `#ghost_heart_size` (int): The size of the hearts dropped by ghosts when capturing multiple at once. Does not affect non-mansion rooms (there values is always treated as 0).
* `#radar_type` (int): Defines what type of radar the Gameboy Horror has.
* `#gbh_clock` (int): The current time shown by the Gameboy Horror.
* `#gbh_clock_increase` (int): The `#gbh_clock` value increases by this value every tick, as long as the `in_mansion_time` value also increases. (Can be 0 or more, when 0 the clock is not shown.)

### Variables that immediately reset
* `#freeze_timer` (bool): Whether the `in_mansion_time` value is frozen this tick. (If there's players in different rooms not connected with viewpoints, this is set back to 0. (Room tick is after player tick but before value update, so if a room sets this to 1, do check if there's only players in that room.))
* `#force_gbh_screen` (bool): Whether the Gameboy Horror screen if forced to show E. Gadd.
* `#force_radar` (bool): Whether the Gameboy Horror radar if forced to become red, ignoring radar type requirements.

### Other variables
* `#training_choice` (bool): Whether multiple training room programs are installed. (Should be set in loaded add-on function. Will use `#luigis_mansion:dialog/training_room/option` to ask which to select, and `#luigis_mansion:dialog/training_room/play` to run the selected program then.)

# Check compatibility/dependency
To set this add-on as loaded, allowing for other add-ons to check/warn for compatibility issues, add to the function tag `#luigis_mansion:loaded_add_ons` a function with the following contents: `scoreboard players set #<add-on> Loaded 1`

To check for add-on compatibility issues, add to the function tag `#luigis_mansion:post_loaded_add_ons` a function which checks if the other add-on is loaded (`execute if score #<other add-on> Loaded matches 1 run ...`) and send the mandatory commands.

You can also do the same, but for dependencies, eg if you need the 3ds_remake add-on to exist to have a functioning add-on. (`execute unless score #<required add-on> Loaded matches 1 run ...`)

# Other
## Viewpoints
Most hallways contain several room scores, this is so that moving through a hallway resets rooms around it and parts of the hallway that are not seen.

For example the back of the F1 hallway is reset if you're in the front, until you get to the connecting section.

This behavior is called a viewpoint: the room has a smaller score-giving area than load area; the latter of which contains other rooms (partially).

To make sure sounds can be heard through viewpoints, make sure to add them to the `main/get_room_score/viewpoints` list. This list basically means "if room score is A, it can also hear in room B".

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