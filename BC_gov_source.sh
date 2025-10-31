
# Tsai Creek | Air Temp (AT) | Prev 7 days
curl --output AT.zip "https://bcmoe-prod.aquaticinformatics.net/Export/DataSet?DataSet=TA.Working%404B17P&Calendar=CALENDARYEAR&DateRange=Days7&UnitID=472&Conversion=Instantaneous&IntervalPoints=PointsAsRecorded&ApprovalLevels=True&Qualifiers=True&Step=1&ExportFormat=csv&Compressed=true&RoundData=False&GradeCodes=True&InterpolationTypes=False&Timezone=0&_=1761782388816"

# Tsai Creek | Precip Cumulative (PC)| Prev 7 days
curl --output PC.zip "https://bcmoe-prod.aquaticinformatics.net/Export/DataSet?DataSet=PC.Working%404B17P&Calendar=CALENDARYEAR&DateRange=Days7&UnitID=372&Conversion=Instantaneous&IntervalPoints=PointsAsRecorded&ApprovalLevels=True&Qualifiers=True&Step=1&ExportFormat=csv&Compressed=true&RoundData=False&GradeCodes=True&InterpolationTypes=False&Timezone=0&_=1761921655064"

# Tsai Creek | Snow Depth (SD)| Prev 7 days
curl --output SD.zip "https://bcmoe-prod.aquaticinformatics.net/Export/DataSet?DataSet=SD.Working%404B17P&Calendar=CALENDARYEAR&DateRange=Days7&UnitID=216&Conversion=Instantaneous&IntervalPoints=PointsAsRecorded&ApprovalLevels=True&Qualifiers=True&Step=1&ExportFormat=csv&Compressed=true&RoundData=False&GradeCodes=True&InterpolationTypes=False&Timezone=0&_=1761921842923"

# Tsai Creek | Snow water equic (SWE)| Prev 7 days
curl --output SWE.zip "https://bcmoe-prod.aquaticinformatics.net/Export/DataSet?DataSet=SW.Working%404B17P&Calendar=CALENDARYEAR&DateRange=Days7&UnitID=372&Conversion=Instantaneous&IntervalPoints=PointsAsRecorded&ApprovalLevels=True&Qualifiers=True&Step=1&ExportFormat=csv&Compressed=true&RoundData=False&GradeCodes=True&InterpolationTypes=False&Timezone=0&_=1761922021040"

# Run python script to create grafana csv's
python url_csv_convert.py