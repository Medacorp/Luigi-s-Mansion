tag @s remove new_ghost
tag @s remove attack
tag @s remove laugh
tag @s remove complain
scoreboard players set @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed,tag=!vanish] ActionTime 0
scoreboard players set @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed,tag=!vanish] AnimationProgress 0
tag @s[tag=!vacuumable,tag=!hidden,tag=!cannot_be_removed,tag=!no_remove_on_non_ticking] add vanish
scoreboard players set @s[tag=hidden] SpawnTime 1
tag @s[tag=hidden] add can_spawn
tag @s[tag=vacuumable,tag=!no_remove_on_non_ticking] add remove_from_existence