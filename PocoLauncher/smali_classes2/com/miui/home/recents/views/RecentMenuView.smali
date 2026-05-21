.class public Lcom/miui/home/recents/views/RecentMenuView;
.super Landroid/widget/FrameLayout;
.source "RecentMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static mWorldCirculateEnable:Z = false


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mHideMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private mHorizontalMargin:I

.field private mIsShowMenuAtTaskViewRight:Z

.field private mIsShowing:Z

.field mIsTouchInTaskViewBound:Z

.field mLockDrawable:Landroid/graphics/drawable/Drawable;

.field private mMenuItemAddPair:Landroid/widget/ImageView;

.field private mMenuItemAddPairContainer:Landroid/widget/FrameLayout;

.field private mMenuItemInfo:Landroid/widget/ImageView;

.field private mMenuItemInfoContainer:Landroid/widget/FrameLayout;

.field private mMenuItemLock:Landroid/widget/ImageView;

.field private mMenuItemLockContainer:Landroid/widget/FrameLayout;

.field private mMenuItemMultiWindow:Landroid/widget/ImageView;

.field private mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

.field private mMenuItemPin:Landroid/widget/ImageView;

.field private mMenuItemPinContainer:Landroid/widget/FrameLayout;

.field private mMenuItemSmallWindow:Landroid/widget/ImageView;

.field private mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

.field private mMenuItemWorldCirculate:Landroid/widget/ImageView;

.field private mMenuItemWorldCirculateContainer:Landroid/widget/FrameLayout;

.field private mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

.field private mMenuViewPositionNormalCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

.field private mMenuViewPositionPairCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

.field private mNormalShowingMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPairShortcutInfo:Lcom/miui/home/launcher/PairShortcutInfo;

.field private mPairShowingMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsViewRect:Landroid/graphics/Rect;

.field private mScreeningToast:Landroid/widget/Toast;

.field private mShowDock:Z

.field private final mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

.field mShowOrHideAnim:Landroid/animation/ValueAnimator;

.field private mShowingMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mTaskPinView:Lcom/miui/home/recents/views/TaskPinView;

.field private mTaskPinViewStub:Landroid/view/ViewStub;

.field private mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

.field private mTaskView:Lcom/miui/home/recents/views/TaskView;

.field mTaskViewBound:Landroid/graphics/Rect;

.field mUnlockDrawable:Landroid/graphics/drawable/Drawable;

.field private mVerticalMargin:I


