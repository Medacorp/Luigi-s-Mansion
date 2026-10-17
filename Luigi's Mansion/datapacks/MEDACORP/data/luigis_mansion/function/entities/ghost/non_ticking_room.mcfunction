scoreboard players set @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed] StunTime 0
tag @s[tag=stun_freeze_animation] remove freeze_animation
tag @s remove stun_freeze_animation
tag @s remove stunned
scoreboard players set @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed] VulnerableTime 0
tag @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed,tag=disappear_on_vanish] add no_disappear
tag @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed] add disappear
scoreboard players set @s[tag=hidden] SpawnTime 0
tag @s[tag=hidden,tag=!only_forced_spawn,tag=!hiding_in_furniture] add can_spawn
tag @s[tag=vacuumable] add remove_from_existence