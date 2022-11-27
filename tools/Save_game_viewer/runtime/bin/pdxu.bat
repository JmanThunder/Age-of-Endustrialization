@echo off
set DIR="%~dp0"
set JAVA_EXEC="%DIR:"=%\java"



pushd %DIR% & %JAVA_EXEC% %CDS_JVM_OPTS% --add-exports javafx.graphics/com.sun.javafx.scene=com.jfoenix --add-exports javafx.graphics/com.sun.javafx.stage=com.jfoenix --add-exports javafx.base/com.sun.javafx.binding=com.jfoenix --add-exports javafx.base/com.sun.javafx.event=com.jfoenix --add-exports javafx.controls/com.sun.javafx.scene.control=com.jfoenix --add-exports javafx.controls/com.sun.javafx.scene.control.behavior=com.jfoenix --add-opens com.google.gson/com.google.gson.internal=io.sentry --add-opens java.base/java.lang.reflect=com.jfoenix -Xmx4G -p "%~dp0/../app" -m com.crschnick.pdxu.app/com.crschnick.pdxu.app.cli.MainCommand  %* & popd
