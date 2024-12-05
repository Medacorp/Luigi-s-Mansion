function luigis_mansion:room/dark_room
function luigis_mansion:entities/luigi/sync_with_camera

execute if entity @s[scores={Health=..0},tag=!death_animation,tag=!revived_animation,tag=!revived_by_polterpup] unless entity @s[nbt={data:{animation:{}}},tag=!idle] run function luigis_mansion:entities/luigi/death

scoreboard players reset @s[scores={OpenMapTime=1..},tag=stop_map_on_key_collect] OpenMapFocus
scoreboard players reset @s[scores={OpenMapTime=1..},tag=stop_map_on_key_collect] OpenMapTime
scoreboard players remove @s[scores={OpenMapTime=1..}] OpenMapTime 1
execute if entity @s[scores={OpenMapTime=0}] unless entity @s[nbt={data:{animation:{}}},tag=!idle] run function luigis_mansion:entities/luigi/run_command_as_owner {command:"function luigis_mansion:selection_menu/game_boy_horror/map/open"}
execute unless entity @s[nbt={data:{animation:{}}},tag=!idle] run scoreboard players reset @s[scores={OpenMapTime=0}] OpenMapTime
function #luigis_mansion:items
scoreboard players set @s UseItem 0
function #luigis_mansion:items/reset_disabled
function luigis_mansion:entities/luigi/sync_inventory
execute if entity @s[tag=!death_animation,tag=!revived_animation,tag=!revived_by_polterpup] unless entity @s[nbt={data:{animation:{}}},tag=!idle] run function luigis_mansion:blocks/gravity_swap
execute if entity @s[tag=riding_poltergust] run function luigis_mansion:entities/luigi/riding_poltergust

execute unless entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!animation_may_move] rotated ~ 0 positioned ^ ^ ^-4 run function luigis_mansion:entities/luigi/spawn_ghosts

execute unless entity @s[scores={Invulnerable=0..}] run scoreboard players set @s Invulnerable 0
execute unless entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!tick_down_invulnerability] run scoreboard players remove @s[scores={Invulnerable=1..}] Invulnerable 1
execute unless entity @s[scores={MaxHealth=100}] run function luigis_mansion:entities/luigi/health/max_reduced

execute if data entity @s data.reviver run function luigis_mansion:entities/luigi/revive

execute if entity @s[tag=!death_animation,tag=!revived_animation,tag=!revived_by_polterpup] run function luigis_mansion:entities/luigi/idle
execute if entity @s[nbt={data:{animation:{}}},tag=idle] unless entity @s[tag=!walking,tag=!running,tag=!sneak_pos] run function luigis_mansion:entities/luigi/animation/set/none
execute if entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!animation_may_move,tag=!already_froze_player] run function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
execute if entity @s[tag=death_animation] run function luigis_mansion:entities/luigi/animation/death
execute if entity @s[tag=revived_animation] run function luigis_mansion:entities/luigi/animation/revived
execute if entity @s[tag=revived_by_polterpup] run function 3ds_remake:entities/luigi/polterpup_revival

tag @s[scores={TeleportDelayTimer=0}] remove pulled_by_ghost

execute at @s[scores={LightX=-2147483648..}] unless entity @s[scores={Shrunk=1..}] run function luigis_mansion:other/cast_shadow/2_tall
execute at @s[scores={LightX=-2147483648..,Shrunk=1..}] run function luigis_mansion:other/cast_shadow/1_tall

execute unless entity @s[distance=..0.01] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~ ~"}