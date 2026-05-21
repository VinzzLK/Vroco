.class Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;
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
    name = "WidgetHostInitRunnable"
.end annotation


# instance fields
.field private final mFinishCallbackReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceInit:Z

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
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherAppWidgetHost;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Runnable;",
            ">;Z)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;->mHostView:Ljava/lang/ref/WeakReference;

    .line 269
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;->mFinishCallbackReference:Ljava/lang/ref/WeakReference;

    .line 270
    iput-boolean p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;->mForceInit:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;->mHostView:Ljava/lang/ref/WeakReference;

    const-string v1, "LauncherAppWidgetHost"

    if-nez v0, :cond_0

    const-string p0, "mHostView == null"

    .line 276
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetHost;

    if-nez v0, :cond_1

    const-string p0, "launcherAppWidgetHost == null"

    .line 282
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 285
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsAppWidgetHostStartedListening:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mIsAppWidgetHostStartedListening:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "mForceInit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;->mForceInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "id :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mHostId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-boolean v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mIsAppWidgetHostStartedListening:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;->mForceInit:Z

    if-eqz v2, :cond_4

    .line 289
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startListening"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mHostId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mResetHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->access$000(Lcom/miui/home/launcher/LauncherAppWidgetHost;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->access$000(Lcom/miui/home/launcher/LauncherAppWidgetHost;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 294
    :cond_3
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    const/4 v2, 0x1

    .line 295
    iput-boolean v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mIsAppWidgetHostStartedListening:Z

    .line 296
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;->mFinishCallbackReference:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    .line 297
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_4

    .line 299
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    .line 303
    iput-boolean v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mIsAppWidgetHostStartedListening:Z

    const-string/jumbo v0, "startListening error"

    .line 304
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-void
.end method
