scoreboard players add @s CreditsTime 1
scoreboard players set @s UseItem 0
title @s[scores={CreditsTime=1}] times 10 70 20
title @s[scores={CreditsTime=1}] title {"translate":"luigis_mansion:credits.map","color":"#598DC9"}
title @s[scores={CreditsTime=100}] subtitle {"text":"Dhranios","color":"#598DC9"}
title @s[scores={CreditsTime=100}] title {"translate":"luigis_mansion:credits.project_lead","color":"#598DC9"}
title @s[scores={CreditsTime=200}] subtitle {"text":"Laser Crusader (Skydier)","color":"#598DC9"}
title @s[scores={CreditsTime=200}] title {"translate":"luigis_mansion:credits.research_and_ripping","color":"#598DC9"}
title @s[scores={CreditsTime=300}] subtitle {"text":"Dhranios","color":"#598DC9"}
title @s[scores={CreditsTime=300}] title {"translate":"luigis_mansion:credits.functionality_and_models","color":"#598DC9"}
title @s[scores={CreditsTime=400}] subtitle {"text":"Supersleiny","color":"#598DC9"}
title @s[scores={CreditsTime=400}] title {"translate":"luigis_mansion:credits.trailer_creation","color":"#598DC9"}
title @s[scores={CreditsTime=500}] subtitle {"text":"Danish_Pirate, Feras_MQ, UltimateGold","color":"#598DC9"}
title @s[scores={CreditsTime=500}] title {"translate":"luigis_mansion:credits.beta_testing","color":"#598DC9"}
title @s[scores={CreditsTime=600}] subtitle {"text":"Medacorp","color":"#598DC9"}
title @s[scores={CreditsTime=600}] title {"translate":"luigis_mansion:credits.team","color":"#598DC9"}

title @s[scores={CreditsTime=700}] title {"translate":"luigis_mansion:credits.links","color":"#598DC9"}
title @s[scores={CreditsTime=800}] subtitle {"translate":"luigis_mansion:credits.discord.description","color":"#598DC9"}
title @s[scores={CreditsTime=800}] title {"translate":"luigis_mansion:credits.discord","color":"#598DC9"}
tellraw @s[scores={CreditsTime=800}] {"translate":"luigis_mansion:credits.discord.chat","underlined":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/Nn6wScEc88"},"color":"#598DC9"}
title @s[scores={CreditsTime=900}] subtitle {"translate":"luigis_mansion:credits.patreon.description","color":"#598DC9"}
title @s[scores={CreditsTime=900}] title {"translate":"luigis_mansion:credits.patreon","color":"#598DC9"}
tellraw @s[scores={CreditsTime=900}] {"translate":"luigis_mansion:credits.patreon.chat","underlined":true,"clickEvent":{"action":"open_url","value":"https://www.patreon.com/dhranios"},"color":"#598DC9"}
title @s[scores={CreditsTime=1000}] subtitle {"translate":"luigis_mansion:credits.github".description,"color":"#598DC9"}
title @s[scores={CreditsTime=1000}] title {"translate":"luigis_mansion:credits.github","color":"#598DC9"}
tellraw @s[scores={CreditsTime=1000}] {"translate":"luigis_mansion:credits.github.chat","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Medacorp/Luigi-s-Mansion"},"color":"#598DC9"}
title @s[scores={CreditsTime=1100}] subtitle {"translate":"luigis_mansion:credits.crowdin.description","color":"#598DC9"}
title @s[scores={CreditsTime=1100}] title {"translate":"luigis_mansion:credits.crowdin","color":"#598DC9"}
tellraw @s[scores={CreditsTime=1100}] {"translate":"luigis_mansion:credits.crowdin.chat","underlined":true,"clickEvent":{"action":"open_url","value":"https://crowdin.com/project/medacorp-projects"},"color":"#598DC9"}
title @s[scores={CreditsTime=1200},tag=!looking_at_map] times 40 40 40
title @s[scores={CreditsTime=1200},tag=looking_at_map] times 0 40 40
tag @s[scores={CreditsTime=1200}] remove show_credits
scoreboard players set @s[scores={CreditsTime=1200}] CreditsTime 0