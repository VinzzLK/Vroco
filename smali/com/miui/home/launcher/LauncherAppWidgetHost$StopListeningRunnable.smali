.class Lcom/miui/home/launcher/LauncherAppWidgetHost$StopListeningRunnable;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherAppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopListeningRunnable"
.end annotation


# instance fields
.field private final mHostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherAppWidgetHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherAppWidgetHost;",
            ">;)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$StopListeningRunnable;->mHostView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 239
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$StopListeningRunnable;->mHostView:Ljava/lang/ref/WeakReference;

    const-string v0, "LauncherAppWidgetHost"

    if-nez p0, :cond_0

    const-string p0, "StopListeningRunnable"

    .line 240
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;

    if-nez p0, :cond_1

    const-string p0, "launcherAppWidgetHost == null"

    .line 245
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopListening:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mIsAppWidgetHostStartedListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mIsAppWidgetHostStartedListening:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mIsAppWidgetHostStartedListening:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v3, "stopListening error"

    .line 253
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    :goto_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mIsAppWidgetHostStartedListening:Z

    .line 256
    throw v0

    :cond_2
    :goto_2
    return-void
.end method
