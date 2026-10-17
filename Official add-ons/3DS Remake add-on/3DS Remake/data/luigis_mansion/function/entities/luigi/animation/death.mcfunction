function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
scoreboard players add @s[scores={DeathTime=..60}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
tag @s[scores={DeathTime=1}] remove vacuuming_ghost
execute if entity @s[scores={DeathTime=1}] run playsound luigis_mansion:entity.player.death player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={DeathTime=1..59}] as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"if entity @s[tag=!flipped_gravity] positioned ~ ~0.5 ~",teleport:"^ ^ ^-1 ~ 30"}
execute if entity @s[scores={DeathTime=1..59}] as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"if entity @s[tag=!flipped_gravity] positioned ~ ~0.5 ~ if block ^ ^ ^-2 #luigis_mansion:flashlight_path",teleport:"^ ^ ^-2 ~ 30"}
execute if entity @s[scores={DeathTime=1..59}] as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"if entity @s[tag=!flipped_gravity] positioned ~ ~0.5 ~ if block ^ ^ ^-3 #luigis_mansion:flashlight_path",teleport:"^ ^0.5 ^-3 ~ 30"}
execute if entity @s[scores={DeathTime=1..59}] as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"if entity @s[tag=flipped_gravity] positioned ~ ~-1.5 ~",teleport:"^ ^ ^-1 ~ -30"}
execute if entity @s[scores={DeathTime=1..59}] as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"if entity @s[tag=flipped_gravity] positioned ~ ~-1.5 ~ if block ^ ^ ^-2 #luigis_mansion:flashlight_path",teleport:"^ ^ ^-2 ~ -30"}
execute if entity @s[scores={DeathTime=1..59}] as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"if entity @s[tag=flipped_gravity] positioned ~ ~-1.5 ~ if block ^ ^ ^-3 #luigis_mansion:flashlight_path",teleport:"^ ^0.5 ^-3 ~ -30"}
execute if entity @s[scores={DeathTime=60}] as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/reset_death
execute if entity @s[scores={DeathTime=20}] run title @a[tag=this_player,limit=1] title {type:"translatable",translate:"luigis_mansion:message.death",color:"dark_purple"}
execute if entity @s[scores={DeathTime=60},tag=!revived_by_polterpup] run gamemode spectator @a[tag=this_player,limit=1]
execute if entity @s[scores={DeathTime=1},tag=!revived_by_polterpup] as @a[tag=this_player,tag=!dead_player,limit=1] run function luigis_mansion:entities/player/mark_as_dead
execute if entity @s[scores={Shrunk=1..}] run function luigis_mansion:items/poison_mushroom/wear_off