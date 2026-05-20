.class public Lcom/miui/home/recents/views/TaskView;
.super Lcom/miui/home/recents/views/FixedSizeFrameLayout;
.source "TaskView.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;
    }
.end annotation


# instance fields
.field private eventX:F

.field private eventY:F

.field private mAccessLockView:Landroid/view/View;

.field private mDownTouchPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFullscreenProgress:F

.field mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "header_"
    .end annotation
.end field

.field private mIgnoreTranslationWhenFindTouchView:Z

.field private mIsDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private final mLastTouchDownPosition:Landroid/graphics/PointF;

.field private mNotDockedTipView:Landroid/view/View;

.field private mPrivacyProtectImageView:Landroid/widget/ImageView;

.field private mScreeningView:Landroid/view/View;

.field mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

.field private final mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "task_"
    .end annotation
.end field

.field protected final mTaskIdAttributeContainer:[Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;

.field protected final mTaskIdContainer:[I

.field public mTaskViewClipParams:Lcom/miui/home/recents/util/TaskViewClipParams;

.field mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "thumbnail_"
    .end annotation
.end field

.field private mTmpAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTransformAnimation:Landroid/animation/AnimatorSet;

.field private mVtCameraContainer:Landroid/widget/LinearLayout;

.field private mVtCameraImageView:Landroid/widget/ImageView;

.field private mVtCameraTextView:Landroid/widget/TextView;

.field private mWorldCirculateContainer:Landroid/widget/LinearLayout;

.field private mWorldCirculateImageView:Landroid/widget/ImageView;

.field private mWorldCirculateTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$JUxSzES6Wdm95AVGkqxMPR3S570(IILcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/views/TaskView;->lambda$onSizeChanged$1(IILcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jr2kPys_lG7BpGvvMFOwhyc1RbE(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/views/TaskView;->lambda$onDarkModeChanged$2(Lcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S16NUVWPhWh3kFa7PnWLvkUN8uY(FLcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/views/TaskView;->lambda$setChildrenViewAlpha$0(FLcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mEw2Wv9rOuASYvo7SrvNHNPr0QQ(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/views/TaskView;->lambda$setFullscreenProgress$3(Lcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/FixedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 117
    new-instance p1, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {p1}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    .line 127
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskView;->mIgnoreTranslationWhenFindTouchView:Z

    const/4 p2, 0x2

    new-array p3, p2, [Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;

    .line 547
    iput-object p3, p0, Lcom/miui/home/recents/views/TaskView;->mTaskIdAttributeContainer:[Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;

    .line 548
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/TaskView;->mLastTouchDownPosition:Landroid/graphics/PointF;

    new-array p2, p2, [I

    .line 552
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTaskIdContainer:[I

    .line 161
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 164
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    .line 165
    new-instance p1, Lcom/miui/home/recents/util/TaskViewClipParams;

    invoke-direct {p1}, Lcom/miui/home/recents/util/TaskViewClipParams;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTaskViewClipParams:Lcom/miui/home/recents/util/TaskViewClipParams;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private canShowTaskMenu()Z
    .locals 2

    .line 825
    invoke-static {}, Lcom/miui/home/recents/views/RecentMenuView;->isUseAndroidTShowTaskMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 826
    invoke-static {}, Lcom/miui/home/recents/views/RecentMenuView;->canShowTaskMenuForT()Z

    move-result p0

    return p0

    .line 828
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 833
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportMultiWindow()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    .line 830
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_CANNONG:Z

    if-nez p0, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    return v0
.end method

.method private checkIfNeedLaunchForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 787
    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_0

    .line 788
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, v0, p2, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private confirmSecondSplitSelectApp()Z
    .locals 4

    .line 568
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mLastTouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->getChildTaskIndexAtPosition(Landroid/graphics/PointF;)I

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mTaskIdAttributeContainer:[Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;

    aget-object v0, v1, v0

    .line 571
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    .line 572
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->getIconView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    .line 571
    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/miui/home/recents/views/RecentsView;->confirmSplitSelect(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/widget/ImageView;Lcom/miui/home/recents/views/TaskViewThumbnail;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getActivityOptions(Lcom/miui/home/launcher/Launcher;ZZ)Landroid/app/ActivityOptions;
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 761
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/Launcher;->getActivityLaunchOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_0

    .line 763
    :cond_0
    invoke-virtual {p0, p0}, Lcom/miui/home/recents/views/TaskView;->getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_0

    .line 766
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getFreeFormPkgNameToLaunchFullScreen()Ljava/lang/String;
    .locals 1

    .line 783
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportFreeFormManager()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getBasePackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getTopPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getMenuToTaskViewPosition()Lcom/miui/home/recents/util/RelativePosition;
    .locals 2

    .line 843
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 844
    new-instance v1, Lcom/miui/home/recents/util/RelativePosition;

    invoke-direct {v1}, Lcom/miui/home/recents/util/RelativePosition;-><init>()V

    .line 845
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v1, p0}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    return-object v1
.end method

.method private getSplitRatio()F
    .locals 1

    .line 751
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 752
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/Task;->getLeftOrTopPercent(Z)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method private isGestureTouchSingleApp(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private isLaunchPairTask()Z
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    return p0
.end method

.method private isLaunchTaskForHalfQuickSwitch(I)Z
    .locals 1

    .line 692
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskView;->isGestureTouchSingleApp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLaunchTaskForSplitMode()Z
    .locals 0

    .line 688
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onDarkModeChanged$2(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->onDarkModeChanged()V

    return-void
.end method

.method private static synthetic lambda$onSizeChanged$1(IILcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 0

    .line 270
    invoke-virtual {p2, p0, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    return-void
.end method

.method private static synthetic lambda$setChildrenViewAlpha$0(FLcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 0

    .line 241
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static synthetic lambda$setFullscreenProgress$3(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 0

    .line 959
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private launchForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V
    .locals 6

    .line 800
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/recents/ForegroundTaskHelper;->IS_NEED_REMEMBER:Z

    if-nez v0, :cond_0

    .line 802
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, p0, v1, p2, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFreeformFromUnpin(Landroid/content/Context;ILjava/lang/String;I)V

    .line 804
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/messages/HideRecentsEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/messages/HideRecentsEvent;-><init>(ZZZZZ)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 806
    :cond_0
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, p0, v1, p2, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFullScreenFromFreeform(Landroid/content/Context;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private sendLaunchTaskEvent(ZLandroid/app/ActivityOptions;)V
    .locals 3

    .line 778
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/TaskLaunchEvent;

    new-instance v2, Lcom/miui/home/recents/event/TaskLaunchEventInfo;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v2, p1, p2, p0}, Lcom/miui/home/recents/event/TaskLaunchEventInfo;-><init>(ZLandroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/TaskLaunchEvent;-><init>(Lcom/miui/home/recents/event/TaskLaunchEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method private setTaskViewPropertyWhenCloseToHome(Landroid/graphics/RectF;IFFFFFFZ)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTaskViewClipParams:Lcom/miui/home/recents/util/TaskViewClipParams;

    invoke-virtual {v0, p1, p2, p9}, Lcom/miui/home/recents/util/TaskViewClipParams;->updateClipParam(Landroid/graphics/RectF;IZ)V

    .line 1117
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 1118
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 1119
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1120
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1121
    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1122
    invoke-virtual {p0, p6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 1123
    invoke-virtual {p0, p7}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1124
    invoke-virtual {p0, p7}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1125
    invoke-virtual {p0, p8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updateContentDes(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10002a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    const-string v1, ","

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->cti1TitleDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->cti2TitleDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateNotDockedTipViewVisibility(Z)V
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindTask(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 11

    .line 393
    iput-boolean p2, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    .line 394
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 395
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/Task;->addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 396
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZI)V

    .line 397
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 398
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2, v2, v1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZI)V

    .line 401
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v3, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v4, p0, Lcom/miui/home/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {p2, v2, v3, v4}, Lcom/miui/home/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskView bind task, task="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "TaskView"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskView;->isShowNotDockedTipView(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/TaskView;->updateNotDockedTipViewVisibility(Z)V

    .line 405
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isAccessLocked:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isAccessLocked:Z

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 407
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->showScreeningIcon()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->showScreeningIcon()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    move v2, v6

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 409
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mPrivacyProtectImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->showPrivacyProtectIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mPrivacyProtectImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->showPrivacyProtectIcon()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    goto :goto_5

    :cond_6
    move v2, v6

    :goto_5
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 411
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 413
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 415
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->showWorldCirculateIcon()Z

    move-result p2

    const v2, 0x7f080723

    const v3, 0x7f080724

    const-string v4, "Windows"

    const-string v6, "AndroidPad"

    const-string v7, "AndroidPhone"

    if-eqz p2, :cond_a

    iget-object p2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDevicePlatform:Ljava/lang/String;

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 416
    iget-object p2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDevicePlatform:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x2

    sparse-switch v9, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v9, "Mac"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move v8, v0

    goto :goto_6

    :sswitch_1
    const-string v9, "AndroidPadCar"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move v8, v10

    goto :goto_6

    :sswitch_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move v8, v1

    goto :goto_6

    :sswitch_3
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v8, 0x3

    :cond_7
    :goto_6
    if-eqz v8, :cond_9

    if-eq v8, v0, :cond_9

    if-eq v8, v10, :cond_8

    .line 426
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 422
    :cond_8
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateImageView:Landroid/widget/ImageView;

    const v8, 0x7f080722

    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 419
    :cond_9
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    :goto_7
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateTextView:Landroid/widget/TextView;

    .line 430
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100430

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDeviceDeviceName:Ljava/lang/String;

    aput-object v9, v0, v1

    .line 429
    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 432
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 434
    :cond_a
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getAllSmallWindows()Ljava/util/Set;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isTouchSingleApp()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/shared/recents/model/Task;->updateIsNeedHideState(Ljava/util/Set;Z)V

    .line 435
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->showVTCameraIcon()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 436
    sget-object p2, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraDeviceName:Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 437
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 438
    :cond_b
    sget-object p2, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraDeviceName:Ljava/lang/String;

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 439
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 440
    :cond_c
    sget-object p2, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraDeviceName:Ljava/lang/String;

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 441
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraImageView:Landroid/widget/ImageView;

    const v0, 0x7f080725

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    :cond_d
    :goto_8
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraTextView:Landroid/widget/TextView;

    sget-object v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraTaskText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 447
    :cond_e
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/TaskView;->updateContentDes(Z)V

    .line 448
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTaskIdAttributeContainer:[Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;

    new-instance v0, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-object v6, v2, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/4 v7, -0x1

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/views/TaskView$TaskIdAttributeContainer;-><init>(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/views/TaskViewThumbnail;Landroid/widget/ImageView;I)V

    aput-object v0, p2, v1

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e166c3c -> :sswitch_3
        -0x4c57c59d -> :sswitch_2
        -0x135c5290 -> :sswitch_1
        0x12d2f -> :sswitch_0
    .end sparse-switch
.end method

.method public cancelTransformAnimation()V
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    return-void
.end method

.method public containIgnorePackageName(Ljava/lang/String;)Z
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 978
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 980
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getBasePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1132
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTaskViewClipParams:Lcom/miui/home/recents/util/TaskViewClipParams;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/TaskViewClipParams;->clipTaskView(Landroid/graphics/Canvas;)V

    .line 1133
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;
    .locals 2

    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 774
    invoke-static {p1, v1, v1, p0, v0}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoundOnScreen()Landroid/graphics/Rect;
    .locals 9

    .line 1057
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 1058
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1061
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1063
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1064
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v3

    .line 1068
    :cond_0
    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v3

    .line 1074
    :cond_1
    invoke-virtual {v5}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result v5

    .line 1075
    invoke-static {v5}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_1

    .line 1080
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v6

    if-nez v6, :cond_3

    return-object v3

    .line 1085
    :cond_3
    invoke-virtual {v6}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1086
    invoke-static {v5}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeLeftRotation(I)Z

    move-result v5

    if-eqz v5, :cond_4

    aget v4, v2, v7

    aget v5, v2, v8

    .line 1087
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v5, p0

    aget p0, v2, v7

    add-int/2addr p0, v0

    aget v0, v2, v8

    sub-int/2addr v0, v1

    invoke-virtual {v3, v4, v5, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1089
    :cond_4
    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWinBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 1090
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    aget v5, v2, v7

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    aget v6, v2, v8

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    aget v7, v2, v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    aget v0, v2, v8

    sub-int/2addr p0, v0

    sub-int/2addr p0, v1

    invoke-virtual {v3, v4, v5, v6, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1093
    :cond_5
    invoke-static {v5}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeLeftRotation(I)Z

    move-result v5

    if-eqz v5, :cond_6

    aget v4, v2, v7

    aget v5, v2, v8

    sub-int/2addr v5, v1

    aget v1, v2, v7

    add-int/2addr v1, v0

    aget v0, v2, v8

    .line 1094
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1096
    :cond_6
    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWinBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 1097
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    aget v5, v2, v7

    sub-int/2addr v4, v5

    aget v5, v2, v8

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    aget v6, v2, v7

    sub-int/2addr p0, v6

    add-int/2addr p0, v0

    aget v0, v2, v8

    add-int/2addr v0, v1

    invoke-virtual {v3, v4, v5, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v3

    :cond_7
    :goto_1
    aget v4, v2, v8

    aget v5, v2, v7

    .line 1076
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v5, p0

    aget p0, v2, v8

    add-int/2addr p0, v0

    aget v0, v2, v7

    add-int/2addr v0, v1

    invoke-virtual {v3, v4, v5, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v3
.end method

.method protected getChildTaskIndexAtPosition(Landroid/graphics/PointF;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFullscreenProgress()F
    .locals 0

    .line 964
    iget p0, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    return p0
.end method

.method public getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    return-object p0
.end method

.method public getIgnoreTranslationWhenFindTouchView()Z
    .locals 0

    .line 261
    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskView;->mIgnoreTranslationWhenFindTouchView:Z

    return p0
.end method

.method public getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    return-object p0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object p0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method public getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    return-object p0
.end method

.method public getTopPackageName()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isAnimatingTo(Lcom/miui/home/recents/views/TaskViewTransform;)Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    .line 361
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskViewTransform;->isSame(Lcom/miui/home/recents/views/TaskViewTransform;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFreeFormMode()Z
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isFreeFormMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isShowNotDockedTipView(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    .line 453
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->isSupportSplit()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_3

    .line 454
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result p0

    if-nez p0, :cond_2

    .line 455
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1

    .line 457
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result p0

    return p0

    :cond_3
    return p1
.end method

.method public launchTask(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 585
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZ)V

    const-string p0, "switchApp"

    .line 586
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    return-void
.end method

.method public launchTask(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 590
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZ)V

    return-void
.end method

.method public launchTask(ZZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 594
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZZ)V

    return-void
.end method

.method public launchTask(ZZZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 598
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZZZ)V

    return-void
.end method

.method public launchTask(ZZZZZ)V
    .locals 7

    const/4 v6, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 603
    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZZZI)V

    return-void
.end method

.method public launchTask(ZZZZZI)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .line 608
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZZZZII)V

    return-void
.end method

.method public launchTask(ZZZZZZII)V
    .locals 5

    .line 612
    iget-object p4, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez p4, :cond_0

    return-void

    .line 615
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launchTask,animate="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "   freezeTaskList="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "   isInBackground="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "   isUserClick="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "TaskView"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result p4

    invoke-static {p4}, Lcom/miui/home/launcher/DeviceConfig;->setLastRotation(I)V

    .line 620
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskView;->getFreeFormPkgNameToLaunchFullScreen()Ljava/lang/String;

    move-result-object p4

    .line 621
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v1

    .line 624
    invoke-direct {p0, v0, p1, v1}, Lcom/miui/home/recents/views/TaskView;->getActivityOptions(Lcom/miui/home/launcher/Launcher;ZZ)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 625
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, v3, p4}, Lcom/miui/home/recents/views/TaskView;->checkIfNeedLaunchForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 626
    sget-object p1, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    invoke-virtual {p1}, Lcom/miui/home/recents/ScreenPinnedHelper;->isPinEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p6, :cond_1

    .line 627
    invoke-static {v2}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object p1

    invoke-virtual {p1, v4}, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode(I)V

    .line 629
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->hasShellFeature()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 630
    invoke-direct {p0, p3, v2}, Lcom/miui/home/recents/views/TaskView;->sendLaunchTaskEvent(ZLandroid/app/ActivityOptions;)V

    goto :goto_0

    .line 632
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, p1, p4}, Lcom/miui/home/recents/views/TaskView;->launchForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 637
    :cond_3
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 638
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskView;->isLaunchTaskForSplitMode()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 639
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/event/TaskLaunchForSplitEvent;

    new-instance p3, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;

    invoke-direct {p3, p0, p5}, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;-><init>(Lcom/miui/home/recents/views/TaskView;Z)V

    invoke-direct {p2, p3}, Lcom/miui/home/recents/event/TaskLaunchForSplitEvent;-><init>(Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void

    .line 642
    :cond_4
    invoke-direct {p0, p7}, Lcom/miui/home/recents/views/TaskView;->isLaunchTaskForHalfQuickSwitch(I)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 643
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEvent;

    new-instance p3, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;

    invoke-direct {p3, p0, p7, p8}, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;-><init>(Lcom/miui/home/recents/views/TaskView;II)V

    invoke-direct {p2, p3}, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEvent;-><init>(Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void

    .line 646
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskView;->isLaunchPairTask()Z

    move-result p4

    if-eqz p4, :cond_9

    if-eqz p1, :cond_6

    .line 648
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance p3, Lcom/miui/home/recents/event/PairTaskClickEvent;

    new-instance p4, Lcom/miui/home/recents/event/PairTaskClickEventInfo;

    invoke-direct {p4, p0, p2}, Lcom/miui/home/recents/event/PairTaskClickEventInfo;-><init>(Lcom/miui/home/recents/views/TaskView;Z)V

    invoke-direct {p3, p4}, Lcom/miui/home/recents/event/PairTaskClickEvent;-><init>(Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto :goto_1

    .line 650
    :cond_6
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance p3, Lcom/miui/home/recents/event/PairTaskLaunchEvent;

    new-instance p4, Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;

    invoke-direct {p4, p0, p2}, Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;-><init>(Lcom/miui/home/recents/views/TaskView;Z)V

    invoke-direct {p3, p4}, Lcom/miui/home/recents/event/PairTaskLaunchEvent;-><init>(Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;)V

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :goto_1
    return-void

    .line 654
    :cond_7
    sget-boolean p4, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz p4, :cond_9

    .line 655
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskView;->confirmSecondSplitSelectApp()Z

    move-result p4

    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    return-void

    .line 658
    :cond_8
    iget-object p4, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p4}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p4

    if-eqz p4, :cond_9

    .line 659
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance p3, Lcom/miui/home/recents/event/PairTaskClickEvent;

    new-instance p4, Lcom/miui/home/recents/event/PairTaskClickEventInfo;

    invoke-direct {p4, p0, p2}, Lcom/miui/home/recents/event/PairTaskClickEventInfo;-><init>(Lcom/miui/home/recents/views/TaskView;Z)V

    invoke-direct {p3, p4}, Lcom/miui/home/recents/event/PairTaskClickEvent;-><init>(Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void

    :cond_9
    if-eqz v1, :cond_a

    const-wide/16 p4, 0x12c

    .line 665
    invoke-static {v0, v4, p4, p5}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    :cond_a
    if-eqz p2, :cond_b

    .line 668
    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->setFreezeRecentTasksReordering(Landroid/app/ActivityOptions;)V

    :cond_b
    if-eqz v0, :cond_c

    .line 671
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->clearWidgetTypeIconCache(Z)V

    :cond_c
    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    .line 675
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/event/TaskClickEvent;

    new-instance p4, Lcom/miui/home/recents/event/TaskClickEventInfo;

    invoke-direct {p4, p0, p3}, Lcom/miui/home/recents/event/TaskClickEventInfo;-><init>(Lcom/miui/home/recents/views/TaskView;Z)V

    invoke-direct {p2, p4}, Lcom/miui/home/recents/event/TaskClickEvent;-><init>(Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto :goto_2

    .line 679
    :cond_d
    invoke-direct {p0, p3, v2}, Lcom/miui/home/recents/views/TaskView;->sendLaunchTaskEvent(ZLandroid/app/ActivityOptions;)V

    .line 683
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-nez v2, :cond_e

    const/4 p2, 0x0

    goto :goto_3

    .line 684
    :cond_e
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    :goto_3
    invoke-virtual {p1, p0, p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->notifyStartActivityFromRecents(ILandroid/os/Bundle;)V

    return-void
.end method

.method public lockChangeSuccess(Z)V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->showOrHideLockImageView(Z)V

    .line 996
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 997
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 998
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected measureContents(II)V
    .locals 3

    .line 290
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 291
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 292
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 293
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 296
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->measureChildren(II)V

    .line 298
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 936
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 937
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->addRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    .line 938
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->registerEventBus()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 540
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZZZ)V

    .line 541
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_0

    const-string p1, "switchApp"

    .line 542
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ClickTaskViewEvent;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/messages/ClickTaskViewEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDarkModeChanged()V
    .locals 1

    .line 302
    sget-object v0, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 943
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 944
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->removeRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    .line 945
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->unregisterEventBus()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03a6

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    const v0, 0x7f0a03ab

    .line 223
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    const v0, 0x7f0a03aa

    .line 224
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    const v0, 0x7f0a03a5

    .line 225
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    const v0, 0x7f0a03a9

    .line 226
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    const v0, 0x7f0a03a8

    .line 227
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mPrivacyProtectImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a043b

    .line 228
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a043c

    .line 229
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a043d

    .line 230
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03a7

    .line 231
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mNotDockedTipView:Landroid/view/View;

    const v0, 0x7f0a041e

    .line 232
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a041f

    .line 233
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0420

    .line 234
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 285
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLaunchPairTask(ZLandroid/window/RemoteTransition;)V
    .locals 7

    .line 731
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMergeCallback()V

    .line 737
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 738
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->directExecuteWorkHandlerFinishRunnableIfNeed()V

    .line 739
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getSplitPlaceholder()Lcom/miui/home/recents/util/SplitSelectStateController;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 740
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskView;->getSplitRatio()F

    move-result v5

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/SplitSelectStateController;->launchTasks(IIZFLandroid/window/RemoteTransition;)V

    goto :goto_0

    .line 742
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getSplitPlaceholder()Lcom/miui/home/recents/util/SplitSelectStateController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/SplitSelectStateController;->launchSplitTasks(Landroid/window/RemoteTransition;)V

    :goto_0
    return-void
.end method

.method public onLaunchTaskForHalfQuickSwitch(IILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 720
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    .line 722
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_1

    .line 724
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 726
    :goto_1
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 727
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    return-void
.end method

.method public onLaunchTaskForSplitMode(ZLandroid/os/Bundle;)V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 701
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    if-eqz p1, :cond_0

    .line 703
    iget v0, p0, Lcom/miui/home/recents/views/TaskView;->eventX:F

    iget v1, p0, Lcom/miui/home/recents/views/TaskView;->eventY:F

    invoke-virtual {p1, v0, v1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->soscStartTaskFromPair(FFLandroid/os/Bundle;)V

    .line 704
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget v0, p0, Lcom/miui/home/recents/views/TaskView;->eventX:F

    iget v1, p0, Lcom/miui/home/recents/views/TaskView;->eventY:F

    invoke-virtual {p1, v0, v1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->soscStartTaskFromPair(FFLandroid/os/Bundle;)V

    :cond_0
    const/4 p1, 0x0

    .line 706
    iput p1, p0, Lcom/miui/home/recents/views/TaskView;->eventX:F

    .line 707
    iput p1, p0, Lcom/miui/home/recents/views/TaskView;->eventY:F

    goto :goto_0

    .line 709
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getLaunchHalfSplitTaskPosition()I

    move-result v0

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onLockedChanged(Z)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskView;->updateContentDes(Z)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 815
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/event/TaskViewLongClickEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/event/TaskViewLongClickEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 816
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskView;->canShowTaskMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 817
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskView;->getMenuToTaskViewPosition()Lcom/miui/home/recents/util/RelativePosition;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;-><init>(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/RelativePosition;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 819
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_4

    iget v1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v0

    if-nez v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V

    .line 517
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->removeThumbnailCache(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget v1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/Task;->isMultiPrimaryTask(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V

    .line 521
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->removeThumbnailCache(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V

    .line 524
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->removeThumbnailCache(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_0

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget v1, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/Task;->getTaskKey(I)Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 530
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 531
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v6, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->snapshot:Landroid/graphics/Bitmap;

    iget-object v7, p1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;->taskThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->updateBlurThumbnail(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onRecentsVisibleBoundChanged(Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method public onRecentsVisibleBoundChangedWithAnim(Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method onReload(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->resetViewProperties()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 269
    :cond_0
    new-instance p3, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p2}, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, p3}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V

    .line 470
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    return-void
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-virtual {v0, v1, p2, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V

    .line 476
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->secondThumbnail:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-virtual {p2, v0, p3, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V

    .line 477
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/model/Task;->removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 484
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 485
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 486
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/TaskViewHeader;->unbindFromTask(Z)V

    return-void
.end method

.method public onTaskStackIdChanged()V
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v3, p0, Lcom/miui/home/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V

    .line 493
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskView;->eventX:F

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskView;->eventY:F

    .line 560
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public registerEventBus()V
    .locals 1

    .line 923
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method resetViewProperties()V
    .locals 4

    .line 331
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 332
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 333
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 334
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 335
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 337
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v1, 0x0

    .line 338
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewHeader;->reset()V

    .line 340
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->reset()V

    .line 341
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->reset()V

    .line 342
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 343
    invoke-static {p0}, Lcom/miui/home/recents/views/TaskViewTransform;->reset(Lcom/miui/home/recents/views/TaskView;)V

    .line 345
    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/TaskView;->updateNotDockedTipViewVisibility(Z)V

    .line 346
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mPrivacyProtectImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    .line 352
    iput v0, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    .line 353
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTaskViewClipParams:Lcom/miui/home/recents/util/TaskViewClipParams;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/TaskViewClipParams;->resetClipParam()V

    return-void
.end method

.method public setChildrenViewAlpha(F)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 240
    new-instance v0, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda0;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    .line 243
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mAccessLockView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mScreeningView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 245
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mPrivacyProtectImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mWorldCirculateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 247
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mVtCameraContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 1

    .line 954
    iget v0, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 957
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/views/TaskView;->mFullscreenProgress:F

    .line 958
    sget-object p1, Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/recents/views/TaskView$$ExternalSyntheticLambda3;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setHeaderTranslationAndAlpha(FFF)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 252
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 253
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mHeaderView:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setIgnoreTranslationWhenFindTouchView(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskView;->mIgnoreTranslationWhenFindTouchView:Z

    return-void
.end method

.method public setThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/Task;->isMultiSecondTask(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 501
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-virtual {p1, v0, p2, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V

    goto :goto_0

    .line 503
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-virtual {p1, v0, p2, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V

    :goto_0
    return-void
.end method

.method public setThumbnailViewProperty(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/miui/home/recents/views/TaskViewThumbnail;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1050
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mSecondThumbnailView:Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 375
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public startDrag()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterEventBus()V
    .locals 1

    .line 929
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public update(Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 1108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->getClipRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->getRadius()I

    move-result v4

    .line 1110
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->getTranX()F

    move-result v5

    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->getTranY()F

    move-result v6

    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->getPivotX()F

    move-result v7

    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->getPivotY()F

    move-result v8

    .line 1111
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->getScale()F

    move-result v9

    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->getAlpha()F

    move-result v10

    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->isNeedClip()Z

    move-result v11

    move-object v2, p0

    .line 1109
    invoke-direct/range {v2 .. v11}, Lcom/miui/home/recents/views/TaskView;->setTaskViewPropertyWhenCloseToHome(Landroid/graphics/RectF;IFFFFFFZ)V

    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 312
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 313
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/miui/home/recents/views/TaskViewTransform;->applyToTaskView(Lcom/miui/home/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    .line 314
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 317
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    .line 322
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 323
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskView;->mTargetAnimationTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskViewTransform;->copyFrom(Lcom/miui/home/recents/views/TaskViewTransform;)V

    :cond_1
    :goto_0
    return-void
.end method
