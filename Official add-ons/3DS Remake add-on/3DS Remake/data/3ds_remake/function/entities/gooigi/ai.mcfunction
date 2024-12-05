function luigis_mansion:room/dark_room
function luigis_mansion:entities/luigi/sync_with_camera

execute if entity @s[scores={Health=..0},tag=!death_animation,tag=!revived_animation,tag=!revived_by_polterpup] unless entity @s[nbt={data:{animation:{}}},tag=!idle] run function luigis_mansion:entities/luigi/death

scoreboard players reset @s[scores={OpenMapTime=1..},tag=stop_map_on_key_collect] OpenMapFocus
scoreboard players reset @s[scores={OpenMapTime=1..},tag=stop_map_on_key_collect] OpenMapTime
scoreboard players remove @s[scores={OpenMapTime=1..}] OpenMapTime 1
execute if entity @s[scores={OpenMapTime=0}] unless entity @s[nbt={data:{animation:{}}},tag=!idle] run function luigis_mansion:entities/luigi/run_command_as_owner {command:"function luigis_mansion:selection_menu/game_boy_horror/map/open"}
execute unless entity @s[nbt={data:{animation:{}}},tag=!idle] run scoreboard players reset @s[scores={OpenMapTime=0}] OpenMapTime
function #luigis_mansion:items
function #luigis_mansion:items/reset_disabled
function luigis_mansion:entities/luigi/sync_inventory
execute if entity @s[tag=!death_animation,tag=!revived_animation,tag=!revived_by_polterpup] unless entity @s[nbt={data:{animation:{}}},tag=!idle] run function luigis_mansion:blocks/gravity_swap
execute if entity @s[tag=riding_poltergust] run function luigis_mansion:entities/luigi/riding_poltergust

execute unless entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!animation_may_move] run function luigis_mansion:entities/luigi/spawn_ghosts

execute unless entity @s[scores={Invulnerable=0..}] run scoreboard players set @s Invulnerable 0
execute unless entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!tick_down_invulnerability] run scoreboard players remove @s[scores={Invulnerable=1..}] Invulnerable 1
execute unless entity @s[scores={MaxHealth=50}] run function 3ds_remake:entities/gooigi/health/max_reduced

execute if entity @a[tag=same_room,tag=!gooigi,limit=1] run scoreboard players operation @s FollowID = @a[tag=same_room,tag=!gooigi,limit=1] ID
execute if entity @s[tag=!spawn_animation,tag=!death_animation] if score #players Totals matches 1.. unless entity @a[tag=same_room,tag=!gooigi,limit=1] run function 3ds_remake:entities/gooigi/follow

execute if score #non_gooigis Totals matches 0 if score #all_non_gooigis Totals matches 1.. run scoreboard players set @s Health 0
execute if score #non_gooigis Totals matches 0 if score #all_non_gooigis Totals matches 0 run function luigis_mansion:entities/luigi/run_command_as_owner {command:"function 3ds_remake:entities/gooigi/revert_to_luigi"}

execute unless entity @s[tag=!walking,tag=!running,tag=!riding_poltergust] if entity @s[scores={Sound=0,Shrunk=0}] run playsound 3ds_remake:entity.gooigi.walk player @a[tag=same_room] ~ ~ ~ 0.5
execute unless entity @s[tag=!walking,tag=!running,tag=!riding_poltergust] if entity @s[scores={Sound=0,Shrunk=1..}] run playsound 3ds_remake:entity.gooigi.walk player @a[tag=same_room] ~ ~ ~ 0.5 2
execute unless entity @s[tag=!walking,tag=!running,tag=!riding_poltergust] run scoreboard players set @s[scores={Sound=0}] Sound 5

execute if entity @s[tag=!death_animation,tag=!spawn_animation] run function 3ds_remake:entities/gooigi/idle
execute if entity @s[nbt={data:{animation:{}}},tag=idle] unless entity @s[tag=!walking,tag=!running,tag=!sneak_pos,tag=!spectator] run function luigis_mansion:entities/luigi/animation/set/none
execute if entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!animation_may_move,tag=!already_froze_player] run function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
execute if entity @s[tag=death_animation] run function 3ds_remake:entities/gooigi/animation/death
execute if entity @s[tag=spawn_animation] run function 3ds_remake:entities/gooigi/animation/spawn

tag @s[scores={TeleportDelayTimer=0}] remove pulled_by_ghost

execute at @s[scores={LightX=-2147483648..}] unless entity @s[scores={Shrunk=1..}] run function luigis_mansion:other/cast_shadow/2_tall
execute at @s[scores={LightX=-2147483648..,Shrunk=1..}] run function luigis_mansion:other/cast_shadow/1_tall

execute unless entity @s[distance=..0.01] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~ ~"}