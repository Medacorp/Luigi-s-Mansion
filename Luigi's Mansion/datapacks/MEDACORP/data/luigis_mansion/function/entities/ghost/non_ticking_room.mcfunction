scoreboard players set @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed,tag=!no_remove_on_non_ticking] StunTime 0
scoreboard players set @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed,tag=!no_remove_on_non_ticking] VulnerableTime 0
tag @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed,tag=!no_remove_on_non_ticking,tag=disappear_on_vanish] add no_disappear
tag @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed,tag=!no_remove_on_non_ticking] add disappear
scoreboard players set @s[tag=hidden] SpawnTime 0
tag @s[tag=hidden] add can_spawn
tag @s[tag=vacuumable,tag=!no_remove_on_non_ticking] add remove_from_existence