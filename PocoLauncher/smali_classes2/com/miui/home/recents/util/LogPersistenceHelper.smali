.class public Lcom/miui/home/recents/util/LogPersistenceHelper;
.super Ljava/lang/Object;
.source "LogPersistenceHelper.java"


# direct methods
.method public static asyncFileLoggerLevelDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/miui/home/library/MiuiHomeLog284Helper;->asyncFileLoggerLevelDebug(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
