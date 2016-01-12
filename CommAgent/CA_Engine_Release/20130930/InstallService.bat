@echo off
call set_env.bat

%commagent_home%\R3CA.exe -install %commagent_serv% %JAVA_HOME%\jre\bin\server\jvm.dll -Djava.class.path=%commagent_home%\R3Comm_New.zip;%commagent_home%\sqljdbc.jar;%commagent_home%\mail.jar;%commagent_home%\msutil.jar;%commagent_home%\mssqlserver.jar;%commagent_home%\msbase.jar -Duser.timezone=Asia/Kuala Lumpur -Dfile.encoding=UTF-8 -Xms128M -Xmx256M -start com.newspage.CommAgent.appl.HostAppDaemon -params "-appdir" "%commagent_home%" "start" -stop com.newspage.CommAgent.appl.HostAppDaemon -params "-appdir" "%commagent_home%" "stop" -out %commagent_home%\workdir\log\stdout.log -err %commagent_home%\workdir\log\stderr.log


pause