When loading a mansion, a bunch of variables get set, all of which use the `Selected` score:

* `#loaded_exterior` (int): ID of the outside of the mansion that's loaded. (For example -1 is no mansion, 0 is the mansion.)
* `#mansion_data_index` (int): The save data ID that is used.
* `#mirrored` (bool): Whether ghosts, furniture and players mirror all their animations.
* `#can_revive` (bool): Whether dead players can be revived by other players.
* `#can_warp` (bool): Whether the Game Boy Horror can warp players by scanning mirrors.
* `#multiply_hurt` (int): Multiplies base damage TAKEN by this value where 100 = 100%. Does not affect non-mansion rooms (there value is always treated as 100).
* `#multiply_damage` (int): Multiplies base damage DEALT by this value where 100 = 100%. Does not affect non-mansion rooms (there value is always treated as 100).
* `#changing_max_health` (bool): Whether players' max health is displayed ("<Health>/<MAX> Health").
* `#heart_money_count` (int): The amount of a particular item needed for small hearts to change from healing 10 HP to 20 HP. 0 disables small hearts dropping from ghosts. Does not affect non-mansion rooms (there values is always treated as 0). Item needed is controlled by loaded mansion.
* `#radar_type` (int): Defines what type of radar the Game Boy Horror uses.
* `#gbh_clock` (int): The current time shown by the Game Boy Horror.
* `#gbh_clock_increase` (int): The `#gbh_clock` value increases by this value every tick, as long as the `in_mansion_time` value also increases. Value is equal to IRL 20th of seconds (clock only shows minutes and hours). (When 0 the clock is not shown.)

There are also global variables not set by the mansion, but other instances, all of which use the `Selected` score:

* `#freeze_timer` (bool): Whether the `in_mansion_time` value is frozen this tick. (If there's players in different rooms not connected with viewpoints, this is set back to 0. (Room tick is after player tick but before value update, so if a room sets this to 1, do check if there's only players in that room.))
* `#training_choice` (bool): Whether multiple training room programs are installed. Is reset unpon reload.
* `#extra_gallery` (bool): Whether multiple galleries are present, and the door leading to others should be spawned. Is reset unpon reload.