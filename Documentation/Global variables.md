When loading a mansion, a bunch of variables get set, all of which use the `Selected` score:

* `#mirrored` (bool: false): Whether ghosts, furniture and players mirror all their animations.
* `#can_warp` (bool: false): Whether the Game Boy Horror can warp players by scanning mirrors.
* `#multiply_hurt` (int: 100): Multiplies base damage TAKEN by this value where 100 = 100%. Does not affect non-mansion rooms (there value is always treated as 100).
* `#multiply_damage` (int: 100): Multiplies base damage DEALT by this value where 100 = 100%. Does not affect non-mansion rooms (there value is always treated as 100).
* `#changing_max_health` (bool: false): Whether players' max health is displayed ("<Health>/<MAX> Health").
* `#heart_money_count` (int: 0): The amount of a particular item needed for small hearts to change from healing 10 HP to 20 HP. Does not affect non-mansion rooms (there values is always treated as 0). Item needed is controlled by loaded mansion.
* `#money_screen` (bool: false): Whether the Game Boy Horror should display money totals. Ignored if #gbh_clock_increase is set to a non-0 value, as it then displays the clock. Also ignored if 3DS Remake add-on is installed.
* `#radar_type` (int: 0): Defines what type of radar the Game Boy Horror uses.
* `#gbh_clock` (int: 0): The current time shown by the Game Boy Horror.
* `#gbh_clock_increase` (int: 0): The `#gbh_clock` value increases by this value every tick, as long as the `in_mansion_time` value also increases. Value is equal to IRL 20th of seconds (clock only shows minutes and hours). (When 0 the clock is not shown.)
* `#poltergust_500` (bool: false): E3 DEMO EXCLUSIVE: Whether the poltergust is the overheating, water spraying poltergust, rather than the elemental one.

There are also global variables not set by the mansion, but other instances, all of which use the `Selected` score:

* `#freeze_timer` (bool): Whether the `in_mansion_time` value is frozen this tick. (If there's players in different rooms not connected with viewpoints, this is set back to 0. (Room tick is after player tick but before value update, so if a room sets this to 1, do check if there's only players in that room.))
* `#training_choice` (bool): Whether multiple training room programs are installed. Is reset unpon reload.
* `#extra_gallery` (bool): Whether multiple galleries are present, and the door leading to others should be spawned. Is reset unpon reload.