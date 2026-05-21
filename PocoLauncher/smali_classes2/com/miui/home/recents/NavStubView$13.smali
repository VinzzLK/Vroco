.class Lcom/miui/home/recents/NavStubView$13;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->getHalfAppToHalfAppListener(II)Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$finalRunningTaskIndex:I

.field final synthetic val$finalTaskIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;II)V
    .locals 0

    .line 5727
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$13;->val$finalTaskIndex:I

    iput p3, p0, Lcom/miui/home/recents/NavStubView$13;->val$finalRunningTaskIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 5737
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$4702(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 5738
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->resetQuickSwitchStatus()V

    .line 5739
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->stopForbidGesture()V

    .line 5740
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->stopForbidLaunchSplit()V

    .line 5741
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)V

    .line 5742
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "performHalfAppToHalfApp, onAnimationCancel"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 5731
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$4702(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 5732
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->access$4802(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method

.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 4

    .line 5747
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4700(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5750
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4900(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    iget v1, p0, Lcom/miui/home/recents/NavStubView$13;->val$finalTaskIndex:I

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 5751
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1

    .line 5752
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTopPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v2, "quickSwitchAnimEnd"

    const-string v3, "gesture"

    .line 5751
    invoke-static {v1, v2, v3, p1}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5753
    iget p1, p0, Lcom/miui/home/recents/NavStubView$13;->val$finalTaskIndex:I

    iget v1, p0, Lcom/miui/home/recents/NavStubView$13;->val$finalRunningTaskIndex:I

    if-ne p1, v1, :cond_3

    .line 5754
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 5755
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5000(Lcom/miui/home/recents/NavStubView;Ljava/lang/Runnable;)V

    .line 5756
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Lcom/miui/home/recents/NavStubView;->mResumeLastTaskRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5757
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->stopForbidGesture()V

    .line 5758
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->stopForbidLaunchSplit()V

    .line 5759
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)V

    .line 5760
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/NavStubView;->access$5500(Lcom/miui/home/recents/NavStubView;Z)V

    .line 5761
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-boolean v2, p1, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    goto :goto_4

    .line 5763
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->postStartHalfNewTaskRunnable()V

    .line 5764
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$600(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    .line 5765
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5300(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "landscape"

    goto :goto_2

    :cond_4
    const-string v0, "portrait"

    .line 5766
    :goto_2
    iget v1, p0, Lcom/miui/home/recents/NavStubView$13;->val$finalTaskIndex:I

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2500(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    if-le v1, v2, :cond_5

    const-string v1, "right"

    goto :goto_3

    :cond_5
    const-string v1, "left"

    .line 5764
    :goto_3
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendQuickSwitchEvent(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5768
    :goto_4
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5600(Lcom/miui/home/recents/NavStubView;)V

    .line 5769
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$13;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->resetQuickSwitchStatus()V

    return-void
.end method
