.class Lcom/miui/home/launcher/SmallWindowStateCallbackForLauncher;
.super Ljava/lang/Object;
.source "SmallWindowStateCallbackForLauncher.java"

# interfaces
.implements Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterOrExitSmallWindow(Z)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->clearTopActivity()V

    .line 12
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getFreeformAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    :cond_0
    return-void
.end method
