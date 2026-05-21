.class public Lcom/miui/home/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;
.implements Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

.field private mHomeIntent:Landroid/content/Intent;

.field private mInOverviewState:Z

.field private mIsInSplitSelectState:Z

.field private mIsMultiScreenChangeAnimRunning:Z

.field private mMultiScreenChangeAnimTimeOutRunnable:Ljava/lang/Runnable;

.field private mMultiWindowChangedRunnable:Ljava/lang/Runnable;

.field private mRunningTaskId:I

.field private mSplitHiddenTaskViewIndex:I

.field private mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

.field private final mSplitToast:Landroid/widget/Toast;

.field private final mSplitUnsupportedToast:Landroid/widget/Toast;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

.field private mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

.field private mVisualRotationSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-tXNSZ7aq75uVB46zR95vbdSkvI(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->lambda$updateTaskStackViewBounds$1(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gKlzt2wVMy8L_lnQQfoa4xP-FA8(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->lambda$updateTaskStackViewBounds$3(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vLhy6XahY4SW3s0n72g1hm9uh2k(Lcom/miui/home/recents/views/RecentsView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->lambda$onRecentsVisibleBoundChangedWithAnim$0(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zXPNwJOAHOW5I6IXN3IQD_yyYQA(Lcom/miui/home/recents/views/RecentsView;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsView;->lambda$updateTaskStackViewBounds$2(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 97
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsView;->mIsMultiScreenChangeAnimRunning:Z

    const/4 p3, 0x1

    .line 98
    iput-boolean p3, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 100
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    const/4 p4, -0x1

    .line 103
    iput p4, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiWindowChangedRunnable:Ljava/lang/Runnable;

    .line 773
    iput-boolean p3, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    .line 858
    iput p4, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    .line 890
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f100514

    invoke-static {p3, p4, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitToast:Landroid/widget/Toast;

    .line 892
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f100513

    invoke-static {p3, p4, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 1000
    new-instance p3, Lcom/miui/home/recents/views/RecentsView$1;

    invoke-direct {p3, p0}, Lcom/miui/home/recents/views/RecentsView$1;-><init>(Lcom/miui/home/recents/views/RecentsView;)V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiScreenChangeAnimTimeOutRunnable:Ljava/lang/Runnable;

    .line 124
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d015a

    .line 127
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    .line 132
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 134
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mHomeIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/RecentsView;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setIsMultiScreenChangeAnimRunning(Z)V

    return-void
.end method

.method private alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 8

    if-eqz p1, :cond_2

    .line 810
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 811
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 814
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v0

    .line 815
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 816
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 817
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 818
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    if-eq p1, v4, :cond_1

    .line 820
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    .line 821
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v6, p4

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 822
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 823
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 824
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 825
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 826
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 827
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 828
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 829
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private isLandscapeVisually()Z
    .locals 2

    .line 623
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    return p0

    .line 627
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedShowEmptyView()Z
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 979
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedSkipStartPairTask(Lcom/miui/home/recents/views/TaskView;)Z
    .locals 2

    .line 525
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 526
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isCurrentDisplayInLandscape()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private isSplitSelectTaskInSmallWindowState(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isInSplitSelectState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 378
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 379
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    const-string v3, "RecentsView"

    if-nez v2, :cond_2

    const-string p0, "isSplitSelectTaskInSmallWindowState: mSplitSelectStateController is null, return"

    .line 380
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "isSplitSelectTaskInSmallWindowState: smallWindowInfo is null"

    .line 384
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_3
    invoke-virtual {v2}, Lcom/miui/home/recents/util/SplitSelectStateController;->getInitialTaskPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    .line 388
    invoke-virtual {v2}, Lcom/miui/home/recents/util/SplitSelectStateController;->getInitialTaskUserId()I

    move-result v2

    iget v0, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    if-ne v2, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method private isSplitTaskInSmallWindowState(Ljava/util/List;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 340
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    return v1

    .line 348
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    .line 349
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "RecentsView"

    const-string v2, "isSplitTaskInSmallWindowState: task is null"

    .line 351
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 358
    :cond_4
    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 359
    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 360
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 362
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 363
    iget-object v6, v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    if-ne p1, v6, :cond_6

    return v0

    .line 366
    :cond_6
    iget-object v6, v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v5, v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    if-ne p1, v5, :cond_5

    return v0

    :cond_7
    return v1
.end method

.method private synthetic lambda$onRecentsVisibleBoundChangedWithAnim$0(Landroid/graphics/Rect;)V
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsView;->translateForRecentsVisibleBound(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$updateTaskStackViewBounds$1(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 1044
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    if-eqz p1, :cond_0

    .line 1046
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->setupVisible()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTaskStackViewBounds$2(Landroid/graphics/Rect;Z)V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiWindowChangedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1058
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 1059
    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiWindowChangedRunnable:Ljava/lang/Runnable;

    .line 1061
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->onRecentsVisibleBoundChanged(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private synthetic lambda$updateTaskStackViewBounds$3(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiScreenChangeAnimTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 1065
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->setIsMultiScreenChangeAnimRunning(Z)V

    if-eqz p1, :cond_0

    .line 1068
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    :cond_0
    return-void
.end method

.method private loadTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 4

    const-string v0, "RecentsView"

    const-string v1, "loadTaskStack"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    .line 604
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 605
    iget v3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 606
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 607
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 608
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 609
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    return-object p0
.end method

.method private onStackLoaded(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 1

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->onReload(Z)V

    .line 615
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 617
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fullScreen"

    goto :goto_0

    :cond_0
    const-string v0, "clickButton"

    .line 618
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->isLandscapeVisually()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "landscape"

    goto :goto_1

    :cond_1
    const-string p0, "portrait"

    .line 619
    :goto_1
    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterRecentsEvent(Lcom/android/systemui/shared/recents/model/TaskStack;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetInitiatedSelect()V
    .locals 1

    const/4 v0, 0x0

    .line 970
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    .line 971
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingTaskView;->removeView()V

    const/4 v0, 0x0

    .line 973
    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    :cond_0
    return-void
.end method

.method private setIsMultiScreenChangeAnimRunning(Z)V
    .locals 1

    .line 1031
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mIsMultiScreenChangeAnimRunning:Z

    .line 1032
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIsMultiScreenChangeAnimRunning, isRunning="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "doubleTap"

    .line 559
    invoke-static {p0, p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendSwitchAppEvent(Ljava/lang/String;I)V

    const/4 p0, 0x1

    .line 560
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskView;->launchTask(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "clickRecentsKey"

    .line 562
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    :goto_0
    return-void
.end method

.method private translateForRecentsVisibleBound(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .line 985
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictMinimized()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 986
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictMinimizedPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 987
    iget p0, p2, Landroid/graphics/Rect;->top:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 988
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictMinimized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictMinimizedPosition()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 990
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    move p0, p2

    goto :goto_0

    .line 991
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v0

    if-nez v0, :cond_2

    .line 992
    iget p0, p2, Landroid/graphics/Rect;->left:I

    div-int/lit8 p0, p0, 0x2

    move v4, v2

    move v2, p0

    move p0, v4

    goto :goto_0

    .line 993
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 994
    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result p0

    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    move p0, v2

    move v2, p2

    goto :goto_0

    :cond_3
    move p0, v2

    :goto_0
    int-to-float p2, v2

    .line 996
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, p0

    .line 997
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateTaskIsLauncherTarget()V
    .locals 3

    .line 680
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 681
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 683
    iget v2, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    goto :goto_0

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_2

    .line 689
    iget v2, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateTaskStackViewBounds(Landroid/graphics/Rect;Z)V
    .locals 4

    .line 1036
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-nez v0, :cond_0

    const-string p0, "RecentsView"

    const-string p1, "updateTaskStackViewBounds: taskStackView is null"

    .line 1038
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1041
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 1043
    new-instance v1, Lcom/miui/home/recents/views/RecentsView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/views/RecentsView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiWindowChangedRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 v1, 0x1

    .line 1051
    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/RecentsView;->setIsMultiScreenChangeAnimRunning(Z)V

    .line 1052
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiScreenChangeAnimTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1053
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiScreenChangeAnimTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1055
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    new-instance v2, Lcom/miui/home/recents/views/RecentsView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/home/recents/views/RecentsView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/views/RecentsView;Landroid/graphics/Rect;Z)V

    new-instance p1, Lcom/miui/home/recents/views/RecentsView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/views/RecentsView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v1, v2, p1}, Lcom/miui/home/launcher/folme/FolmeUtils;->hideThenShowRecentsAnim(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public alignTaskViewWhenAppToRecent(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    const/high16 p4, 0x41c80000    # 25.0f

    mul-float v5, v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    .line 798
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/views/RecentsView;->alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public alignTaskViewWhenTaskLaunch(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 7

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float v5, p4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v6, p5

    .line 804
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/views/RecentsView;->alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public checkTaskStackViewValid(Z)Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 169
    new-instance v0, Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 170
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 171
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 173
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/views/RecentsContainer;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 177
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    return p1
.end method

.method public confirmSplitSelect(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/widget/ImageView;Lcom/miui/home/recents/views/TaskViewThumbnail;)Z
    .locals 2

    .line 916
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isInSplitSelectState()Z

    move-result p3

    const/4 p4, 0x0

    const-string v0, "RecentsView"

    if-nez p3, :cond_0

    const-string p0, "confirmSplitSelect: is not in split select state, return false"

    .line 917
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 920
    :cond_0
    iget-object p3, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-virtual {p3}, Lcom/miui/home/recents/util/SplitSelectStateController;->isBothSplitAppsConfirmed()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    const-string p0, "confirmSplitSelect: is both split apps confirmed, return true"

    .line 921
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 924
    :cond_1
    iget-object p3, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitToast:Landroid/widget/Toast;

    invoke-virtual {p3}, Landroid/widget/Toast;->cancel()V

    .line 925
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->isSupportSplit()Z

    move-result p3

    if-nez p3, :cond_2

    const-string p1, "confirmSplitSelect: task not support split screen, return true"

    .line 927
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitUnsupportedToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 931
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/SplitSelectStateController;->setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V

    const-string p0, "confirmSplitSelect: launch split tasks, return true"

    .line 933
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p2, Lcom/miui/home/recents/event/PairTaskClickEvent;

    new-instance p3, Lcom/miui/home/recents/event/PairTaskClickEventInfo;

    invoke-direct {p3, p1, p4}, Lcom/miui/home/recents/event/PairTaskClickEventInfo;-><init>(Lcom/miui/home/recents/views/TaskView;Z)V

    invoke-direct {p2, p3}, Lcom/miui/home/recents/event/PairTaskClickEvent;-><init>(Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return v1
.end method

.method public exitOverviewState()V
    .locals 2

    .line 568
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 569
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    :cond_0
    return-void
.end method

.method public getAnotherMultiTaskId(I)I
    .locals 2

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnotherMultiTaskId taskId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 657
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasksWrapper()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 659
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/Task;->getAnotherMultiTaskId(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getFirstTaskViewYWhenNoScroll()I
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getFirstTaskViewYWhenNoScroll()I

    move-result p0

    return p0
.end method

.method public getQuickSwitchTaskIndex(I)I
    .locals 3

    .line 535
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    .line 536
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p0

    if-eqz v0, :cond_3

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    :goto_0
    add-int/lit8 v2, p0, -0x1

    if-gt v1, v2, :cond_2

    .line 543
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 545
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v2

    if-nez v2, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1

    :cond_3
    :goto_2
    const-string v0, "RecentsView"

    const-string v1, "getLeftTaskIndex : list is null or empty"

    .line 539
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p1, p1, 0x1

    .line 540
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getRunningTaskId()I
    .locals 0

    .line 700
    iget p0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    return p0
.end method

.method public getRunningTaskIndex()I
    .locals 1

    .line 704
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 705
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRunningTaskView()Lcom/miui/home/recents/views/TaskView;
    .locals 1

    .line 696
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getSplitPlaceholder()Lcom/miui/home/recents/util/SplitSelectStateController;
    .locals 0

    .line 904
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    return-object p0
.end method

.method public getSplitSelectTranslation()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object p0
.end method

.method public getStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskIdByIndex(I)I
    .locals 0

    .line 736
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTaskIndexById(I)I
    .locals 0

    .line 731
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 732
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object p0
.end method

.method public getTaskView(I)Lcom/miui/home/recents/views/TaskView;
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 645
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 646
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 647
    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/TaskView;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskViewCount()I
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTaskViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 709
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 712
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public hideEmptyView()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 252
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, -0x2

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 253
    invoke-virtual {v1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public hideEmptyViewAndShowTaskStackView()V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyView()V

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setVisibility(I)V

    .line 247
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public hideTaskViews(Lcom/miui/home/recents/views/TaskView;F)V
    .locals 2

    const/4 v0, 0x0

    .line 788
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    if-eq p1, v1, :cond_0

    .line 791
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public init(Lcom/miui/home/recents/util/SplitSelectStateController;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    return-void
.end method

.method public initiateSplitSelect(Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 4

    .line 864
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/BaseDraggingActivity;

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/AbstractFloatingView;->closeOpenViews(Lcom/miui/home/launcher/BaseDraggingActivity;ZI)V

    .line 865
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    if-eqz v0, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->resetInitiatedSelect()V

    .line 868
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateSplitSelect: task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondTaskStagePosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/util/SplitSelectStateController;->setInitialTaskSelect(Lcom/android/systemui/shared/recents/model/Task;I)V

    const/4 v0, 0x1

    .line 870
    iput v0, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    .line 874
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    .line 875
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 874
    invoke-static {v1, v2, v3, p2}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskView(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/recents/views/FloatingTaskView;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 878
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 879
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitToast:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 880
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->setFirstSplitScreenTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 881
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    .line 883
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 885
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(I)V

    .line 886
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChanged(Z)V

    :cond_1
    return-void
.end method

.method public isAnyWorldCirculateTaskIdInvalid(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->isDeleteAllTasksAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 717
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 720
    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isVtCamera:Z

    if-eqz v1, :cond_0

    :cond_1
    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isAnyWorldCirculateTaskIdInvalid: invalid task: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isInSplitSelectState()Z
    .locals 0

    .line 940
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    return p0
.end method

.method public isMultiScreenChangeAnimRunning()Z
    .locals 0

    .line 1027
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsMultiScreenChangeAnimRunning:Z

    return p0
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 0

    .line 554
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTaskLaunchAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 259
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->addRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    .line 260
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 266
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    .line 270
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->onDarkModeChanged()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 275
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 276
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->removeRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    .line 277
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 283
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 459
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 438
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 439
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 444
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 445
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    .line 446
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    .line 447
    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 448
    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int/2addr p1, p2

    add-int/2addr v0, p3

    invoke-virtual {p4, p2, p3, p1, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 451
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_2

    .line 452
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    const/4 p1, 0x0

    .line 453
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 417
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 418
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 420
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 421
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_1

    .line 426
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 427
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 426
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 430
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ClickTaskViewEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 291
    invoke-virtual {p1}, Lcom/miui/home/recents/messages/ClickTaskViewEvent;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result p0

    .line 297
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apppairs_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 299
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5206\u5c4f\u7ec4\u5408"

    goto :goto_0

    .line 302
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u72ec\u7acbapp"

    :goto_0
    const-string v1, "clickToSwitch"

    .line 306
    invoke-static {v1, p1, p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendSwitchAppEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/HideRecentsEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 312
    iget-boolean p1, p1, Lcom/miui/home/recents/messages/HideRecentsEvent;->mIsAnnounceForAccessibility:Z

    if-eqz p1, :cond_0

    const p1, 0x7f100026

    .line 313
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->onReload(Z)V

    .line 405
    iget-object v0, p1, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 406
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->stopScroll()V

    .line 407
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-eqz p1, :cond_1

    .line 408
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->scrollToNearestMotionlessPosition()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/smallwindow/messages/OpenSmallWindowsEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 321
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-nez p1, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getAllSmallWindows()Ljava/util/Set;

    move-result-object p1

    .line 326
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->isSplitSelectTaskInSmallWindowState(Ljava/util/Set;)Z

    move-result v1

    const-string v2, "RecentsView"

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->resetFromSplitSelectionState()V

    .line 329
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    const-string p0, "onMessageEvent: split select task now in small window state"

    .line 330
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 333
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsView;->isSplitTaskInSmallWindowState(Ljava/util/List;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    const-string p0, "onMessageEvent: split task now in small window state"

    .line 335
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onRecentsVisibleBoundChanged(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 1010
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1011
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    :cond_0
    return-void
.end method

.method public onRecentsVisibleBoundChangedWithAnim(Landroid/graphics/Rect;Z)V
    .locals 3

    .line 1018
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->isNeedShowEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/recents/views/RecentsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/RecentsView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/views/RecentsView;Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/folme/FolmeUtils;->hideThenShowRecentsAnim(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1023
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsView;->updateTaskStackViewBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public onReload(Z)V
    .locals 1

    .line 160
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->checkTaskStackViewValid(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 163
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->onReload(Z)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 491
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->returnTaskViewsToPool()V

    :cond_0
    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 483
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reset()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 465
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reloadStackView()V
    .locals 1

    .line 632
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->loadTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 633
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->onStackLoaded(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentsView before requestLayout isParentLayoutRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "parent null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnGlobalListenerError"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    const-string p0, "RecentsView after requestLayout"

    .line 152
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 590
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    return-void
.end method

.method public resetFromSplitSelectionState()V
    .locals 3

    .line 944
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->resetFirstSplitScreenTaskNull()V

    const/4 v0, 0x0

    .line 945
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    .line 946
    iget v1, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 949
    :cond_0
    iput v2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    const-string v1, "RecentsView"

    const-string v2, "resetFromSplitSelectionState: "

    .line 951
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    if-eqz v1, :cond_1

    .line 954
    invoke-virtual {v1}, Lcom/miui/home/recents/views/FloatingTaskView;->removeView()V

    const/4 v1, 0x0

    .line 955
    iput-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    .line 958
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 960
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 961
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChanged(Z)V

    .line 963
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 964
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    :cond_3
    return-void
.end method

.method public setCurrentTaskId(I)V
    .locals 2

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentTaskId runningTaskId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 674
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    .line 675
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/RecentsModel;->setCurrentRunningTaskId(I)V

    .line 676
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->updateTaskIsLauncherTarget()V

    return-void
.end method

.method public setInOverviewState(Z)V
    .locals 1

    .line 776
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    if-eq v0, p1, :cond_1

    .line 777
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    if-eqz p1, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 781
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 782
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRunningTaskHidden(IZ)V
    .locals 2

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRunningTaskHidden runningTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 765
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentsView setVisibility :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnGlobalListenerError"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisulaRotationSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 397
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p1, :cond_0

    .line 398
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskStackView;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public shouldUseMultiWindowTaskSizeStrategy()Z
    .locals 0

    .line 637
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 638
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showCurrentTask(I)V
    .locals 0

    .line 594
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 595
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    return-void
.end method

.method public showEmptyView(I)V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsView;->translateForRecentsVisibleBound(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    new-array v1, p1, [Landroid/view/View;

    .line 237
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    aput-object p0, v1, v0

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, -0x2

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 238
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public startHome()V
    .locals 3

    .line 575
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    goto :goto_0

    :cond_0
    const-string v0, "RecentsView"

    const-string v1, "checkAndLauncherHome"

    .line 579
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v0, Lcom/miui/home/recents/event/CommonStartActivityInfo;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, p0}, Lcom/miui/home/recents/event/CommonStartActivityInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 581
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v1, Lcom/miui/home/recents/event/StartActivityEvent;

    new-instance v2, Lcom/miui/home/recents/event/StartActivityEventInfo;

    invoke-direct {v2, v0}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;)V

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/StartActivityEvent;-><init>(Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 583
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->setHalfSplitWhenToHome()V

    .line 584
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 585
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskHelper;->clearForegroundTasks()V

    :cond_1
    return-void
.end method

.method public startTaskOrHome(J)V
    .locals 5

    .line 497
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const-string v1, "RecentsView"

    if-nez v0, :cond_0

    const-string p0, "mTaskStackView is null, can\'t start any task"

    .line 498
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runningTaskIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, 0x12c

    if-eq v0, v2, :cond_3

    cmp-long p1, p1, v3

    if-gez p1, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isTaskLaunchAnimRunning()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 508
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getQuickSwitchTaskIndex(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 510
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    .line 511
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->isNeedSkipStartPairTask(Lcom/miui/home/recents/views/TaskView;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 514
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V

    goto :goto_0

    .line 516
    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getQuickSwitchTaskIndex(I)I

    move-result v0

    cmp-long p1, p1, v3

    if-gez p1, :cond_4

    .line 518
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    .line 520
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V

    :goto_0
    return-void
.end method

.method public updateEmptyView(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyViewAndShowTaskStackView()V

    goto :goto_0

    :cond_0
    const p1, 0x7f100417

    .line 210
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->showEmptyView(I)V

    :goto_0
    return-void
.end method

.method public updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 195
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    .line 198
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->updateEmptyView(I)V

    .line 199
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->updateTaskIsLauncherTarget()V

    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    .line 754
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 756
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskView;->setThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_0
    return-void
.end method
