.class public final Lcom/miui/home/recents/ScreenPinnedHelper$mPinSettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "ScreenPinnedHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/ScreenPinnedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 27
    sget-object p0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isScreenPinningEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/ScreenPinnedHelper;->setPinEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/recents/ScreenPinnedHelper;->isPinEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/ScreenPinnedHelper;->stopScreenPinning(Z)V

    :cond_0
    return-void
.end method
