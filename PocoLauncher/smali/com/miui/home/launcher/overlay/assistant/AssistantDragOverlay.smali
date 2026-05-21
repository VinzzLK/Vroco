.class public Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;
.super Ljava/lang/Object;
.source "AssistantDragOverlay.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;,
        Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;
    }
.end annotation


# instance fields
.field private mAddingView:Landroid/view/View;

.field private mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field private mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private volatile mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mPickerDragToAssistantSupported:Z

.field private mUIExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field protected mWasOverlayAttached:Z

.field private mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

.field private mWorkSpace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public static synthetic $r8$lambda$-7JekWQvn5tipPtazDAZFVLx-Aw(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$tryStartAddAnimator$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$0jaNyN9pnLx8H3osPKcICgxaVzo(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$16Q40AVL3gHildx432Pjfc1ErOE(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->getDropLocation()V

    return-void
.end method

.method public static synthetic $r8$lambda$GZt5JLtM7RkmuPHCHjjqwFUHNSM(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$8(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H8EchHs2bleaWIkBUA7u5Qneqcg(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onPickerAddWidget$18(Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$InyiPZbsWlnDp-qqH8N9-o3PgXY(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$6(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MQtwt0oiUN4yCbKbAqcEfx39bLA(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->cancelDrag()V

    return-void
.end method

.method public static synthetic $r8$lambda$NxpQJI01J-BckEq7hF04QamhwWg(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$15(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sd9ueFumpVk9iUfuggjgNtFOgHg(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$17(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ThekyeK7TB64eJAxWR2-il-Pv6A(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$4(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XS4D958NgXHOi8Vvp4soaZs1iFM(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$12(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZV_nYQISLkHwe1V7fRucBxkxIdI(Ljava/util/function/Consumer;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$runOnMainThread$20(Ljava/util/function/Consumer;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZW8NKJdS8Ve8L2A8fJralLg4XqQ(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$5(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_I620yNKzvMkYXhDnHzsqnQnyTg(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$updateOverlayState$0(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aQgNiq2uBxomORhRd-Z3UJ3icWM(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$16(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nK9f31qqNJDil6OsUvXJ1mf06DI(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$p9uVa0gRkz7IM-FBcf-bs7FWOq4(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$9(Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pLjeP7jXxROx--AUZmmb4xKua2c(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$2()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rS-7V3hkkPjvEMpvDIaFljgybl0(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$sb6JrdYL738X6H29Y4X_ahUWtVs(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$updateOverlayState$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wkN7qW9XdkpY9Yub3PLTW1TpHus(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$3(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wtspAJV6Cg4JOCnlxgd8xya28xU(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$7(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z48JHGFwRkPmNSeLB4nm8SusaPM(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$10(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWasOverlayAttached:Z

    .line 97
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 98
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 99
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    .line 100
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 101
    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    .line 102
    new-instance p1, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mUIExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 103
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->cancelDrag()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)Landroid/view/MotionEvent;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/DragLayer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/DragController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onDragComplete(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method private addWidgetToScreen(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace;J)V
    .locals 9

    .line 597
    iput-wide p3, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 598
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x1

    .line 599
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 600
    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v1, p1}, Lcom/miui/home/launcher/DragController;->createDrawableHolder(Landroid/graphics/drawable/Drawable;IILcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 601
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 603
    new-instance v5, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;

    const-string v3, "picker"

    invoke-direct {v5, p0, v3, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    .line 616
    iput-wide p3, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 617
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v3

    new-array v4, v2, [Landroid/view/View;

    aput-object v0, v4, v1

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V

    return-void
.end method

.method private blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 813
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 814
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 815
    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 817
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private cancelDrag()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setDraggingFromAssistant(Z)V

    .line 501
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    const/4 v0, 0x0

    .line 502
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method private getDropLocation()V
    .locals 10

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDropLocation: mPaItemInfo == null = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistantDragOverlay"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->setEmptyResult()V

    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 669
    iget-object v4, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    .line 670
    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 671
    invoke-virtual {v4}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v6

    iget v7, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v8, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v4, v6, v7, v8}, Lcom/miui/home/launcher/Workspace;->isScreenHasValidArea(III)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDropLocation: currentCellScreen  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v5}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 676
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDropLocation screenId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-wide v5, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v4, v5, v6}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "getDropLocation cellLayout = is null setEmptyResult"

    .line 679
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->setEmptyResult()V

    return-void

    .line 684
    :cond_3
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getCellBackground()Landroid/view/View;

    move-result-object v4

    .line 685
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    new-array v6, v6, [I

    .line 687
    invoke-virtual {v4, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v7, v6, v3

    if-nez v7, :cond_4

    aget v7, v6, v2

    if-nez v7, :cond_4

    const-string v0, "getDropLocation: invalid bgLocationOnScreen"

    .line 690
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->setEmptyResult()V

    return-void

    :cond_4
    aget v3, v6, v3

    sub-int/2addr v3, v5

    int-to-float v7, v3

    .line 696
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    aget v2, v6, v2

    sub-int/2addr v2, v5

    int-to-float v5, v2

    .line 698
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    mul-float/2addr v4, v0

    add-float/2addr v5, v4

    float-to-int v0, v5

    .line 699
    iget-object v4, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    if-eqz v4, :cond_5

    .line 700
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v2, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragComplete: rect = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;->setAnimationRect(Landroid/graphics/Rect;)V

    .line 704
    :cond_5
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenTransitionType(I)I

    return-void
.end method

.method private synthetic lambda$onOverlayCall$2()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$onOverlayCall$3(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 0

    .line 263
    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onOverlayCall$4(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Landroid/os/Bundle;)V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda22;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda22;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 264
    invoke-static {p1, p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->deleteFiles(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Z)V

    return-void
.end method

.method private synthetic lambda$onOverlayCall$5(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    const-string v1, "drop_result"

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 299
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p0

    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 301
    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onOverlayCall$6(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onPickerAddWidget(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private synthetic lambda$onOverlayCall$7(Landroid/os/Bundle;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const-string v1, "AssistantDragOverlay"

    if-eqz v0, :cond_0

    const-string v0, "onOverlayCall: METHOD_DRAG_END_PREPARE deliver dragLayer touch event"

    .line 323
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SuperDraglayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    const-string p0, "onOverlayCall: METHOD_DRAG_END_PREPARE mDragLayer is null"

    .line 326
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onOverlayCall$8(Landroid/os/Bundle;)V
    .locals 0

    .line 333
    invoke-static {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->getMaMls(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onOverlayInvoke$10(Landroid/os/Bundle;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SuperDraglayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private synthetic lambda$onOverlayInvoke$11()V
    .locals 1

    const/4 v0, 0x1

    .line 382
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->startAddAnimator(Z)V

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    .line 384
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method private synthetic lambda$onOverlayInvoke$12(Z)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_1

    const-string v0, "AssistantDragOverlay"

    const-string v1, "METHOD_DRAG_PREPARE"

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->setDraggingFromAssistant(Z)V

    .line 396
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->hideOverlay(I)V

    .line 398
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 399
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object p0

    .line 400
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->clearForceFadeOut()V

    const/4 p1, 0x0

    .line 405
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$onOverlayInvoke$13()V
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->cancelDrag()V

    return-void
.end method

.method private synthetic lambda$onOverlayInvoke$14()V
    .locals 1

    .line 416
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    return-void
.end method

.method private synthetic lambda$onOverlayInvoke$15(Landroid/os/Bundle;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SuperDraglayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private synthetic lambda$onOverlayInvoke$16(Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "transfer_start_activity_intent"

    .line 426
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v1, "transfer_start_activity_widget_id"

    const/4 v2, -0x1

    .line 427
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 430
    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 431
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 434
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 438
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 439
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v4, :cond_0

    .line 440
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 442
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    :cond_0
    if-lez v2, :cond_1

    if-ne v2, p1, :cond_1

    .line 447
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->setPendingStartAppPackage(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getOptions()Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const/4 p1, 0x0

    const-string v2, "extra_is_clear_cache_agent"

    .line 453
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 455
    :cond_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 457
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onOverlayInvoke$17(Landroid/os/Bundle;)V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->replaceWidget(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onOverlayInvoke$9(Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onDragStart(Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onPickerAddWidget$18(Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 590
    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->refreshScrollBound()Z

    .line 591
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Workspace;->updateCurrentIndex(I)V

    .line 592
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    invoke-direct {p0, p3, p1, v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->addWidgetToScreen(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace;J)V

    return-void
.end method

.method private static synthetic lambda$runOnMainThread$20(Ljava/util/function/Consumer;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 801
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 802
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic lambda$tryStartAddAnimator$19()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView;->setScreenTransitionType(I)I

    const/4 v0, 0x0

    .line 734
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->startAddAnimator(Z)V

    const/4 v0, 0x0

    .line 735
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    .line 736
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 737
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    return-void
.end method

.method private synthetic lambda$updateOverlayState$0(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string/jumbo p1, "support_picker_drop_target_switch"

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "picker_drop_target_switch_support"

    .line 179
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateOverlayState$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 181
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPickerDragToAssistantSupported:Z

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->updateOverlayState(Z)V

    return-void
.end method

.method private mockMoveEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;
    .locals 19

    const-string v0, "drag_event"

    move-object/from16 v1, p1

    .line 782
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 784
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    add-long v7, v1, v3

    .line 786
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v10, v1, v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float v11, v1, v2

    .line 787
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v12

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSize()F

    move-result v13

    .line 788
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v15

    .line 789
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    const/4 v9, 0x2

    .line 784
    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;
    .locals 0

    const-string p0, "drag_event"

    .line 777
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/view/MotionEvent;

    .line 778
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method private onDragComplete(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 625
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragComplete screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AssistantDragOverlay"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->getCellChild(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 630
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    if-eqz p0, :cond_1

    .line 631
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;->setAnimationRect(Landroid/graphics/Rect;)V

    :cond_1
    return-void

    .line 636
    :cond_2
    instance-of v2, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v2, :cond_3

    .line 637
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    const v2, 0x7f0a0425

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 639
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v2, v1

    int-to-float v3, v1

    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v4, v2

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    mul-float/2addr p1, v0

    add-float/2addr v4, p1

    float-to-int p1, v4

    .line 646
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    if-eqz v0, :cond_4

    .line 647
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;->setAnimationRect(Landroid/graphics/Rect;)V

    .line 649
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenTransitionType(I)I

    return-void
.end method

.method private onDragStart(Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 513
    :cond_0
    monitor-enter p0

    .line 514
    :try_start_0
    iput-object v0, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    const-string v2, "AssistantDragOverlay"

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v2, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {v7, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/DragLayer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 517
    iget-object v2, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {v7, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mockMoveEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/SuperDraglayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-string v2, "drag_source"

    .line 519
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 521
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const-string v3, "preview_left"

    .line 522
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v3, "preview_top"

    .line 523
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v3, "preview_width"

    .line 524
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "preview_height"

    .line 525
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v3, v12

    add-int/2addr v1, v13

    .line 526
    invoke-virtual {v15, v12, v13, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 527
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 528
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 529
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const-string v3, "picker"

    .line 530
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 532
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 531
    invoke-virtual {v15, v2, v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 535
    :cond_1
    new-instance v16, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;

    iget-boolean v1, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPickerDragToAssistantSupported:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/String;ZLcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    .line 554
    iget-object v1, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v9, v15

    move-object/from16 v11, p1

    move-object v0, v14

    move v14, v1

    move-object v1, v15

    move-object/from16 v15, v16

    move/from16 v16, v2

    invoke-virtual/range {v8 .. v16}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/drawable/Drawable;ZLcom/miui/home/launcher/ItemInfo;IIFLcom/miui/home/launcher/DragSource;I)Z

    .line 556
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 557
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    const-string v1, "AssistantDragOverlay"

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragStart failure itemInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onPickerAddWidget(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 573
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 575
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCurrentValidDropScreen(II)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 577
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->addWidgetToScreen(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace;J)V

    return-void

    .line 581
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 582
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->isScreenHasValidArea(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->updateCurrentIndex(I)V

    .line 584
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->addWidgetToScreen(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace;J)V

    return-void

    .line 588
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    .line 589
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v3, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda13;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/launcher/Launcher;->insertNewScreen(ILjava/lang/Runnable;)V

    return-void
.end method

.method private runOnMainThread(Ljava/util/function/Consumer;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 800
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mUIExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda16;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 804
    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 806
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setEmptyResult()V
    .locals 2

    .line 708
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    if-eqz p0, :cond_0

    .line 709
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;->setAnimationRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private startAddAnimator(Z)V
    .locals 4

    .line 747
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 750
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAddAnimator screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AssistantDragOverlay"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 754
    new-instance v2, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    invoke-direct {v2}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;-><init>()V

    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    invoke-virtual {v2, v0, p0, p1}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->start(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryStartAddAnimator()V
    .locals 5

    .line 718
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryStartAddAnimator screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AssistantDragOverlay"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    iget-wide v3, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 725
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->getCellChild(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    if-nez v0, :cond_2

    const-string p0, "run: tryStartAddAnimator mAddingView is null! "

    .line 727
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateOverlayState()V
    .locals 2

    .line 177
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda21;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda17;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCellChild(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;
    .locals 3

    const/4 p0, 0x0

    .line 761
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 762
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    if-ne v1, p2, :cond_0

    return-object v0

    .line 767
    :cond_0
    instance-of v2, v1, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;

    if-eqz v2, :cond_1

    instance-of v2, p2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;

    if-eqz v2, :cond_1

    .line 768
    check-cast v1, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    move-object v2, p2

    check-cast v2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->getAppWidgetId()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    const-string p2, "drag_widget_drop_location"

    .line 192
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "AssistantDragOverlay"

    const-string p2, "onOverlayCall: METHOD_DRAG_WIDGET_DROP_LOCATION"

    .line 193
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    .line 196
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :catchall_0
    move-exception p1

    .line 197
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const-string p2, "drag_end_with_result"

    .line 204
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_b

    .line 208
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-nez p1, :cond_2

    const-string p1, "AssistantDragOverlay"

    const-string p2, "METHOD_DRAG_END_WITH_RESULT mPaItemInfo is null"

    .line 209
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda15;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 216
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "drag_event"

    .line 217
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/view/MotionEvent;

    const/4 v2, -0x1

    if-eqz p2, :cond_a

    .line 219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eq p2, v1, :cond_3

    goto/16 :goto_2

    .line 226
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    invoke-direct {p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    .line 227
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;

    invoke-direct {v1, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 246
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    const-string p3, "AssistantDragOverlay"

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOverlayCall: METHOD_DRAG_END_WITH_RESULT: blockRunOnBackground added = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  , mDropTask = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 248
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 249
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of p2, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz p2, :cond_4

    const-string p2, "drop_result"

    .line 250
    iget-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 251
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of p2, p2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p2, :cond_5

    const-string p2, "drop_result"

    .line 252
    iget-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 253
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of p2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p2, :cond_7

    .line 257
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 258
    iget-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget p3, p3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ltz p3, :cond_6

    const-string p3, "drop_result"

    .line 259
    iget p2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string p3, "drop_result"

    .line 261
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    new-instance p3, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda19;

    invoke-direct {p3, p0, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda19;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->runOnMainThread(Ljava/util/function/Consumer;)Landroid/os/Bundle;

    goto :goto_0

    .line 268
    :cond_7
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of p2, p2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz p2, :cond_8

    const-string p2, "drop_result"

    .line 269
    iget-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p3, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iget p3, p3, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->widgetId:I

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    const-string p2, "AssistantDragOverlay"

    const-string/jumbo p3, "unknown item type"

    .line 271
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "drop_result"

    .line 272
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->tryStartAddAnimator()V

    goto :goto_1

    :cond_9
    const-string p2, "AssistantDragOverlay"

    const-string/jumbo p3, "widget drag added fail"

    .line 277
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "drop_result"

    .line 278
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 280
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    :goto_1
    return-object p1

    :cond_a
    :goto_2
    const-string p2, "AssistantDragOverlay"

    const-string p3, "motion event isn\'t ACTION_UP"

    .line 220
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "drop_result"

    .line 221
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p3, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object p1

    :cond_b
    const-string p2, "dragging_with_result"

    .line 288
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 289
    monitor-enter p0

    .line 290
    :try_start_2
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-nez p1, :cond_c

    const-string p1, "AssistantDragOverlay"

    const-string p2, "METHOD_DRAGGING_WITH_RESULT mPaItemInfo is null"

    .line 291
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit p0

    return-object v0

    .line 294
    :cond_c
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda18;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->runOnMainThread(Ljava/util/function/Consumer;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    .line 294
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_d
    const-string p2, "prepare_add_widget"

    .line 309
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 310
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2, p3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createItemInfo(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 312
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    .line 313
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p3, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda11;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_e
    const-string p2, "drag_end_prepare"

    .line 318
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p1, "AssistantDragOverlay"

    const-string p2, "onOverlayCall: METHOD_DRAG_END_PREPARE"

    .line 319
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    .line 321
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda9;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-static {p1, p2}, Lcom/miui/home/launcher/util/MainThreadHelper;->sendAsyncRunnable(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 329
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_f
    const-string p2, "get_maml_list"

    .line 332
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 333
    sget-object p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda20;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda20;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->runOnMainThread(Ljava/util/function/Consumer;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_10
    const-string/jumbo p0, "support_picker_drop_target_switch"

    .line 336
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 337
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "picker_drop_target_switch_support"

    .line 338
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :cond_11
    const-string/jumbo p0, "support_picker_continue_add"

    .line 342
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 343
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "picker_continue_add_support"

    .line 344
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :cond_12
    return-object v0
.end method

.method public onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "AssistantDragOverlay"

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOverlayInvoke: method = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "deliver_picker_motion_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p2, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "notify_maml_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 p2, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "pa_cold_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 p2, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "transfer_start_activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 p2, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "drag_cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 p2, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "edit_mode_change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 p2, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "replace_widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 p2, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "open_classic_picker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 p2, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "scroll_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 p2, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "drag_prepare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p2, 0x7

    goto :goto_0

    :sswitch_a
    const-string v0, "drag_pointer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 p2, 0x6

    goto :goto_0

    :sswitch_b
    const-string v0, "scroll_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 p2, 0x5

    goto :goto_0

    :sswitch_c
    const-string v0, "dragging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 p2, 0x4

    goto :goto_0

    :sswitch_d
    const-string v0, "drag_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    move p2, v1

    goto :goto_0

    :sswitch_e
    const-string v0, "drag_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_f
    const-string v0, "pa_scroll_blur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    move p2, v2

    goto :goto_0

    :sswitch_10
    const-string v0, "add_widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    move p2, v3

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "picker_motion_event"

    .line 465
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    if-nez p1, :cond_12

    return-void

    .line 469
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_13

    .line 470
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->setCanDragToAssistant(Z)V

    goto :goto_1

    .line 471
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eq p2, v2, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_15

    .line 472
    :cond_14
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->setCanDragToAssistant(Z)V

    .line 474
    :cond_15
    :goto_1
    sget-object p2, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->deliverTouchEvent(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 462
    :pswitch_1
    invoke-static {p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->upgradeMaMls(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 486
    :pswitch_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantColdStartMessage;

    const-string p2, "cold_start_optimize"

    invoke-virtual {p3, p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantColdStartMessage;-><init>(Z)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 425
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 413
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 477
    :pswitch_5
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string/jumbo p1, "state_open"

    invoke-virtual {p3, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeMIUIWidgetEditMode(Z)V

    goto/16 :goto_2

    .line 480
    :pswitch_6
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 416
    :pswitch_7
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 492
    :pswitch_8
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setScrollingInAssistant(Z)V

    goto :goto_2

    :pswitch_9
    const-string p1, "assistant_enable"

    .line 391
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 392
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p3, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda14;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Z)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 422
    :pswitch_a
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 489
    :pswitch_b
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->setScrollingInAssistant(Z)V

    goto :goto_2

    .line 370
    :pswitch_c
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda10;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 361
    :pswitch_d
    monitor-enter p0

    .line 362
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, p3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createItemInfo(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    move-result-object p1

    .line 363
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda12;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 483
    :pswitch_e
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string p1, "scroll_blur"

    invoke-virtual {p3, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setPAScrollBlur(I)V

    goto :goto_2

    :pswitch_f
    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    .line 381
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f03e85e -> :sswitch_10
        -0x7951bab5 -> :sswitch_f
        -0x3f3b6269 -> :sswitch_e
        -0x3225d4b0 -> :sswitch_d
        -0x322222b1 -> :sswitch_c
        -0x1799ff90 -> :sswitch_b
        -0x4b861ce -> :sswitch_a
        0x2e6cfc -> :sswitch_9
        0x3f87069 -> :sswitch_8
        0x29920f70 -> :sswitch_7
        0x3141f22f -> :sswitch_6
        0x32965717 -> :sswitch_5
        0x3b7b7be5 -> :sswitch_4
        0x3db5b120 -> :sswitch_3
        0x6c28f255 -> :sswitch_2
        0x6f6cb05f -> :sswitch_1
        0x79cd3ec8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOverlayScrollEnd(F)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 166
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onOverlayAnimResume()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onOverlayAnimPause()V

    :goto_0
    return-void
.end method

.method public onOverlayUpdate(II)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->updateOverlayState()V

    return-void
.end method

.method public onServiceStateChanged(Z)V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWasOverlayAttached:Z

    if-eq p1, v0, :cond_0

    .line 155
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWasOverlayAttached:Z

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onServiceStateChanged(Z)V

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->updateOverlayState()V

    return-void
.end method

.method public setDragCallback(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    return-void
.end method
