cls
@ECHO OFF
echo State Your Username.
set/p "n=>"
echo State The User You Are Messanging.
set/p "mm=>"
echo State The Time. EXAMPLE: 8:00 AM
set/p "t=>"
echo State The Date. EXAMPLE: 6/4/2021
set/p "d=>"
echo Type message.
set/p "cho=>"
FINDSTR /I /V /B "sqlServer=" config.txt > config.new
ECHO Date: %d%  Time: %t%  Username: %n%  Recipient: %mm% Message: %cho% >> config.new
DEL config.txt
REN config.new config.txt
goto suc
:suc
echo Success! Your message has been posted! This will go away in 10 seconds.
timeout 10
exit