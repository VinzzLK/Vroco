.class public Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;
.source "AppQuickSwitchActivity.java"


# instance fields
.field private fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field handler:Landroid/os/Handler;

.field private mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

.field private mFinishGestureDetection:Z

.field private mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private mFsGestureView:Landroid/view/View;

.field private mIsShowNavigationHandle:Z

.field private mIsStartGesture:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field mSwipeAnimationRunnable:Ljava/lang/Runnable;

.field private mTranslationX:I

.field private mVelocityThreshold:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mXCur:F

.field private mXDown:F

.field private mYCur:F

.field private mYDown:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->handler:Landroid/os/Handler;

    .line 212
    new-instance v0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$4;-><init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mSwipeAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;Landroid/view/MotionEvent;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->onNavigationHandle(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object p0
.end method

.method private static getScreenDimensions(Landroid/content/Context;)[I
    .locals 3

    const-string/jumbo v0, "window"

    .line 245
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 246
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 247
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 248
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    aput v1, p0, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v1, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$1;-><init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-static {p0, v0}, Lcom/android/systemui/fsgesture/GestureTitleViewUtil;->setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$2;-><init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initPosition()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 53
    sget v0, Lcom/miui/home/gesturedemo/R$id;->fsgesture_title_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 54
    sget v0, Lcom/miui/home/gesturedemo/R$id;->card_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fsgesture/ScrollerLayout;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 55
    sget v0, Lcom/miui/home/gesturedemo/R$id;->fsg_nav_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureView:Landroid/view/View;

    .line 56
    sget v0, Lcom/miui/home/gesturedemo/R$id;->fsgesture_swipe_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setRTLParams()V

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->getScreenDimensions(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v2, 0x0

    .line 64
    aget v2, v0, v2

    iput v2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenHeight:I

    .line 65
    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    .line 66
    iget-object v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    const/high16 v0, 0x43af0000    # 350.0f

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityThreshold:F

    return-void
.end method

.method private obtainVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private onNavigationHandle(Landroid/view/MotionEvent;)V
    .locals 6

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->obtainVelocityTracker(Landroid/view/MotionEvent;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto/16 :goto_3

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->performHapticFeedbackIfNeeded(Landroid/view/MotionEvent;)V

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYCur:F

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsShowNavigationHandle:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFinishGestureDetection:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    iget v2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    sub-float/2addr p1, v0

    float-to-double v4, p1

    .line 135
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_2

    .line 136
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFinishGestureDetection:Z

    .line 137
    iget p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYCur:F

    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    iget v2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    iget v3, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 138
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    .line 142
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    if-eqz p1, :cond_a

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->updatePosition()V

    goto/16 :goto_3

    .line 148
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    if-eqz p1, :cond_8

    .line 149
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 150
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 154
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mTranslationX:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    neg-int v3, v2

    int-to-float v3, v3

    const/high16 v4, 0x40600000    # 3.5f

    div-float/2addr v3, v4

    cmpg-float v1, v1, v3

    const/4 v3, 0x0

    if-ltz v1, :cond_7

    if-gez v0, :cond_4

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityThreshold:F

    neg-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    goto :goto_1

    :cond_4
    int-to-float v1, v0

    int-to-float v5, v2

    div-float/2addr v5, v4

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_6

    if-lez v0, :cond_5

    .line 156
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v3

    goto :goto_2

    .line 157
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/ScrollerLayout;->getHorizontalGap()I

    move-result p1

    add-int/2addr v2, p1

    int-to-float p1, v2

    goto :goto_2

    .line 155
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/ScrollerLayout;->getHorizontalGap()I

    move-result p1

    add-int/2addr v2, p1

    neg-int p1, v2

    int-to-float p1, p1

    .line 159
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_8

    .line 162
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->postFinishDelay()V

    .line 166
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->releaseVelocityTracker()V

    goto :goto_3

    .line 119
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    .line 122
    invoke-static {p0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsShowNavigationHandle:Z

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFinishGestureDetection:Z

    .line 124
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mIsStartGesture:Z

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->initPosition()V

    :cond_a
    :goto_3
    return-void
.end method

.method private performHapticFeedbackIfNeeded(Landroid/view/MotionEvent;)V
    .locals 3

    .line 108
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40600000    # 3.5f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 110
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_2
    return-void
.end method

.method private postFinishDelay()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;-><init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private startSwipeAnimationDelay()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mSwipeAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopSwipeAnimation()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mSwipeAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updatePosition()V
    .locals 3

    .line 96
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYCur:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 100
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXCur:F

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mXDown:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mTranslationX:I

    .line 101
    iget-object v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 103
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYCur:F

    iget v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mYDown:F

    sub-float/2addr v0, v1

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private updateTitle()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 207
    invoke-static {p0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    .line 206
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/miui/home/gesturedemo/R$layout;->activity_app_quick:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->initView()V

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->initData()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 199
    invoke-super {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->onResume()V

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/android/systemui/fsgesture/FsgestureUtil;->INSTANCE:Lcom/android/systemui/fsgesture/FsgestureUtil;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/FsgestureUtil;->wholeHideSystemBars(Landroid/view/View;)V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->updateTitle()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 234
    invoke-super {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->onStart()V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->startSwipeAnimationDelay()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 240
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->stopSwipeAnimation()V

    return-void
.end method
