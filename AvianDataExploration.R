View(AvianFatalities)

#Explore Column Catagories for Avian Fatalities
Years <- table(AvianFatalities$Year)
Years
Month <- table(AvianFatalities$Month)
Month
Days <- table(AvianFatalities$Day)
Days
TurbID <- table(AvianFatalities$TurbineID)
TurbID
TurbMod <- table(AvianFatalities$TurbineModel)
TurbMod #Bonus only has 3 observations (same three obs in tower type and RSArea - no bird collisions)
TowerT <- table(AvianFatalities$TowerType)
TowerT #Tubular only has three observations
TowerH <- table(AvianFatalities$TowerHeight)
TowerH
BladeL <- table(AvianFatalities$BladeLength)
BladeL #38 only has three observations
RSArea <- table(AvianFatalities$RotorSweptArea)
RSArea #4536.16 only has three observations
Ele <- table(AvianFatalities$Elevation)
Ele
Slope <- table(AvianFatalities$Slope)
Slope
Aspect <- table(AvianFatalities$Aspect)
Aspect #What is this?
DaysDead <- table(AvianFatalities$DaysDead)
DaysDead #Is this what it sounds like? Is this to subtract from date observed to get a more accurate date of collision?
BirdCount <- table(AvianFatalities$Bird)
BirdCount 
Name <- table(AvianFatalities$CommonName)
Name #Who collects this data? Combine undetermined or create vague size catagories?
#Non-Breeding resident (CA): American Pipit (Winter)
#Mostly year-round (CA): Burrowing Owl, Mountain Bluebird (winter+year-round), northern flicker (year + summer)
#contin.: N. harrier (year + winter)
Age <- table(AvianFatalities$Age)
Age #85% of observations are undetermined or blank
Sex <- table(AvianFatalities$Sex)
Sex #95% of observations are undetermined or blank
Rain <- table(AvianFatalities$Rain)
Rain #In inches?
WindS <- table(AvianFatalities$WindS)
WindS #What is windS?
WindH <- table(AvianFatalities$WindH)
WindH #What is windH?

#Play with combining blanks and undetermined
Play <- AvianFatalities
Play$Age[Play$Age==""] <- "Undetermined" 
PlayAge <- table(Play$Age)
PlayAge
Play$Sex[Play$Sex==""] <- "Undetermined"
PlaySex <- table(Play$Sex)
PlaySex
View(Play)