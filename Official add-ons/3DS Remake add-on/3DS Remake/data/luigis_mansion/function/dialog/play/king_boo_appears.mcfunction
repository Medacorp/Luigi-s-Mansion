scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1..99 as @a[tag=same_room] at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~3 ~1 ~ 90 10"}
execute if score #dialog Dialog matches 100 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 100 run scoreboard players set #dialog Dialog -1