execute if entity @s[tag=!looking_at_map] run function #luigis_mansion:items
function luigis_mansion:items/gameboy_horror
function luigis_mansion:blocks/gravity_swap
function luigis_mansion:blocks/blockade
execute if entity @s[tag=warp] run function luigis_mansion:items/gameboy_horror/warp
execute if entity @s[tag=grabbed] run function luigis_mansion:entities/player/grabbed

execute if entity @s[scores={Talk=1..}] run function luigis_mansion:target_villager
scoreboard players set @s[scores={Talk=1..}] Talk 0

execute rotated ~ 0 positioned ^ ^ ^-4 run function luigis_mansion:entities/player/spawn_ghosts
execute if score #changing_max_health Selected matches 0 run title @s[gamemode=!creative] actionbar {"translate":"luigis_mansion:message.health","with":[{"score":{"name":"@s","objective":"Health"}}],"color":"red"}
execute if score #changing_max_health Selected matches 1 run title @s[gamemode=!creative] actionbar {"translate":"luigis_mansion:message.health.out_of","with":[{"score":{"name":"@s","objective":"Health"}},{"score":{"name":"@s","objective":"MaxHealth"}}],"color":"red"}

scoreboard players remove @s[scores={RoomNoise=1..}] RoomNoise 1
scoreboard players remove @s[scores={Sound=1..}] Sound 1
execute if entity @s[tag=poltergust_malfunction] run function luigis_mansion:entities/player/poltergust_breakage
execute if entity @s[scores={Pull=20..},gamemode=!creative] run function luigis_mansion:entities/player/pulled_damage
scoreboard players remove @s[scores={Pull=1..}] Pull 1
tag @s remove pulled

execute if entity @s[scores={Health=..0}] run function luigis_mansion:entities/player/death
execute if entity @s[scores={Health=1..},tag=already_added_to_list] run function luigis_mansion:entities/player/remove_dead_entry
tag @s[scores={Health=1..}] remove already_added_to_list

execute store result score #temp ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion:{id:"luigis_mansion:flashlight"}} 0
execute if score #temp ActionTime matches 0 unless entity @s[scores={Shrunk=1..}] run give @s minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.flashlight"}'},luigis_mansion:{id:"luigis_mansion:flashlight"}}
execute store result score #temp ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}} 0
execute if score #temp ActionTime matches 0 run scoreboard players reset @s[advancements={luigis_mansion:lab/lab=true}] Element
execute if score #temp ActionTime matches 0 unless entity @s[scores={Shrunk=1..}] run give @s[advancements={luigis_mansion:lab/lab=true}] minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:0,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.poltergust_3000"}',Lore:['{"italic":false,"color":"gray","translate":"luigis_mansion:item.poltergust_3000.element","with":[{"translate":"luigis_mansion:item.poltergust_3000.element.none","color":"gray"}]}']},luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}
execute store result score #temp ActionTime run clear @s minecraft:carrot_on_a_stick{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}} 0
execute if score #temp ActionTime matches 0 unless entity @s[scores={Shrunk=1..}] run give @s[advancements={luigis_mansion:lab/lab=true}] minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:2,CustomModelData:0,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.gameboy_horror"}'},luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}
scoreboard players reset #temp ActionTime
execute as @e[distance=..3,type=minecraft:item] unless entity @s[nbt=!{Item:{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}},nbt=!{Item:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}},nbt=!{Item:{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}}] run kill @s

execute if entity @s[scores={Shrunk=2..}] run function luigis_mansion:items/poison_mushroom/visual

execute unless entity @s[scores={Invulnerable=0..}] run scoreboard players set @s Invulnerable 0
scoreboard players remove @s[scores={Invulnerable=1..}] Invulnerable 1
execute if entity @s[scores={Health=1..}] store result score @s Damage run data get entity @s Health -1
scoreboard players operation @s[scores={Health=1..}] Damage += #100 Constants
execute if entity @s[scores={Damage=1..},gamemode=!spectator] run function luigis_mansion:entities/player/take_damage
effect give @s[scores={Food=3..}] minecraft:hunger 1 255 true
effect give @s[scores={Food=..0}] minecraft:saturation 1 0 true
execute unless entity @s[scores={MaxHealth=100}] run scoreboard players add @s MaxHealthTime 1
execute if entity @s[scores={MaxHealthTime=1}] if score @s MaxHealth < @s Health run function luigis_mansion:entities/player/reduce_health_to_max
execute unless entity @s[scores={MaxHealth=100}] unless entity @s[scores={Walk=0..2,Run=0..2,Sneak=0}] run scoreboard players add @s MaxHealthTime 1
scoreboard players set @s[scores={MaxHealthTime=200}] MaxHealth 100
scoreboard players reset @s[scores={MaxHealthTime=200}] MaxHealthTime

execute if entity @s[scores={Walk=1..},tag=!looking_at_map] run particle minecraft:dust 0.5 0.5 0.5 1.2 ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[scores={Run=1..},tag=!looking_at_map] run particle minecraft:dust 0.5 0.5 0.5 2 ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[scores={Sneak=1..},tag=!looking_at_map] run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~0.2 ~ 0 0 0 0 1

execute unless entity @s[scores={Room=-3}] if score #loaded_exterior Selected matches -1 unless score #mansion_type Selected matches -1 run function luigis_mansion:room/ghost_portrificationizer_room/warp_to

tag @s[scores={MirrorX=-2147483648..},nbt=!{ActiveEffects:[{Id:14b}]}] add mirrored
tag @s[scores={MirrorZ=-2147483648..},nbt=!{ActiveEffects:[{Id:14b}]}] add mirrored
scoreboard players reset @s[tag=!mirrored] ReflectionNr
execute if entity @s[tag=mirrored] run function luigis_mansion:entities/reflection/player
execute at @s[scores={LightX=-2147483648..},nbt=!{ActiveEffects:[{Id:14b}]}] run function luigis_mansion:other/cast_shadow/2_tall
tag @s remove spectator