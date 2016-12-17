; ------------------------------------------------ Variables -------------------------------------------------
; Variables

CogHP1=0
CogHP2=0
CogHP3=0
CogHP4=0


; ----------------------------------------------- Setting Up GUI --------------------------------------------
; Cog Gui
Gui, New,+AlwaysOnTop, CogHP
Gui, Add, Text,h4,
Gui, Add, Text,, AoE Damage:
Gui, Add, Edit, limit3 Number vAoEDamage,
Gui, Add, Button, gCalculateAoE, OK
Gui, Add, Button,gTotalReset x+m, Reset
Gui, Add, Text,h2,
Gui, Add, Text,, Cog Name:
Gui, Add, Text,,    HP:
Gui, Add, Text,,    Lvl:
Gui, Add, Text,, Damage:



;Cog 1
Gui, Add, Picture,gSetFocus1 w120 h120 vPic1 ys, %A_WorkingDir%\cogfaces\Cog_gear.png
Gui, Add, DropDownList,gChangePicture1 vCogName1,Ambulance Chaser |Back Stabber |Bean Counter |Big Wig |Bloodsucker  |Bottom Feeder |Cold Caller |Corporate Raider |Double Talker |Downsizer |Flunky  |Glad Handler|Head Hunter |Legal Eagle |Loan Shark |Micromanager |Money Bags |Mover & Shaker |Mr. Hollywood |Name Dropper |Number Cruncher |Pencil Pusher |Penny Pincher |Robber Baron |Short Change |Spin Doctor|Telemarketer |The Big Cheese |The Mingler |Tightwad |Two-Face |Yesman 
Gui, Add, Text,w35 vCogHP1, %CogHP1%
Gui, Add, UpDown,Range0-200
Gui, Add, DropDownList, vCogLevel1 gCalculateHP1, 1|2|3|4|5|6|7|8|9|10|11|12
Gui, Add, Edit, limit3 Number vDamage1, 
Gui, Add, Button, gCalculate1, OK
Gui, Add, Button, gReset1 x+m, Reset

