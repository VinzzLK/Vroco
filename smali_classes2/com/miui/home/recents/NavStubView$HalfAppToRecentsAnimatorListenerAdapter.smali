.class Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;
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
    name = "HalfAppToRecentsAnimatorListenerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public static synthetic $r8$lambda$gYBIurtK36RtWbGzIZ2GMn2B8uQ(Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->lambda$onSurfaceEnd$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 5121
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSurfaceEnd$0()V
    .locals 4

    .line 5127
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5128
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 5130
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 5131
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView;->mHalfAppEnterRecentsRunnale:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5132
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/recents/NavStubView;->access$4102(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 5125
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToRecents(Z)V

    .line 5126
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 5134
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot(Z)Landroid/graphics/Bitmap;

    .line 5135
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5136
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5137
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    .line 5139
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$4500(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method
