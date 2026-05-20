.class Lcom/miui/home/recents/NavStubView$12;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->getAppToAppListener(II)Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCanceled:Z

.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$finalIndex:I

.field final synthetic val$runningIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;II)V
    .locals 0

    .line 5564
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$12;->val$finalIndex:I

    iput p3, p0, Lcom/miui/home/recents/NavStubView$12;->val$runningIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5566
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$12;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 5586
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "mAppToAppAnim onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 5587
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$12;->isCanceled:Z

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 4

    .line 5569
    sget-object p1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x13a

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    const-wide/16 v0, 0x10b

    const/4 v3, 0x1

    .line 5571
    invoke-virtual {p1, v0, v1, v3}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    .line 5575
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/NavStubView;->access$4702(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 5577
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0, v3}, Lcom/miui/home/recents/NavStubView;->access$4802(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 5578
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5580
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    :cond_0
    return-void
.end method

.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 4

    .line 5592
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAppToAppAnim onAnimationEnd finalIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/NavStubView$12;->val$finalIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "runningIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/NavStubView$12;->val$runningIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4900(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    iget v1, p0, Lcom/miui/home/recents/NavStubView$12;->val$finalIndex:I

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 5594
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    .line 5595
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTopPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v2, "quickSwitchAnimEnd"

    const-string v3, "gesture"

    .line 5594
    invoke-static {v1, v2, v3, p1}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5596
    iget p1, p0, Lcom/miui/home/recents/NavStubView$12;->val$finalIndex:I

    iget v1, p0, Lcom/miui/home/recents/NavStubView$12;->val$runningIndex:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$12;->isCanceled:Z

    if-eqz p1, :cond_2

    goto :goto_4

    .line 5605
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setQuickSwitchApp(Z)V

    .line 5606
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->startNewTask()V

    .line 5607
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$600(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    .line 5608
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5300(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "landscape"

    goto :goto_2

    :cond_3
    const-string v0, "portrait"

    .line 5609
    :goto_2
    iget v1, p0, Lcom/miui/home/recents/NavStubView$12;->val$finalIndex:I

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$2500(Lcom/miui/home/recents/NavStubView;)I

    move-result v3

    if-le v1, v3, :cond_4

    const-string v1, "right"

    goto :goto_3

    :cond_4
    const-string v1, "left"

    .line 5607
    :goto_3
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendQuickSwitchEvent(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5610
    sget-object p1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x10b

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    goto :goto_5

    .line 5597
    :cond_5
    :goto_4
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 5598
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5000(Lcom/miui/home/recents/NavStubView;Ljava/lang/Runnable;)V

    .line 5599
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Lcom/miui/home/recents/NavStubView;->mResumeLastTaskRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5600
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    .line 5601
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5100(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5602
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5200(Lcom/miui/home/recents/NavStubView;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/TaskViewUtils;->showDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 5615
    :cond_6
    :goto_5
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$5400(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method
