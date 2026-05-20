.class Lcom/miui/home/recents/views/RecentsContainer$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->doClearAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "RecentsContainer"

    const-string v1, "doClearAnim:onAnimationCancel"

    .line 631
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer$7;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string p1, "RecentsContainer"

    const-string v0, "doClearAnim:onAnimationEnd"

    .line 620
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    sget-object p1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x10e

    const/4 v2, 0x0

    .line 622
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    .line 623
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome()V

    .line 624
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsContainer;->access$000(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/CircleAndTickAnimView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 625
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsContainer;->access$900(Lcom/miui/home/recents/views/RecentsContainer;)V

    .line 626
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$802(Lcom/miui/home/recents/views/RecentsContainer;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const-string p1, "RecentsContainer"

    const-string v0, "doClearAnim:onAnimationStart"

    .line 612
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget-object p1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x10e

    const/4 v2, 0x1

    .line 614
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    .line 615
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$802(Lcom/miui/home/recents/views/RecentsContainer;Z)Z

    return-void
.end method
