#scoreboard

scoreboard players remove @e[tag=sr_MapCenter] sr_timer 1
scoreboard players operation @e[tag=sr_MapCenter,limit=1] sr_timerT = @e[tag=sr_MapCenter,limit=1] sr_timer
scoreboard players operation @e[tag=sr_MapCenter,limit=1] sr_timerT /= @e[tag=sr_MapCenter,limit=1] sr_timer20
scoreboard players operation @e[tag=sr_MapCenter,limit=1] sr_timerS = @e[tag=sr_MapCenter,limit=1] sr_timerT
scoreboard players operation @e[tag=sr_MapCenter,limit=1] sr_timerM = @e[tag=sr_MapCenter,limit=1] sr_timerT
scoreboard players operation @e[tag=sr_MapCenter,limit=1] sr_timerM /= @e[tag=sr_MapCenter,limit=1] sr_timer60
scoreboard players operation @e[tag=sr_MapCenter,limit=1] sr_timerS %= @e[tag=sr_MapCenter,limit=1] sr_timer60


#bossbar
execute store result bossbar display_timer value run scoreboard players get @e[tag=sr_MapCenter,limit=1] sr_timerT

#tellraw_timer
title @a[tag=sr_player] actionbar ["",{"score":{"name":"@e[tag=sr_MapCenter]","objective":"sr_timerM"}},{"text":" m "},{"score":{"name":"@e[tag=sr_MapCenter]","objective":"sr_timerS"}},{"text":" s left"}]