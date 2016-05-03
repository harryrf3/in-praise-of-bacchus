# in-praise-of-bacchus
Bacchus - mIRC bot I work on when I'm bored.

This bot is not complete as I do not spend a tremendous amount of time on it. Nonetheless, everything should function normally.

To use this bot, you must install the scripts manually. First place the script files in a folder called bacchus-bot, then place that folder in your mIRC scripts folder.

The only changes that should need made are in the config.ini file. Here is something similar to what yours should look like.

--config.ini
```
  %bServer irc.sitename.com:6667
  %bName botName
  %bPass botPass
  %bAdminChan #bAdminChan
  %commandPrefix =>
```
%bServer, %bName, and %bPass are all pretty much self-explanatory.

%bAdminChan is a channel you want to be secure. Anyone that has access to this channel will have control over the code. That could prove to be pretty ugly, especially if your bot is op'd or has admin in one or more channels. Please make sure this is secure. I am not responsible for any damages.

%commandPrefix this of course is the prefix for your commands. With a command prefix of => the syntax is as follows,' => echo test ' and the bot echoes ' test '. You can use the command prefix and the bot's name interchangeably so, ' Bacchus echo test ' would give the same results