;Cog 2
Gui, Add, Picture,gSetFocus2 w120 h120 vPic2  ys, %A_WorkingDir%\cogfaces\Cog_gear.png
Gui, Add, DropDownList,gChangePicture2 vCogName2,Ambulance Chaser |Back Stabber |Bean Counter |Big Wig |Bloodsucker  |Bottom Feeder |Cold Caller |Corporate Raider |Double Talker |Downsizer |Flunky  |Glad Handler|Head Hunter |Legal Eagle |Loan Shark |Micromanager |Money Bags |Mover & Shaker |Mr. Hollywood |Name Dropper |Number Cruncher |Pencil Pusher |Penny Pincher |Robber Baron |Short Change |Spin Doctor|Telemarketer |The Big Cheese |The Mingler |Tightwad |Two-Face |Yesman 
Gui, Add, Text,w35 vCogHP2, %CogHP2%
Gui, Add, UpDown,Range0-200
Gui, Add, DropDownList, vCogLevel2 gCalculateHP2, 1|2|3|4|5|6|7|8|9|10|11|12
Gui, Add, Edit,limit3 Number vDamage2, 
Gui, Add, Button,gCalculate2, OK`
Gui, Add, Button, gReset2 x+m, Reset

;Cog 3
Gui, Add, Picture,gSetFocus3 w120 h120 vPic3  ys, %A_WorkingDir%\cogfaces\Cog_gear.png
Gui, Add, DropDownList,gChangePicture3 vCogName3,Ambulance Chaser |Back Stabber |Bean Counter |Big Wig |Bloodsucker  |Bottom Feeder |Cold Caller |Corporate Raider |Double Talker |Downsizer |Flunky  |Glad Handler|Head Hunter |Legal Eagle |Loan Shark |Micromanager |Money Bags |Mover & Shaker |Mr. Hollywood |Name Dropper |Number Cruncher |Pencil Pusher |Penny Pincher |Robber Baron |Short Change |Spin Doctor|Telemarketer |The Big Cheese |The Mingler |Tightwad |Two-Face |Yesman 
Gui, Add, Text,w35 vCogHP3, %CogHP3%
Gui, Add, UpDown,Range0-200
Gui, Add, DropDownList, vCogLevel3 gCalculateHP3, 1|2|3|4|5|6|7|8|9|10|11|12
Gui, Add, Edit,limit3 Number vDamage3, 
Gui, Add, Button,gCalculate3, OK
Gui, Add, Button, gReset3 x+m, Reset

;Cog 4
Gui, Add, Picture,gSetFocus4 w120 h120 vPic4  ys, %A_WorkingDir%\cogfaces\Cog_gear.png
Gui, Add, DropDownList,gChangePicture4 vCogName4,Ambulance Chaser |Back Stabber |Bean Counter |Big Wig |Bloodsucker  |Bottom Feeder |Cold Caller |Corporate Raider |Double Talker |Downsizer |Flunky  |Glad Handler|Head Hunter |Legal Eagle |Loan Shark |Micromanager |Money Bags |Mover & Shaker |Mr. Hollywood |Name Dropper |Number Cruncher |Pencil Pusher |Penny Pincher |Robber Baron |Short Change |Spin Doctor|Telemarketer |The Big Cheese |The Mingler |Tightwad |Two-Face |Yesman 
Gui, Add, Text,w35 vCogHP4, %CogHP4%
Gui, Add, UpDown,Range0-200
Gui, Add, DropDownList, vCogLevel4 gCalculateHP4, 1|2|3|4|5|6|7|8|9|10|11|12
Gui, Add, Edit,limit3 Number vDamage4, 
Gui, Add, Button,gCalculate4, OK
Gui, Add, Button, gReset4 x+m, Reset

;Show Window
Gui, Show, W655 H270, Cog HP Monitor
return 

; ------------------------------------------------ HP Values ------------------------------------------------
;Set Cog HP
CalculateHP1:
Gui, Submit, NoHide
CogHP1:=CalculateHP(CogLevel1)
GuiControl,,CogHP1,%CogHP1%
return

CalculateHP2:
Gui, Submit, NoHide
CogHP2:=CalculateHP(CogLevel2)  
GuiControl,,CogHP2,%CogHP2%
return

CalculateHP3:
Gui, Submit, NoHide
CogHP3:=CalculateHP(CogLevel3)   
GuiControl,,CogHP3,%CogHP3%
return

CalculateHP4:
Gui, Submit, NoHide
CogHP4:=CalculateHP(CogLevel4)
GuiControl,,CogHP4,%CogHP4%
return

; Calculate New Cog HP based on Level
CalculateHP(x) 
{
if(x==12)
return 200
else	
return (x+1)*(x+2)
}

; Calculate Damage
Calculate1:
Gui, Submit, NoHide
GuiControl,Focus,Damage1
if(Damage1>-1){
CogHP1:=CogHP1-Damage1
GuiControl,,Damage1,    
GuiControl,,CogHP1,%CogHP1%
}
else
return
return

Calculate2:
Gui, Submit, NoHide
GuiControl,Focus,Damage2
if(Damage2>-1){
CogHP2:=CogHP2-Damage2
GuiControl,,Damage2,   
GuiControl,,CogHP2,%CogHP2%
}
else
return
return

Calculate3:
Gui, Submit, NoHide
GuiControl,Focus,Damage3
if(Damage3>-1){
CogHP3:=CogHP3-Damage3
GuiControl,,Damage3,   
GuiControl,,CogHP3,%CogHP3%
}
else
return
return

Calculate4:
Gui, Submit, NoHide
GuiControl,Focus,Damage4
if(Damage4>-1){
CogHP4:=CogHP4-Damage4
GuiControl,,Damage4,   
GuiControl,,CogHP4,%CogHP4%
}
else
return
return

CalculateAoE:
Gui, Submit, NoHide
GuiControl,Focus,AoEDamage
if(AoEDamage>-1){
CogHP1:=CogHP1-AoEDamage 
GuiControl,,CogHP1,%CogHP1%

CogHP2:=CogHP2-AoEDamage
GuiControl,,CogHP2,%CogHP2%

CogHP3:=CogHP3-AoEDamage
GuiControl,,CogHP3,%CogHP3%

CogHP4:=CogHP4-AoEDamage
GuiControl,,CogHP4,%CogHP4%

GuiControl,, AoEDamage,    
}
else
return
return

; ------------------------------------------------- GUI Element Changes --------------------------------------

;Change the Picture 1
ChangePicture1:
Gui, Submit, NoHide
if(CogName1=="Ambulance Chaser ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\ambulance_chaser.png
if(CogName1=="Back Stabber ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\backstabber.png
if(CogName1=="Bean Counter ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\bean_counter.png
if(CogName1=="Big Wig ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\big_wig.png
if(CogName1=="Bloodsucker  ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\bloodsucker.png
if(CogName1=="Bottom Feeder ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\bottom_feeder.png
if(CogName1=="Cold Caller ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\cold_caller.png
if(CogName1=="Corporate Raider ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\corporate_raider.png
if(CogName1=="Double Talker ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\double_talker.png
if(CogName1=="Downsizer ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\downsizer.png
if(CogName1=="Flunky  ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\flunky.png
if(CogName1=="Glad Handler")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\glad_hander.png
if(CogName1=="Head Hunter ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\head_hunter.png
if(CogName1=="Legal Eagle ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\legal_eagle.png
if(CogName1=="Loan Shark ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\loan_shark.png
if(CogName1=="Micromanager ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\micromanager.png
if(CogName1=="Money Bags ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\money_bags.png
if(CogName1=="Mover & Shaker ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\mover_and_shaker.png
if(CogName1=="Mr. Hollywood ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\mr_hollywood.png
if(CogName1=="Name Dropper ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\name_dropper.png
if(CogName1=="Number Cruncher ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\number_cruncher.png
if(CogName1=="Pencil Pusher ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\pencil_pusher.png
if(CogName1=="Penny Pincher ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\penny_pincher.png
if(CogName1=="Robber Baron ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\robber_baron.png
if(CogName1=="Short Change ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\short_change.png
if(CogName1=="Spin Doctor")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\spin_doctor.png
if(CogName1=="Telemarketer ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\telemarketer.png
if(CogName1=="The Big Cheese ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\the_big_cheese.png
if(CogName1=="The Mingler ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\the_mingler.png
if(CogName1=="Tightwad ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\tightwad.png
if(CogName1=="Two-Face ")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\two_face.png
if(CogName1=="Yesman")
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\yes_man.png
return

;Change the Picture 2
ChangePicture2:
Gui, Submit, NoHide
if(CogName2=="Ambulance Chaser ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\ambulance_chaser.png
if(CogName2=="Back Stabber ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\backstabber.png
if(CogName2=="Bean Counter ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\bean_counter.png
if(CogName2=="Big Wig ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\big_wig.png
if(CogName2=="Bloodsucker  ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\bloodsucker.png
if(CogName2=="Bottom Feeder ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\bottom_feeder.png
if(CogName2=="Cold Caller ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\cold_caller.png
if(CogName2=="Corporate Raider ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\corporate_raider.png
if(CogName2=="Double Talker ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\double_talker.png
if(CogName2=="Downsizer ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\downsizer.png
if(CogName2=="Flunky  ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\flunky.png
if(CogName2=="Glad Handler ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\glad_hander.png
if(CogName2=="Head Hunter ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\head_hunter.png
if(CogName2=="Legal Eagle ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\legal_eagle.png
if(CogName2=="Loan Shark ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\loan_shark.png
if(CogName2=="Micromanager ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\micromanager.png
if(CogName2=="Money Bags ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\money_bags.png
if(CogName2=="Mover & Shaker ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\mover_and_shaker.png
if(CogName2=="Mr. Hollywood ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\mr_hollywood.png
if(CogName2=="Name Dropper ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\name_dropper.png
if(CogName2=="Number Cruncher ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\number_cruncher.png
if(CogName2=="Pencil Pusher ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\pencil_pusher.png
if(CogName2=="Penny Pincher ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\penny_pincher.png
if(CogName2=="Robber Baron ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\robber_baron.png
if(CogName2=="Short Change ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\short_change.png
if(CogName2=="Spin Doctor")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\spin_doctor.png
if(CogName2=="Telemarketer ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\telemarketer.png
if(CogName2=="The Big Cheese ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\the_big_cheese.png
if(CogName2=="The Mingler ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\the_mingler.png
if(CogName2=="Tightwad ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\tightwad.png
if(CogName2=="Two-Face ")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\two_face.png
if(CogName2=="Yesman")
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\yes_man.png
return


;Change the Picture 3
ChangePicture3:
Gui, Submit, NoHide
if(CogName3=="Ambulance Chaser ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\ambulance_chaser.png
if(CogName3=="Back Stabber ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\backstabber.png
if(CogName3=="Bean Counter ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\bean_counter.png
if(CogName3=="Big Wig ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\big_wig.png
if(CogName3=="Bloodsucker  ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\bloodsucker.png
if(CogName3=="Bottom Feeder ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\bottom_feeder.png
if(CogName3=="Cold Caller ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\cold_caller.png
if(CogName3=="Corporate Raider ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\corporate_raider.png
if(CogName3=="Double Talker ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\double_talker.png
if(CogName3=="Downsizer ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\downsizer.png
if(CogName3=="Flunky  ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\flunky.png
if(CogName3=="Glad Handler ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\glad_hander.png
if(CogName3=="Head Hunter ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\head_hunter.png
if(CogName3=="Legal Eagle ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\legal_eagle.png
if(CogName3=="Loan Shark ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\loan_shark.png
if(CogName3=="Micromanager ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\micromanager.png
if(CogName3=="Money Bags ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\money_bags.png
if(CogName3=="Mover & Shaker ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\mover_and_shaker.png
if(CogName3=="Mr. Hollywood ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\mr_hollywood.png
if(CogName3=="Name Dropper ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\name_dropper.png
if(CogName3=="Number Cruncher ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\number_cruncher.png
if(CogName3=="Pencil Pusher ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\pencil_pusher.png
if(CogName3=="Penny Pincher ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\penny_pincher.png
if(CogName3=="Robber Baron ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\robber_baron.png
if(CogName3=="Short Change ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\short_change.png
if(CogName3=="Spin Doctor")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\spin_doctor.png
if(CogName3=="Telemarketer ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\telemarketer.png
if(CogName3=="The Big Cheese ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\the_big_cheese.png
if(CogName3=="The Mingler ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\the_mingler.png
if(CogName3=="Tightwad ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\tightwad.png
if(CogName3=="Two-Face ")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\two_face.png
if(CogName3=="Yesman")
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\yes_man.png
return

;Change the Picture 2
ChangePicture4:
Gui, Submit, NoHide
if(CogName4=="Ambulance Chaser ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\ambulance_chaser.png
if(CogName4=="Back Stabber ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\backstabber.png
if(CogName4=="Bean Counter ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\bean_counter.png
if(CogName4=="Big Wig ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\big_wig.png
if(CogName4=="Bloodsucker  ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\bloodsucker.png
if(CogName4=="Bottom Feeder ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\bottom_feeder.png
if(CogName4=="Cold Caller ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\cold_caller.png
if(CogName4=="Corporate Raider ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\corporate_raider.png
if(CogName4=="Double Talker ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\double_talker.png
if(CogName4=="Downsizer ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\downsizer.png
if(CogName4=="Flunky  ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\flunky.png
if(CogName4=="Glad Handler ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\glad_hander.png
if(CogName4=="Head Hunter ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\head_hunter.png
if(CogName4=="Legal Eagle ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\legal_eagle.png
if(CogName4=="Loan Shark ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\loan_shark.png
if(CogName4=="Micromanager ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\micromanager.png
if(CogName4=="Money Bags ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\money_bags.png
if(CogName4=="Mover & Shaker ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\mover_and_shaker.png
if(CogName4=="Mr. Hollywood ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\mr_hollywood.png
if(CogName4=="Name Dropper ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\name_dropper.png
if(CogName4=="Number Cruncher ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\number_cruncher.png
if(CogName4=="Pencil Pusher ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\pencil_pusher.png
if(CogName4=="Penny Pincher ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\penny_pincher.png
if(CogName4=="Robber Baron ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\robber_baron.png
if(CogName4=="Short Change ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\short_change.png
if(CogName4=="Spin Doctor")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\spin_doctor.png
if(CogName4=="Telemarketer ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\telemarketer.png
if(CogName4=="The Big Cheese ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\the_big_cheese.png
if(CogName4=="The Mingler ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\the_mingler.png
if(CogName4=="Tightwad ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\tightwad.png
if(CogName4=="Two-Face ")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\two_face.png
if(CogName4=="Yesman")
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\yes_man.png
return


; -------------------------------------------------- Set Focus -----------------------------------------
;Set Focus
SetFocus1:
GuiControl,Focus,Damage1
return

SetFocus2:
GuiControl,Focus,Damage2
return

SetFocus3:
GuiControl,Focus,Damage3
return

SetFocus4:
GuiControl,Focus,Damage4
return

SetFocusAoE:
GuiControl,Focus,AoEDamage
return


; -------------------------------------------------- Resetting Elements --------------------------------------------
; Total Reset


Reset1:
CogHP1=0
GuiControl,,CogHP1,%CogHP1%
CogLevel1=0
GuiControl,Choose,CogLevel1, 0
GuiControl,Choose,CogName1, 0
GuiControl,,Damage1, 
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\Cog_gear.png
return

Reset2:
CogHP2=0
GuiControl,,CogHP2,%CogHP2%
CogLevel2=0
GuiControl,Choose,CogLevel2, 0
GuiControl,Choose,CogName2, 0
GuiControl,,Damage2,   
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\Cog_gear.png
return

Reset3:
CogHP3=0
CogLevel3=0
GuiControl,,CogHP3,%CogHP3%
GuiControl,Choose,CogLevel3, 0
GuiControl,Choose,CogName3, 0
GuiControl,,Damage3,
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\Cog_gear.png
return

Reset4:
CogHP4=0
CogLevel4=0
GuiControl,,CogHP4,%CogHP4%
GuiControl,Choose,CogLevel4, 0
GuiControl,Choose,CogName4, 0
GuiControl,,Damage4,   
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\Cog_gear.png
return

TotalReset:
CogHP1=0
GuiControl,,CogHP1,%CogHP1%
CogLevel1=0
GuiControl,Choose,CogLevel1, 0
GuiControl,Choose,CogName1, 0
GuiControl,,Damage1, 
GuiControl,,Pic1,%A_WorkingDir%\cogfaces\Cog_gear.png
CogHP2=0
GuiControl,,CogHP2,%CogHP2%
CogLevel2=0
GuiControl,Choose,CogLevel2, 0
GuiControl,Choose,CogName2, 0
GuiControl,,Damage2,   
GuiControl,,Pic2,%A_WorkingDir%\cogfaces\Cog_gear.png
CogHP3=0
CogLevel3=0
GuiControl,,CogHP3,%CogHP3%
GuiControl,Choose,CogLevel3, 0
GuiControl,Choose,CogName3, 0
GuiControl,,Damage3,
GuiControl,,Pic3,%A_WorkingDir%\cogfaces\Cog_gear.png
CogHP4=0
CogLevel4=0
GuiControl,,CogHP4,%CogHP4%
GuiControl,Choose,CogLevel4, 0
GuiControl,Choose,CogName4, 0
GuiControl,,Damage4,   
GuiControl,,Pic4,%A_WorkingDir%\cogfaces\Cog_gear.png
return


F1::Gui,Show,Minimize
XButton1::Reload