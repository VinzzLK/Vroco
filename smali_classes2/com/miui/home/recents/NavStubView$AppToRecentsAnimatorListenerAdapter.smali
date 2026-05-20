.class Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppToRecentsAnimatorListenerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public static synthetic $r8$lambda$UeBQzGcdiEU9Sxz0rr5p5T7Ktn0(Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->lambda$onAnimationCancel$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$y93x98Rgh3xkKwEt_5NNmqdwH2s(Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->lambda$onSurfaceEnd$1()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 5053
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationCancel$0()V
    .locals 1

    .line 5069
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->setPipAnimationTypeToAlpha()V

    .line 5070
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4300(Lcom/miui/home/recents/NavStubView;)V

    .line 5071
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/recents/NavStubView;->access$4102(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/views/TaskView;

    return-void
.end method

.method private synthetic lambda$onSurfaceEnd$1()V
    .locals 1

    .line 5079
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4300(Lcom/miui/home/recents/NavStubView;)V

    .line 5080
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/recents/NavStubView;->access$4102(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 5068
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 5057
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$3800(Lcom/miui/home/recents/NavStubView;Z)V

    const-string p1, "MHWAnimation#  AppToRecentsAnimFromGesture  # AppToRecentsAnimatorListenerAdapter:NavStubView"

    .line 5058
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 5059
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToRecents(Z)V

    .line 5060
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5062
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    :cond_0
    return-void
.end method

.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 5077
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToRecents(Z)V

    .line 5078
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 5083
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot(Z)Landroid/graphics/Bitmap;

    .line 5084
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$4200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5086
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method
