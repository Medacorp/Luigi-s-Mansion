scoreboard players add @s PoltergustTimer 1
execute if entity @s[tag=expelling,tag=vacuuming] run scoreboard players add @s PoltergustCounter 1
execute if entity @s[tag=!expelling,tag=!vacuuming] run scoreboard players add @s PoltergustCounter 1
execute if entity @s[scores={PoltergustTimer=40,PoltergustCounter=10..}] run tellraw @a[tag=this_player,limit=1] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.warn.poltergust_spam"}]}
scoreboard players reset @s[scores={PoltergustTimer=40}] PoltergustCounter
scoreboard players set @s[scores={PoltergustTimer=40}] PoltergustTimer 0