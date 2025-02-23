scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] ActionTime 0
tag @s[scores={Dialog=1}] remove vacuum_attack
tag @s[scores={Dialog=1}] remove breathe_fire
tag @s[scores={Dialog=1}] remove tail_attack
tag @s[scores={Dialog=1}] remove headless_run
tag @s[scores={Dialog=1}] remove run
tag @s[scores={Dialog=1}] remove walk
tag @s[scores={Dialog=1}] remove jump
$execute if entity @s[scores={Dialog=1}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"},owner:$(UUID)}},tag=same_room,limit=1] run data modify storage luigis_mansion:data entity set value {damage:{},owner:$(UUID),tags:["decapitate","decapitate_move_up","can_decapitate","no_dialog_freeze"],room_search:{non_players:1b}}
$execute if entity @s[scores={Dialog=1}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"},owner:$(UUID)}},tag=same_room,limit=1] run data modify storage luigis_mansion:data entity.damage.spit_ice set from entity @s data.damage.spit_ice
$execute if entity @s[scores={Dialog=1}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"},owner:$(UUID)}},tag=same_room,limit=1] positioned ^ ^4.667 ^-0.533 run function luigis_mansion:spawn_entities/bowser/head
$execute if entity @s[scores={Dialog=1}] run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"},owner:$(UUID)}},tag=same_room,limit=1] add decapitate
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"decapitate"}
data modify entity @s[scores={Dialog=1}] data.initial_animation_progress set value 0
tag @s[scores={Dialog=40}] remove can_decapitate
execute if entity @s[scores={Dialog=20}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"king_boo_appears"},progress:0,room:0}
execute if entity @s[scores={Dialog=20}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] store result storage luigis_mansion:data dialogs[0].room int 1 run scoreboard players get @s Room
execute if entity @s[scores={Dialog=20}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] run data modify storage luigis_mansion:data entity set value {room_search:{non_players:1b},tags:["no_dialog_freeze"]}
execute if entity @s[scores={Dialog=20}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] positioned ^ ^4.667 ^0.533 run function luigis_mansion:spawn_entities/portrait_ghost/king_boo
tag @s[scores={Dialog=40}] remove decapitate
data modify entity @s[scores={Dialog=40}] data.animation set value {namespace:"luigis_mansion",id:"decapitated"}
scoreboard players set @s[scores={Dialog=40}] Dialog 0