tag @s remove dark_room
function #luigis_mansion:room/dark_room

execute if entity @s[scores={Health=..0},tag=!death_animation,tag=!revive_animation] run function luigis_mansion:entities/player/death
execute if entity @s[scores={Health=1..},tag=already_added_to_list] run function luigis_mansion:entities/player/remove_dead_entry
tag @s[scores={Health=1..}] remove already_added_to_list

scoreboard players reset @s[scores={OpenMapTime=1..},tag=stop_map_on_key_collect] OpenMapFocus
scoreboard players reset @s[scores={OpenMapTime=1..},tag=stop_map_on_key_collect] OpenMapTime
scoreboard players remove @s[scores={OpenMapTime=1..}] OpenMapTime 1
execute if entity @s[scores={OpenMapTime=0}] unless entity @s[scores={KnockbackType=1..}] unless entity @s[scores={ScareType=1..}] run function luigis_mansion:items/game_boy_horror/map/open
function #luigis_mansion:items
execute if entity @s[tag=!death_animation,tag=!revive_animation] unless entity @s[scores={KnockbackType=2..}] unless entity @s[scores={ScareType=2..}] run function luigis_mansion:blocks/gravity_swap
execute if entity @s[tag=warp] run function luigis_mansion:items/game_boy_horror/warp
execute if entity @s[tag=riding_poltergust,scores={KnockbackType=0},tag=!looking_at_map,tag=!death_animation,tag=!revive_animation] run function luigis_mansion:entities/player/riding_poltergust
execute unless entity @s[tag=riding_poltergust,scores={KnockbackType=0},tag=!looking_at_map,tag=!death_animation,tag=!revive_animation] run scoreboard players set @s SlipX 0
execute unless entity @s[tag=riding_poltergust,scores={KnockbackType=0},tag=!looking_at_map,tag=!death_animation,tag=!revive_animation] run scoreboard players set @s SlipZ 0

tag @s remove talked_to_villager
execute if entity @s[scores={Talk=1..},tag=!death_animation,tag=!revive_animation] unless entity @s[scores={IdleTime=..-1},tag=!idle] unless entity @s[scores={KnockbackType=1..}] unless entity @s[scores={ScareType=1..}] unless entity @s[scores={Dialog=1..}] run function luigis_mansion:target_villager
scoreboard players set @s[scores={Talk=1..}] Talk 0

execute unless entity @a[scores={GBHCall=1..},limit=1] rotated ~ 0 positioned ^ ^ ^-4 run function luigis_mansion:entities/player/spawn_ghosts

function luigis_mansion:entities/player/health_display
clear @s[advancements={luigis_mansion:lab/lab=true}] minecraft:diamond_pickaxe{luigis_mansion:{id:"luigis_mansion:contest_reward_map"}}

execute if entity @s[scores={Health=1..}] store result score @s Damage run data get entity @s Health -1
scoreboard players add @s[scores={Health=1..}] Damage 100
execute if entity @s[scores={Damage=1..},tag=!spectator,tag=player] run function luigis_mansion:entities/player/take_damage
execute unless entity @s[scores={Invulnerable=0..}] run scoreboard players set @s Invulnerable 0
scoreboard players remove @s[scores={Invulnerable=1..}] Invulnerable 1
effect give @s[scores={Food=3..}] minecraft:hunger 1 255 true
effect give @s[scores={Food=..0}] minecraft:saturation 1 0 true
execute unless entity @s[scores={MaxHealth=100}] run scoreboard players add @s MaxHealthTime 1
execute if entity @s[scores={MaxHealthTime=1}] if score @s MaxHealth < @s Health run function luigis_mansion:entities/player/reduce_health_to_max
execute unless entity @s[scores={MaxHealth=100}] unless entity @s[scores={Walk=0..2,Run=0..2,Sneak=0}] run scoreboard players add @s MaxHealthTime 1
scoreboard players set @s[scores={MaxHealthTime=200}] MaxHealth 100
scoreboard players reset @s[scores={MaxHealthTime=200}] MaxHealthTime

execute if entity @s[scores={Walk=0,Run=0,Sneak=0,Jump=0,IdleTime=0..},tag=!sneak_pos,tag=!spectator,tag=player,tag=!warp,tag=!scanning,tag=!poltergust_selected,tag=!riding_poltergust] run function luigis_mansion:entities/player/idle
execute unless entity @s[scores={IdleTime=..-1},tag=!idle] unless entity @s[scores={Walk=0,Run=0,Sneak=0,Jump=0},tag=!sneak_pos,tag=!spectator,tag=player,tag=!warp,tag=!scanning,tag=!poltergust_selected,tag=!riding_poltergust] run function luigis_mansion:entities/player/animation/set/none_ignore_yell
execute if entity @s[scores={IdleTime=..-1},tag=!idle,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/freeze_player
execute if entity @s[scores={IdleTime=..-1}] run function luigis_mansion:entities/player/idle

execute unless entity @s[scores={Walk=0,Run=0,Sneak=0}] if entity @s[tag=!looking_at_map] run function luigis_mansion:entities/player/walk_dust

execute at @s[scores={LightX=-2147483648..}] unless entity @s[scores={Shrunk=1..}] run function luigis_mansion:other/cast_shadow/2_tall
execute at @s[scores={LightX=-2147483648..,Shrunk=1..}] run function luigis_mansion:other/cast_shadow/1_tall
tag @s[tag=!death_animation,tag=!revive_animation] remove spectator

effect give @s minecraft:invisibility 1000000 0 true
execute at @s[tag=!camera] run function luigis_mansion:animations/luigi
execute if entity @s[scores={KnockbackTime=1..}] run function luigis_mansion:entities/player/knockback
execute unless entity @s[scores={KnockbackType=8..10}] run scoreboard players reset @s GrabbedShake
execute unless entity @s[scores={KnockbackType=8..10}] run tag @s remove grabbed
execute if entity @s[scores={ScareTime=1..}] run function luigis_mansion:entities/player/scared
execute if entity @s[tag=death_animation] run function luigis_mansion:entities/player/death_animation
execute if entity @s[tag=revive_animation] run function luigis_mansion:entities/player/revive_animation