# direct methods
.method public static synthetic $r8$lambda$4lNoqhFwinqxOOOhB8T5TyVj0Ow(Lcom/miui/home/recents/views/RecentMenuView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$updateMenuItemSmallWindowEnable$6(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4z-OGsdaeoZf06_aNACoawQvDjI(Lcom/miui/home/recents/views/RecentMenuView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$onClick$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Z1CLIteZIv001u8C2BevbKT7zA(ZLjava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$updateMenuItemSmallWindowEnable$5(ZLjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TWewUlM_qZ7fIXqYoyQW9vmTJkE(Lcom/miui/home/recents/views/RecentMenuView;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$onClick$1(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsr7pztZK6MbNhYvY93x7w7WFTM(Lcom/miui/home/recents/views/RecentMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$onMessageEvent$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$pfnIvsCoLCJ7q92VJhLmQBz6QdU(Lcom/miui/home/launcher/Launcher;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$toastWhenFirstShowAddPairButton$4(Lcom/miui/home/launcher/Launcher;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxSgHems4ExVhj6Nyvvh4INT-jI(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$toastWhenFirstShowAddPairButton$3(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowingMenuList:Ljava/util/List;

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    .line 97
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShowingMenuList:Ljava/util/List;

    const/4 p2, 0x0

    .line 119
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    .line 120
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    .line 123
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    .line 125
    new-instance p3, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const/high16 p4, 0x3f200000    # 0.625f

    const v0, 0x3f0ccccd    # 0.55f

    invoke-direct {p3, p4, v0}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 126
    sget-object p3, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHideMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p3, 0x1

    .line 131
    iput-boolean p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    .line 134
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mRecentsViewRect:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0802b1

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0802b8

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070620

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mVerticalMargin:I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07061f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHorizontalMargin:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 160
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    const/16 p1, 0x8

    .line 161
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 163
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xb4

    .line 166
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/recents/views/RecentMenuView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/RecentMenuView$1;-><init>(Lcom/miui/home/recents/views/RecentMenuView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/RecentMenuView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/views/RecentMenuView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskStackView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method private calculateMenuPositionToTaskView(Lcom/miui/home/recents/util/RelativePosition;)V
    .locals 3

    .line 717
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->isMenuPositionDecidedByTaskViewPos()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 718
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 722
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowMenuAtTaskViewRight:Z

    goto :goto_1

    .line 719
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    .line 720
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getTaskStackVisibleRectCenterX()I

    move-result v2

    if-ge p1, v2, :cond_2

    move v1, v0

    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowMenuAtTaskViewRight:Z

    :goto_1
    return-void
.end method

.method public static canShowTaskMenuForT()Z
    .locals 1

    .line 630
    sget-boolean v0, Lcom/miui/home/recents/views/RecentMenuView;->mWorldCirculateEnable:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    .line 631
    invoke-virtual {v0}, Lcom/miui/home/recents/ScreenPinnedHelper;->isPinEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->canLockTaskView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportMultiWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private clickAddPairButton()V
    .locals 4

    .line 505
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShortcutInfo:Lcom/miui/home/launcher/PairShortcutInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/IconCache;->getPairIconBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShortcutInfo:Lcom/miui/home/launcher/PairShortcutInfo;

    .line 511
    invoke-virtual {v2}, Lcom/miui/home/launcher/PairShortcutInfo;->getIconDrawable1()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShortcutInfo:Lcom/miui/home/launcher/PairShortcutInfo;

    .line 512
    invoke-virtual {v3}, Lcom/miui/home/launcher/PairShortcutInfo;->getIconDrawable2()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 509
    invoke-static {v1, v2, v3}, Lcom/miui/home/recents/util/PairUtils;->createPairBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 513
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShortcutInfo:Lcom/miui/home/launcher/PairShortcutInfo;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/recents/util/PairUtils;->addPairIconToWorkspace(Lcom/miui/home/launcher/PairShortcutInfo;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Z)V

    .line 514
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clickMultiWindowButton(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 430
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->toastForbidDockedWhenScreening()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 434
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->launchMultiWindowTaskEqualOrGreaterThanT()V

    goto :goto_0

    .line 437
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->launchMultiWindowTaskLessThanT(Landroid/view/View;)V

    .line 439
    :goto_0
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickMultiWindowMenuEvent(Ljava/lang/String;)V

    const-string p0, "clickMenu"

    .line 440
    invoke-static {p0, p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clickSmallWindowButton(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V
    .locals 3

    .line 519
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 520
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ForegroundTaskHelper;->getForegroundSmallWindows()Ljava/util/Set;

    move-result-object v0

    .line 521
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/ForegroundTaskHelper;->startForegroundSmallWindows()V

    .line 522
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/Task;->isInSmallWindow(Ljava/util/Set;)Z

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    if-eqz v1, :cond_1

    .line 525
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentMenuView;->startUserClickSmallWindow(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V

    .line 527
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->hasShellFeature()Z

    move-result p0

    if-nez p0, :cond_2

    .line 528
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;

    invoke-direct {p1, p2}, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 530
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/smallwindow/messages/DismissRecentToHome;

    invoke-direct {p1}, Lcom/miui/home/smallwindow/messages/DismissRecentToHome;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private clickWorldCirculate()V
    .locals 2

    .line 496
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v1, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome()V

    .line 501
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/recents/utilities/WorldCirculate;->startWorldCirculate(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private generatePairShortcutInfoIfNeed()V
    .locals 3

    .line 902
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 903
    invoke-static {}, Lcom/miui/home/recents/util/PairUtils;->isSupportAddPairFromRecent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->hasMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 905
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->toastWhenFirstShowAddPairButton(Lcom/miui/home/launcher/Launcher;)V

    .line 906
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    .line 907
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v2, v1}, Lcom/miui/home/recents/util/PairUtils;->findPairShortcutInfo(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/List;)Lcom/miui/home/launcher/PairShortcutInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShortcutInfo:Lcom/miui/home/launcher/PairShortcutInfo;

    if-eqz v1, :cond_0

    .line 910
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p0

    .line 909
    invoke-virtual {v1, v0, p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairIconAsync(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IconCache;)V

    :cond_0
    return-void
.end method

.method private getCalculatorForList(Ljava/util/List;)Lcom/miui/home/recents/views/MenuViewPositionCalculator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;)",
            "Lcom/miui/home/recents/views/MenuViewPositionCalculator;"
        }
    .end annotation

    .line 328
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/widget/FrameLayout;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/widget/FrameLayout;

    .line 329
    array-length p1, p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 337
    :cond_0
    new-instance p1, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    return-object p1

    .line 335
    :cond_1
    new-instance p1, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    return-object p1

    .line 333
    :cond_2
    new-instance p1, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    return-object p1

    .line 331
    :cond_3
    new-instance p1, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    return-object p1
.end method

.method private getFunctionListForDataCollector(ZZZZZ)Ljava/lang/String;
    .locals 0

    const-string p0, "\u5e94\u7528\u9501"

    if-eqz p1, :cond_0

    .line 834
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\u5206\u5c4f"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 837
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\u5e94\u7528\u8be6\u60c5"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz p3, :cond_2

    .line 840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\u5c0f\u7a97"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    if-eqz p4, :cond_3

    .line 843
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\u5999\u4eab"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-eqz p5, :cond_4

    .line 846
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\u6dfb\u52a0\u81f3\u684c\u9762"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private getMultiWindowIconResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1086
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 1089
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0802b3

    goto :goto_0

    :cond_1
    const v0, 0x7f0802b2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getSmallWindowIconResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1095
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0802b7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 1098
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0802b6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getTaskStackVisibleRectCenterX()I
    .locals 1

    .line 727
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    return p0

    .line 730
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 731
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 732
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    return p0
.end method

.method private getTaskViewWithoutHeaderRect()Landroid/graphics/Rect;
    .locals 2

    .line 583
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 584
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 585
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    return-object v0
.end method

.method private hasMultipleTasks()Z
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideAllChildView()V
    .locals 3

    const/4 v0, 0x0

    .line 852
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 853
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 854
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initPinView()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0a03a4

    .line 254
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskPinView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinView:Lcom/miui/home/recents/views/TaskPinView;

    .line 255
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAddPairItemEnabled()Z
    .locals 1

    .line 898
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShortcutInfo:Lcom/miui/home/launcher/PairShortcutInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInSplitSelectState()Z
    .locals 1

    .line 698
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isInSplitSelectState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isJapanOperators()Z
    .locals 1

    .line 652
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isShowSmallMenu()Z
    .locals 1

    .line 194
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_CETUS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x4

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportMultiWindow()Z
    .locals 4

    .line 656
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    const/4 v1, 0x0

    const-string v2, "RecentMenuView"

    if-nez v0, :cond_0

    const-string p0, "isSupportMultiWindow: is dockable, return false"

    .line 657
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 660
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "isSupportMultiWindow: is in multi window mode, return false"

    .line 661
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 664
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportsMultiWindowAndNotInSecuritySpace()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "isSupportMultiWindow: not supports multi window and not in security space, return false"

    .line 665
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 669
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportMultipleSmallWindowFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->hasShellFeature()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->isTaskInSmallWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "isSupportMultiWindow: support multiple smallWindows and task in small window mode, return false"

    .line 670
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 674
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportMultipleSmallWindowFeature()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "isSupportMultiWindow: not support multiple smallWindows and in small window mode, return false"

    .line 675
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-eqz v3, :cond_5

    const-string p0, "isSupportMultiWindow: in world circulate, return false"

    .line 679
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 682
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "isSupportMultiWindow: has multipleTasks, return false"

    .line 683
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 686
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->isInSplitSelectState()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "isSupportMultiWindow: in SplitSelectState, return false"

    .line 687
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 690
    :cond_7
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "isSupportMultiWindow: in HalfSplitState, return false"

    .line 691
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private isTaskInSmallWindowMode()Z
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 709
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 713
    :goto_0
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v2

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, p0, v0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isUseAndroidTShowTaskMenu()Z
    .locals 2

    .line 642
    invoke-static {}, Lcom/miui/home/recents/views/RecentMenuView;->isJapanOperators()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 645
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private synthetic lambda$onClick$0(Z)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->showOrHideLockImageView(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$1(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 399
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendLockTaskEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendUnlockTaskEvent(Ljava/lang/String;)V

    .line 403
    :goto_0
    new-instance p2, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/views/RecentMenuView;Z)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onMessageEvent$2()V
    .locals 3

    .line 805
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowingMenuList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 806
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->focusTalkBackToView(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$toastWhenFirstShowAddPairButton$3(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 916
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->isShouldShowAddPairToast()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$toastWhenFirstShowAddPairButton$4(Lcom/miui/home/launcher/Launcher;Ljava/lang/Boolean;)V
    .locals 1

    .line 918
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 919
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsShouldShowAddPairToast()V

    .line 920
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10040b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateMenuItemSmallWindowEnable$5(ZLjava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 936
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateMenuItemSmallWindowEnable$6(Ljava/lang/Boolean;)V
    .locals 0

    .line 937
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setMenuItemSmallWindowEnable(Z)V

    return-void
.end method

.method private launchMultiWindowTaskEqualOrGreaterThanT()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 445
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->launchSoscMultiWindowTask(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsView;->initiateSplitSelect(Lcom/android/systemui/shared/recents/model/Task;I)V

    :goto_0
    return-void
.end method

.method private launchMultiWindowTaskLessThanT(Landroid/view/View;)V
    .locals 12

    .line 463
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->makeSplitLaunchOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 464
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->onActivityStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 471
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 472
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 473
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    .line 474
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07062c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 475
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v7, v1, v6

    aget v1, v1, v6

    add-int/2addr v1, v2

    add-int/2addr v3, v4

    invoke-direct {v5, v7, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 478
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 477
    invoke-static {v1, v2, v0, v3, v6}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    new-instance v7, Lcom/miui/home/recents/views/RecentMenuView$2;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v1, v0, v5}, Lcom/miui/home/recents/views/RecentMenuView$2;-><init>(Lcom/miui/home/recents/views/RecentMenuView;Landroid/os/Handler;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 489
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v11

    .line 489
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->overridePendingAppTransitionMultiThumbFuture(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;Landroid/os/Handler;ZI)V

    :cond_1
    return-void
.end method

.method private launchSoscMultiWindowTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 453
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 454
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidLaunchSplit()V

    .line 455
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessStart()V

    .line 459
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    return-void
.end method

.method private makeSplitLaunchOptions()Landroid/app/ActivityOptions;
    .locals 0

    const/4 p0, 0x1

    .line 559
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method private measurePinViewWidth()V
    .locals 4

    .line 596
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinView:Lcom/miui/home/recents/views/TaskPinView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 600
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070622

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 601
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMenuItemSmallWindowEnable(Z)V
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 963
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 964
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 965
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f100021

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 966
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f100020

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 964
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setMenuWorldCirculateEnable(Z)V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 955
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 956
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_1

    const p1, 0x7f100410

    goto :goto_1

    :cond_1
    const p1, 0x7f100411

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startHideItemAnim(Landroid/view/View;)V
    .locals 2

    .line 977
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHideMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startShowItemAnim(Landroid/view/View;J)V
    .locals 2

    const/4 v0, 0x0

    .line 970
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f19999a    # 0.6f

    .line 971
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 972
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 973
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startShowOrHideItemsAnim(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 886
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowingMenuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 887
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowingMenuList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    mul-int/lit8 v2, v0, 0x28

    int-to-long v2, v2

    .line 890
    invoke-direct {p0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;J)V

    goto :goto_1

    .line 892
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startHideItemAnim(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startUserClickSmallWindow(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V
    .locals 2

    .line 536
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startFreeformActivity(Landroid/content/ComponentName;Lcom/android/systemui/shared/recents/model/Task;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "clickMenu"

    .line 537
    invoke-static {p0, p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterSmallWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private toastForbidDockedWhenScreening()Z
    .locals 4

    .line 543
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cast_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 545
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    const v3, 0x7f10041b

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(I)V

    .line 547
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    .line 551
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    return v2
.end method

.method private toastWhenFirstShowAddPairButton(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 916
    sget-object p0, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda6;->INSTANCE:Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateMenuItemBackground()V
    .locals 3

    .line 1028
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->isShowSmallMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080684

    goto :goto_0

    :cond_0
    const v0, 0x7f08067f

    .line 1033
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1035
    invoke-static {}, Lcom/miui/home/recents/util/PairUtils;->isSupportAddPairFromRecent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1036
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1038
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1039
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPin:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1040
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1041
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1043
    :cond_2
    sget-boolean v1, Lcom/miui/home/recents/views/RecentMenuView;->mWorldCirculateEnable:Z

    if-eqz v1, :cond_3

    .line 1044
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private updateMenuItemSmallWindowEnable()Z
    .locals 5

    const/4 v0, 0x0

    .line 930
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->setMenuItemSmallWindowEnable(Z)V

    .line 931
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 932
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 933
    iget v2, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 934
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v3, v4, v0, v1, v2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;II)Z

    move-result v0

    .line 936
    new-instance v1, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda5;-><init>(Z)V

    new-instance v2, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/views/RecentMenuView;)V

    const/4 p0, 0x0

    invoke-static {v1, v2, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method private updateMenuItemWorldCirculateEnable()Z
    .locals 6

    .line 945
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 946
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->isTaskInSmallWindowMode()Z

    move-result v3

    .line 947
    iget-object v4, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v5, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDevicePlatform:Ljava/lang/String;

    const-string v5, "AndroidPhone"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 949
    :goto_2
    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->setMenuWorldCirculateEnable(Z)V

    return v1
.end method

.method private updateMenuViewPositionCalculator()V
    .locals 1

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isSupportRecentsMenuEnterWorldCirculate()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/recents/views/RecentMenuView;->mWorldCirculateEnable:Z

    .line 263
    invoke-static {}, Lcom/miui/home/recents/views/RecentMenuView;->isUseAndroidTShowTaskMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateNormalShowingMenuInfoT()V

    goto :goto_0

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateNormalShowingMenuInfoS()V

    .line 268
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updatePairShowingMenuInfo()V

    .line 269
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionNormalCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    .line 270
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowingMenuList:Ljava/util/List;

    return-void
.end method

.method private updateNormalShowingMenuInfoS()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->canLockTaskView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->canLockTaskView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->getCalculatorForList(Ljava/util/List;)Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionNormalCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    return-void
.end method

.method private updateNormalShowingMenuInfoT()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 297
    sget-boolean v0, Lcom/miui/home/recents/views/RecentMenuView;->mWorldCirculateEnable:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculateContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->canLockTaskView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_3
    sget-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/ScreenPinnedHelper;->isPinEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPinContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->getCalculatorForList(Ljava/util/List;)Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionNormalCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    return-void
.end method

.method private updatePairShowingMenuInfo()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShowingMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    invoke-static {}, Lcom/miui/home/recents/util/PairUtils;->isSupportAddPairFromRecent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShowingMenuList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPairContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShowingMenuList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->getCalculatorForList(Ljava/util/List;)Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionPairCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    return-void
.end method

.method private updateShowingMenuInfoIfNeed()V
    .locals 4

    .line 859
    invoke-static {}, Lcom/miui/home/recents/util/PairUtils;->isSupportAddPairFromRecent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 860
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShowingMenuList:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowingMenuList:Ljava/util/List;

    .line 862
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionPairCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    .line 863
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->hideAllChildView()V

    move v0, v1

    .line 864
    :goto_0
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShowingMenuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 865
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShowingMenuList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 866
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowingMenuList:Ljava/util/List;

    .line 870
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionNormalCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    .line 871
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->hideAllChildView()V

    move v0, v1

    .line 872
    :goto_1
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 873
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mNormalShowingMenuList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 874
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 879
    :cond_1
    sget-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/ScreenPinnedHelper;->isPinEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowingMenuList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPinContainer:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 880
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinView:Lcom/miui/home/recents/views/TaskPinView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 881
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinView:Lcom/miui/home/recents/views/TaskPinView;

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/ScreenPinnedHelper;->canTaskPin(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/miui/home/recents/views/TaskPinView;->setPinningEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getTaskView()Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 1103
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    .line 1019
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    return p0
.end method

.method protected onActivityStarted()Z
    .locals 0

    .line 563
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onSplitScreenInvoked()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 568
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 571
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 383
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 416
    :sswitch_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->clickWorldCirculate()V

    goto :goto_1

    .line 410
    :sswitch_1
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, v2, v0}, Lcom/miui/home/recents/views/RecentMenuView;->clickSmallWindowButton(Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :sswitch_2
    sget-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/ScreenPinnedHelper;->startScreenPinning(I)V

    .line 421
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZZZZII)V

    goto :goto_1

    .line 407
    :sswitch_3
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentMenuView;->clickMultiWindowButton(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :sswitch_4
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    xor-int/2addr v2, v1

    .line 396
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performRecentViewLockChanged(Landroid/view/View;Z)V

    .line 397
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v4, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2, v0}, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/views/RecentMenuView;ZLjava/lang/String;)V

    invoke-static {v3, v2, v4}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->lockOrUnlockApp(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 391
    :sswitch_5
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendShowAppInfoEvent(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v2, v3}, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 413
    :sswitch_6
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->clickAddPairButton()V

    goto :goto_1

    .line 385
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click taskViewMenu error, task="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentMenuView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a026e

    if-eq p1, v0, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(ZZ)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0263 -> :sswitch_6
        0x7f0a0265 -> :sswitch_5
        0x7f0a0267 -> :sswitch_4
        0x7f0a0269 -> :sswitch_3
        0x7f0a026b -> :sswitch_2
        0x7f0a026e -> :sswitch_1
        0x7f0a0270 -> :sswitch_0
        0x7f0a03a4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDarkModeChange()V
    .locals 4

    .line 1049
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 1051
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 1052
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_1

    .line 1053
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getMultiWindowIconResource()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1056
    invoke-static {}, Lcom/miui/home/recents/util/PairUtils;->isSupportAddPairFromRecent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1057
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    const v2, 0x7f0802b0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1059
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v2, 0x7f0802b5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1060
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPin:Landroid/widget/ImageView;

    const v2, 0x7f0806e5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1061
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1062
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getSmallWindowIconResource()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    :cond_3
    sget-boolean v1, Lcom/miui/home/recents/views/RecentMenuView;->mWorldCirculateEnable:Z

    if-eqz v1, :cond_4

    .line 1065
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    const v2, 0x7f0802b9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1067
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1068
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->onDarkModeChange()V

    .line 1070
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuItemBackground()V

    .line 1072
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinView:Lcom/miui/home/recents/views/TaskPinView;

    if-eqz p0, :cond_6

    .line 1073
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskPinView;->onDarkModeChanged()V

    :cond_6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 576
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 577
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 199
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0266

    .line 200
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0268

    .line 201
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0264

    .line 202
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPairContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a026a

    .line 203
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a026f

    .line 204
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0271

    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculateContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a026c

    .line 206
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPinContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0265

    .line 207
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v0, 0x7f0a026b

    .line 208
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPin:Landroid/widget/ImageView;

    const v0, 0x7f0a0267

    .line 209
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    const v0, 0x7f0a0263

    .line 210
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    const v0, 0x7f0a0269

    .line 211
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const v0, 0x7f0a026e

    .line 212
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    const v0, 0x7f0a0270

    .line 213
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    const v0, 0x7f0a026d

    .line 214
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinViewStub:Landroid/view/ViewStub;

    .line 216
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100410

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    const v1, 0x7f0802b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v1, 0x7f0802b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10040c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getMultiWindowIconResource()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getSmallWindowIconResource()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    const v1, 0x7f0802b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10040a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPin:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 237
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 238
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v0, [Landroid/view/View;

    .line 239
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPin:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPin:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v0, [Landroid/view/View;

    .line 240
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v0, [Landroid/view/View;

    .line 241
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v0, [Landroid/view/View;

    .line 242
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v0, [Landroid/view/View;

    .line 243
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v0, v0, [Landroid/view/View;

    .line 244
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemWorldCirculate:Landroid/widget/ImageView;

    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->initPinView()V

    .line 248
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuViewPositionCalculator()V

    .line 249
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuItemBackground()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 606
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getTaskViewWithoutHeaderRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 607
    sget-object p1, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    iget p1, p1, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    invoke-static {v2, p1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 608
    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 610
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 611
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mRecentsViewRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mRecentsViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 616
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mRecentsViewRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    .line 617
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/miui/home/recents/views/RecentMenuView;->mVerticalMargin:I

    iget v5, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHorizontalMargin:I

    .line 616
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->init(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 618
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    .line 619
    iget-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowMenuAtTaskViewRight:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    move p2, p3

    .line 620
    :goto_1
    iget-object p4, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 621
    invoke-virtual {p4}, Lcom/miui/home/recents/views/TaskStackView;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->isMenuPositionDecidedByTaskViewPos()Z

    move-result p4

    xor-int/2addr p3, p4

    .line 618
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->setPosInHorizontal(IZ)V

    .line 622
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->layoutMenuItem()V

    .line 624
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinView:Lcom/miui/home/recents/views/TaskPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_2

    .line 625
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinView:Lcom/miui/home/recents/views/TaskPinView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBoundOnScreen()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->layoutPinView(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 345
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 346
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 591
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->measurePinViewWidth()V

    .line 592
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/IsSupportMultiWindowChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 827
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuViewPositionCalculator()V

    .line 828
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuItemBackground()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/IsSupportSmallWindowChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 821
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuViewPositionCalculator()V

    .line 822
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuItemBackground()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ShowTaskMenuEvent;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 745
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    if-nez v0, :cond_a

    .line 746
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 747
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    .line 748
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    .line 749
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setIsShowingMenu(Z)V

    .line 750
    iget-object v1, p1, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;->taskView:Lcom/miui/home/recents/views/TaskView;

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 751
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 752
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateShowingMenuInfoIfNeed()V

    .line 753
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->isSupportMultiWindow()Z

    move-result v3

    .line 754
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 755
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 756
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v2, :cond_1

    .line 757
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f10040f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 758
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f10040d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 756
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    const/16 v4, 0xff

    const/16 v5, 0x50

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 760
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 761
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f100023

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 762
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f100022

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 760
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 763
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuItemSmallWindowEnable()Z

    move-result v1

    .line 764
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuItemWorldCirculateEnable()Z

    move-result v6

    .line 765
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->hasMultipleTasks()Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    .line 766
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 767
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_4

    :cond_4
    move v8, v5

    :goto_4
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 769
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowingMenuList:Ljava/util/List;

    iget-object v8, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPinContainer:Landroid/widget/FrameLayout;

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 770
    sget-object v2, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    iget-object v8, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v8}, Lcom/miui/home/recents/ScreenPinnedHelper;->canTaskPin(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    .line 771
    iget-object v8, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPin:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 772
    iget-object v8, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemPin:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_5

    :cond_5
    move v2, v5

    :goto_5
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 775
    :cond_6
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    iget-object v8, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 777
    invoke-virtual {p1}, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;->getRelativePosition()Lcom/miui/home/recents/util/RelativePosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->calculateMenuPositionToTaskView(Lcom/miui/home/recents/util/RelativePosition;)V

    const/4 p1, 0x0

    .line 778
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 779
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 781
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->generatePairShortcutInfoIfNeed()V

    .line 782
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->isAddPairItemEnabled()Z

    move-result p1

    .line 783
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 784
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemAddPair:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    move v4, v5

    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 786
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->startShowOrHideItemsAnim(Z)V

    .line 788
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 789
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xb4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 790
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 792
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v4, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v2, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShowTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;)V

    .line 795
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    const/4 v4, 0x4

    .line 796
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_7

    .line 799
    :cond_8
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 800
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 801
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v8

    move-object v2, p0

    move v4, v7

    move v5, v1

    move v7, p1

    .line 802
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/views/RecentMenuView;->getFunctionListForDataCollector(ZZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 800
    invoke-static {v0, v8, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendLongCLickTaskEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 804
    :cond_9
    new-instance p1, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/RecentMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/views/RecentMenuView;)V

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/WorldCirculateChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 813
    sget-boolean v0, Lcom/miui/home/recents/views/RecentMenuView;->mWorldCirculateEnable:Z

    invoke-virtual {p1}, Lcom/miui/home/recents/messages/WorldCirculateChangedEvent;->isSupportWorldCirculate()Z

    move-result p1

    if-eq v0, p1, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuViewPositionCalculator()V

    .line 815
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->updateMenuItemBackground()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/smallwindow/messages/OpenSmallWindowsEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 738
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->isTaskInSmallWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 739
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    :cond_0
    return-void
.end method

.method public onSmallestScreenWidthChanged()V
    .locals 3

    .line 1078
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mVerticalMargin:I

    .line 1080
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHorizontalMargin:I

    .line 1081
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getMultiWindowIconResource()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const v1, 0x7f08067f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-nez v0, :cond_3

    .line 371
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewScaleDownMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-eqz v0, :cond_3

    .line 364
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewScaleUpMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 378
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 354
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public removeMenu(Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 981
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(ZZ)Z

    move-result p0

    return p0
.end method

.method public removeMenu(ZZ)Z
    .locals 4

    .line 985
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 986
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    .line 987
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    .line 988
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/TaskStackView;->setIsShowingMenu(Z)V

    if-eqz p1, :cond_0

    .line 990
    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowOrHideItemsAnim(Z)V

    .line 992
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 993
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xb4

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 994
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 996
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskPinView:Lcom/miui/home/recents/views/TaskPinView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 997
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p2

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p2, v2, v3, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startRemoveTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;Z)V

    const/4 p1, 0x0

    .line 999
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mPairShortcutInfo:Lcom/miui/home/launcher/PairShortcutInfo;

    .line 1002
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/views/TaskView;

    .line 1003
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 1005
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_3

    .line 1006
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 1008
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-void
.end method
