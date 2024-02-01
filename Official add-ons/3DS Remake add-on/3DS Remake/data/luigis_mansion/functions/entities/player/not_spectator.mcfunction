tag @s remove dark_room
function #luigis_mansion:room/dark_room
tag @s add new_poltergust_grabbed
function #luigis_mansion:entities/player/overwrite_poltergust_grabbed

execute if entity @s[scores={Health=..0},tag=!death_animation,tag=!revive_animation] unless entity @s[scores={AnimationProgress=1..},tag=!idle] run function luigis_mansion:entities/player/death
execute if entity @s[scores={Health=1..},tag=already_added_to_list] run function luigis_mansion:entities/player/remove_dead_entry
tag @s[scores={Health=1..}] remove already_added_to_list

scoreboard players reset @s[scores={OpenMapTime=1..},tag=stop_map_on_key_collect] OpenMapFocus
scoreboard players reset @s[scores={OpenMapTime=1..},tag=stop_map_on_key_collect] OpenMapTime
scoreboard players remove @s[scores={OpenMapTime=1..}] OpenMapTime 1
execute if entity @s[scores={OpenMapTime=0}] unless entity @s[scores={AnimationProgress=1..},tag=!idle] run function luigis_mansion:selection_menu/game_boy_horror/map/open
execute if entity @s[tag=!using_selection_menu] run function #luigis_mansion:items
function #luigis_mansion:reset_disabled_items
execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/tick
execute if entity @s[tag=!death_animation,tag=!revive_animation,tag=!polterpup_reviving] unless entity @s[scores={AnimationProgress=1..},tag=!idle] run function luigis_mansion:blocks/gravity_swap
execute if entity @s[tag=riding_poltergust] run function luigis_mansion:entities/player/riding_poltergust

execute unless entity @a[scores={GBHCall=1..},limit=1] rotated ~ 0 positioned ^ ^ ^-4 run function luigis_mansion:entities/player/spawn_ghosts

function luigis_mansion:entities/player/health_display
execute if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} run clear @s minecraft:diamond_pickaxe{luigis_mansion:{namespace:"luigis_mansion",id:"contest_reward_map"}}

execute if entity @s[scores={Health=1..}] store result score @s Damage run data get entity @s Health
execute if entity @s[scores={Damage=..99}] run function luigis_mansion:entities/player/heal
scoreboard players reset @s Damage
execute unless entity @s[scores={Invulnerable=0..}] run scoreboard players set @s Invulnerable 0
scoreboard players remove @s[scores={Invulnerable=1..}] Invulnerable 1
effect give @s[scores={Food=3..}] minecraft:hunger 1 255 true
effect give @s[scores={Food=..0}] minecraft:saturation 1 0 true
scoreboard players set @s[scores={MaxHealth=51..},tag=gooigi] MaxHealth 50
execute unless entity @s[scores={MaxHealth=100},tag=!gooigi] unless entity @s[scores={MaxHealth=50},tag=gooigi] run scoreboard players add @s MaxHealthTime 1
execute if entity @s[scores={MaxHealthTime=1}] if score @s MaxHealth < @s Health run function luigis_mansion:entities/player/reduce_health_to_max
execute if entity @s[scores={Health=0}] run scoreboard players set @s MaxHealthTime 200
execute unless entity @s[scores={MaxHealth=100},tag=!gooigi] unless entity @s[scores={MaxHealth=50},tag=gooigi] unless entity @s[scores={Walk=0..2,Run=0..2,Sneak=0}] run scoreboard players add @s MaxHealthTime 1
scoreboard players set @s[scores={MaxHealthTime=200},tag=!gooigi] MaxHealth 100
scoreboard players set @s[scores={MaxHealthTime=200},tag=gooigi] MaxHealth 50
scoreboard players reset @s[scores={MaxHealthTime=200}] MaxHealthTime

execute if entity @s[tag=!spectator,tag=!gooigi] run function luigis_mansion:entities/player/idle
execute if entity @s[scores={AnimationProgress=1..},tag=idle,tag=!gooigi] unless entity @s[scores={Walk=0,Run=0,Sneak=0,Jump=0},tag=!sneak_pos,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={AnimationProgress=1..},tag=!idle,tag=!animation_may_move,tag=!looking_at_map,tag=!gooigi] run function luigis_mansion:entities/player/animation/freeze_player

execute if entity @s[tag=gooigi] run function 3ds_remake:entities/player/gooigi

execute at @s[scores={LightX=-2147483648..}] unless entity @s[scores={Shrunk=1..}] run function luigis_mansion:other/cast_shadow/2_tall
execute at @s[scores={LightX=-2147483648..,Shrunk=1..}] run function luigis_mansion:other/cast_shadow/1_tall
tag @s[tag=!death_animation,tag=!revive_animation,tag=!polterpup_reviving] remove spectator

effect give @s minecraft:invisibility infinite 0 true
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s ID
execute if entity @s[tag=!camera,tag=!gooigi] run function luigis_mansion:animations/luigi with storage luigis_mansion:data macro
execute if entity @s[tag=death_animation,tag=!gooigi] run function luigis_mansion:entities/player/death_animation
execute if entity @s[tag=revive_animation] run function luigis_mansion:entities/player/revive_animation
execute if entity @s[tag=polterpup_reviving] run function 3ds_remake:dialog/polterpup_revival