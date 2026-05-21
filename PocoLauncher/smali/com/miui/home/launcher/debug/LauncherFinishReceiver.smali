.class public Lcom/miui/home/launcher/debug/LauncherFinishReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LauncherFinishReceiver.java"

# interfaces
.implements Lcom/miui/home/launcher/debug/OnUsbSwitchListener;


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    if-eqz p1, :cond_0

    .line 18
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->registerReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 6

    .line 46
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "com.miui.launcher.action.FINISH_ME"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.DUMP"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, p0

    .line 47
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterReceiver(Landroid/content/Context;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelListener(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->unRegisterReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.miui.launcher.action.FINISH_ME"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "LauncherFinishReceiver"

    const-string p1, "onReceive: ACTION_FINISH_ACTIVITY"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onUsbSwitchOff(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->unRegisterReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onUsbSwitchOn(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method
