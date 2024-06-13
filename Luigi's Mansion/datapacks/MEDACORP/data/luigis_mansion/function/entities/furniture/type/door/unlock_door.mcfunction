scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=80}] run data modify storage luigis_mansion:data current_state.current_data.used_keys append from entity @s ArmorItems[3].components."minecraft:custom_data".key
execute if entity @s[scores={AnimationProgress=80}] run data remove entity @s ArmorItems[3].components."minecraft:custom_data".key
execute if entity @s[scores={AnimationProgress=80}] run tag @a[tag=looking_at_map,limit=1] add regenerate_map
execute if entity @s[scores={AnimationProgress=180}] run playsound luigis_mansion:furniture.door.grab_knob block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=200}] run playsound luigis_mansion:furniture.door.turn_knob block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=240}] run playsound luigis_mansion:furniture.door.crack block @a[tag=same_room] ~ ~ ~ 1

data modify entity @s[tag=push] ArmorItems[3].components."minecraft:custom_data".animation set value {namespace:"luigis_mansion",id:"unlock/push"}
data modify entity @s[tag=!push] ArmorItems[3].components."minecraft:custom_data".animation set value {namespace:"luigis_mansion",id:"unlock/pull"}

data remove entity @s[scores={AnimationProgress=260}] ArmorItems[3].components."minecraft:custom_data".animation
tag @s[scores={AnimationProgress=260}] remove unlock_door
tag @s[scores={AnimationProgress=260}] add open_door
scoreboard players reset @s[scores={AnimationProgress=260}] AnimationProgress