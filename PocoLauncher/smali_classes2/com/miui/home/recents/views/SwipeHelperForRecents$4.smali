.class Lcom/miui/home/recents/views/SwipeHelperForRecents$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/SwipeHelperForRecents;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 435
    sget-object p1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x10d

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    .line 437
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "SwipeHelperForRecents"

    const-string v0, "cancel dismiss anim, set to anim end state"

    .line 438
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iget-object p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$200(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 444
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$100(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->onChildDismissedEnd(Landroid/view/View;)V

    .line 445
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$endAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 446
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 448
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$300(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 449
    iget-object p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 427
    sget-object p1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x13b

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    const-wide/16 v0, 0x10d

    const/4 v2, 0x1

    .line 429
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    .line 431
    iget-object p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$100(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->onChildDismissedStart()V

    return-void
.end method
