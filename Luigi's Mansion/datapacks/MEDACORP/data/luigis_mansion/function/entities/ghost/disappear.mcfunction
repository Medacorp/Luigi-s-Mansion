function luigis_mansion:entities/ghost/go_to_home
$function $(namespace):entities/$(id)/reset
execute at @s positioned ~ ~0.01 ~ align y run teleport @s ~ ~ ~ ~ 0
scoreboard players set @s Time 0
scoreboard players set @s[tag=!no_hidden_move] Time 40
tag @s[tag=disappear_on_vanish,tag=!no_disappear] add remove_from_existence
execute if data entity @s[tag=disappear_on_vanish,tag=!no_disappear] data.disappear_on_vanish run data modify storage luigis_mansion:data current_state.current_data.money_spawned append from entity @s data.disappear_on_vanish
tag @s remove no_disappear
scoreboard players set @s[tag=!no_spawn_cooldown] SpawnTime 200
scoreboard players set @s[tag=no_spawn_cooldown] SpawnTime 0
tag @s[tag=no_spawn_cooldown] add can_spawn
scoreboard players set @s ActionTime 0
scoreboard players set @s ErrorTime 0
scoreboard players set @s TargetTask 0
scoreboard players set @s TargetTime 0
data remove entity @s data.target
data remove entity @s data.target_pos
data remove entity @s data.path
scoreboard players reset @s SecondFleeState
scoreboard players operation @s LastHealth = @s Health
data modify entity @s data.attacked_by set value []
tag @s remove disappear
tag @s remove disappear_next_tick
tag @s remove no_spawn_cooldown
tag @s remove flee
tag @s remove hurt
tag @s remove element_hurt
tag @s remove vanish
tag @s remove vanish_from_vacuum
tag @s remove second_flee_state
tag @s remove visible
tag @s add hidden