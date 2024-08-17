scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=5}] run playsound luigis_mansion:furniture.door.fake_open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=45}] run playsound luigis_mansion:furniture.door.fake_closing block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=70}] run playsound luigis_mansion:furniture.door.fake_close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=100}] run playsound luigis_mansion:entity.ghost.laugh block @a[tag=same_room] ~ ~ ~ 1

data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"attack"}
data remove entity @s[scores={ActionTime=100}] data.animation

tag @s[scores={ActionTime=100}] remove attack
scoreboard players reset @s[scores={ActionTime=100}] ActionTime