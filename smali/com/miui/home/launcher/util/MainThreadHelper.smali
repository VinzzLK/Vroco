.class public Lcom/miui/home/launcher/util/MainThreadHelper;
.super Ljava/lang/Object;
.source "MainThreadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/MainThreadHelper$UiCallbacks;
    }
.end annotation


# static fields
.field private static volatile mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandler(Landroid/content/Context;)Landroid/os/Handler;
    .locals 4

    .line 19
    sget-object v0, Lcom/miui/home/launcher/util/MainThreadHelper;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/miui/home/launcher/util/MainThreadHelper;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/util/MainThreadHelper;->mainHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/util/MainThreadHelper$UiCallbacks;

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/util/MainThreadHelper$UiCallbacks;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/miui/home/launcher/util/MainThreadHelper;->mainHandler:Landroid/os/Handler;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/home/launcher/util/MainThreadHelper;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 1

    .line 31
    invoke-static {p0}, Lcom/miui/home/launcher/util/MainThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static sendAsyncRunnable(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/util/MainThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 43
    invoke-static {p0}, Lcom/miui/home/launcher/util/MainThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static showKeyboardAsync(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/miui/home/launcher/util/MainThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
