.class public Lcom/miui/home/launcher/util/UiThreadHelper;
.super Ljava/lang/Object;
.source "UiThreadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/UiThreadHelper$UiCallbacks;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public static getBackgroundLooper()Landroid/os/Looper;
    .locals 3

    .line 40
    sget-object v0, Lcom/miui/home/launcher/util/UiThreadHelper;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, -0x2

    const-string v2, "UiThreadHelper"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/util/UiThreadHelper;->sHandlerThread:Landroid/os/HandlerThread;

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/util/UiThreadHelper;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getHandler(Landroid/content/Context;)Landroid/os/Handler;
    .locals 3

    .line 49
    sget-object v0, Lcom/miui/home/launcher/util/UiThreadHelper;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/util/UiThreadHelper$UiCallbacks;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/util/UiThreadHelper$UiCallbacks;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/miui/home/launcher/util/UiThreadHelper;->sHandler:Landroid/os/Handler;

    .line 53
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/util/UiThreadHelper;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static setOrientationAsync(Landroid/app/Activity;I)V
    .locals 3

    .line 57
    invoke-static {p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
