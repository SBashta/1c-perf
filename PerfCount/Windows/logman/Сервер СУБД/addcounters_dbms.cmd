@ECHO OFF
SET CounterName=1c
::ECHO Stop counter "%CounterName%"...
::logman stop %CounterName%
::ECHO Delete counter "%CounterName%"...
::logman delete %CounterName%

ECHO Adding counter "%CounterName%"...
logman create counter %CounterName% -f bincirc -c "\PhysicalDisk(*)\Avg. Disk Queue Length" "\PhysicalDisk(*)\Avg. Disk sec/Write" "\PhysicalDisk(*)\Avg. Disk sec/Read" "\Processor(_Total)\%% Processor Time" "\System\Processor Queue Length" "\Memory\Available MBytes" "\Network Interface(*)\Bytes Total/sec" "\Process(sqlservr)\%% Processor Time" "\SQLServer:Buffer Manager\Buffer cache hit ratio" "\SQLServer:Buffer Manager\Page life expectancy" -si 10 -v mmddhhmm

::ECHO start counter "%CounterName%"...
::logman start %CounterName%
ECHO Complete


