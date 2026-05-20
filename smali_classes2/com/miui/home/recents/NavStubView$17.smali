.class Lcom/miui/home/recents/NavStubView$17;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->getStartFirstTaskListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 6019
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 6023
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "getStartFirstTaskListener onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6024
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    .line 6025
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    sget-object v1, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-static {p1, v1}, Lcom/miui/home/recents/NavStubView;->access$6400(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 6027
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 6029
    invoke-virtual {p1, v0, v1, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZ)V

    .line 6030
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6500(Lcom/miui/home/recents/NavStubView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->addOnStopCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6033
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "start first task failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6034
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    :cond_0
    :goto_0
    return-void
.end method
