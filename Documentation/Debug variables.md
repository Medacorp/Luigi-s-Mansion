The map has some variables for debugging, these are never set to anything other than 0 by the map, all of which use the `Selected` score:

* `#debug` (bool): Turns on all debug features. When turned off again, will only turn off the features that weren't seperately turned on.
* `#debug_messages` (bool): Turns on debug messages. Only debug messages that ignore this setting as the debug option toggle messages.
* `#debug_entities` (bool): Turns on non-furniture entity hitbox drawing. This can also be achieved without the setting by tagging the entity with `debug_entity`.
* `#debug_furniture` (bool): Turns on furniture hitbox, dust spawn point, content spawn point, ghost spawn point, elemental ghost spawn point and light spawn point drawing. This can also be achieved without the setting by tagging the furniture with `debug_furniture`.