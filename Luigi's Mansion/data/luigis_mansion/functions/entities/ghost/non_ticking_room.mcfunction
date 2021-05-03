tag @s remove new_ghost
tag @s remove attack
tag @s remove laugh
tag @s remove complain
scoreboard players set @s[tag=!vacuumable,tag=!hidden,tag=!boo,tag=!cannot_be_removed,tag=!vanish] ActionTime 0
scoreboard players set @s[tag=!vacuumable,tag=!hidden,tag=!boo,tag=!cannot_be_removed,tag=!vanish] AnimationProg 0
tag @s[tag=!vacuumable,tag=!hidden,tag=!boo,tag=!cannot_be_removed] add vanish
scoreboard players set @s[tag=hidden] SpawnTime 1
tag @s[tag=hidden] add can_spawn
tag @s[tag=vacuumable] add remove_from_existence
tag @s[tag=portrait_ghost] add reset_to_base