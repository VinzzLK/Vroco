.class public Lcom/miui/home/recents/GestureStubView;
.super Landroid/widget/FrameLayout;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;,
        Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;,
        Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;,
        Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;,
        Lcom/miui/home/recents/GestureStubView$H;,
        Lcom/miui/home/recents/GestureStubView$EventPosition;
    }
.end annotation


# static fields
.field private static isUserSetUp:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppResumed:Z

.field private mAssistX1:F

.field private mAssistX2:F

.field private mBackGestureCallBack:Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

.field private mBackInvokeCallbackStarted:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrAction:I

.field private mCurrX:F

.field private mCurrY:F

.field private mDensity:F

.field private mDisableQuickSwitch:Z

.field private mDisableTouch:Z

.field private mDisableTouchBySwipeStatusBar:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDownX:F

.field private mDownY:F

.field private mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

.field private mGestureStubDefaultSize:I

.field private mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

.field private mGestureStubPos:I

.field private mGestureStubSize:I

.field private mGestureTouchHeight:I

.field private mGesturesBackCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

.field private mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

.field private mHandler:Lcom/miui/home/recents/GestureStubView$H;

.field private mHideNotch:Z

.field private mInjectBackRunnable:Ljava/lang/Runnable;

.field private mIsDuringClosingAnimation:Z

.field private mIsGestureAnimationEnabled:Z

.field private mIsGestureStarted:Z

.field private mKeepHidden:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastTouchableRegion:Landroid/graphics/Region;

.field private mLocation:[I

.field private mNeedAdaptRotation:Z

.field private mNeedAdjustArrowPosition:Z

.field private mNeedRender:Z

.field private mNotchRect:Landroid/graphics/Rect;

.field private mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

.field private mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

.field private mSwipeInRightDirection:Z

.field private mUseEmptyTouchableRegion:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;I)V
    .locals 3

    .line 361
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const-class v0, Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 122
    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mLocation:[I

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    .line 125
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    .line 126
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    .line 127
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    .line 128
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 129
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    .line 130
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureTouchHeight:I

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    .line 133
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsDuringClosingAnimation:Z

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    .line 137
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mAppResumed:Z

    .line 148
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 149
    iput v2, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    .line 150
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 151
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableQuickSwitch:Z

    .line 169
    new-instance v2, Lcom/miui/home/recents/GestureStubView$1;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/GestureStubView$1;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    .line 176
    new-instance v2, Lcom/miui/home/recents/GestureStubView$2;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/GestureStubView$2;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 202
    new-instance v2, Lcom/miui/home/recents/GestureStubView$3;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/GestureStubView$3;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    .line 636
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    .line 650
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 362
    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mBackGestureCallBack:Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

    .line 363
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    .line 365
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 367
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    .line 368
    iput p3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    invoke-static {p3}, Lcom/miui/home/recents/GestureStubView;->getPosStringSuffix(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    .line 371
    new-instance p2, Lcom/miui/home/recents/GestureStubView$H;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/home/recents/GestureStubView$H;-><init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const-string p2, "window"

    .line 372
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 374
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    .line 376
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeForceDarkAllowed(Landroid/view/View;)V

    .line 378
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initNotchRect()V

    .line 379
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureStubSize()V

    .line 380
    iget-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    new-instance p2, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;-><init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    const-string p2, "display"

    .line 382
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 383
    new-instance p2, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    iget-object p3, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;-><init>(Lcom/miui/home/recents/GestureStubView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 385
    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    move-result p1

    sput-boolean p1, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    .line 387
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    .line 388
    invoke-direct {p0, v1}, Lcom/miui/home/recents/GestureStubView;->setKeepHidden(Z)V

    .line 389
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz p1, :cond_0

    .line 390
    new-instance p1, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;

    invoke-direct {p1}, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    goto :goto_0

    .line 391
    :cond_0
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz p1, :cond_1

    .line 392
    new-instance p1, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;

    invoke-direct {p1}, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    .line 394
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initAndAddGestureBackArrow()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/GestureStubView;Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->updateTouchRegion(Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/GestureStubView;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mDownX:F

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/GestureStubView;I)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->isInSpeedLimit(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isSwipeRightInDirection()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mBackGestureCallBack:Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mAppResumed:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->shockByBackGesture()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/GestureStubView;IZ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/miui/home/recents/GestureStubView;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/home/recents/GestureStubView;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/recents/GestureStubView;)Landroid/os/Vibrator;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/GestureStubView;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mInjectBackRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/miui/home/recents/GestureStubView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mInjectBackRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/OnBackInvokedCallbackInterface;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/home/recents/GestureStubView;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStub()V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateAssistXPosition()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$302(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptRotation()V

    return-void
.end method

.method static synthetic access$3202(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdaptRotation:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->renderView()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/recents/GestureStubView;F)[I
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->calcBackArrowParamsAtNotchSide(F)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/GestureStubView;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    return p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/GestureStubView;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    return p0
.end method

.method private adaptAlignNotchArrowXStart()I
    .locals 2

    .line 542
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isFocusWindowAdaptNotch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 543
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private adaptBesideNotchArrowXStart()I
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isFocusWindowAdaptNotch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 551
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private adaptNotch()V
    .locals 4

    .line 749
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_5

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 751
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 771
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 772
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    .line 762
    :cond_1
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-ne v0, v2, :cond_2

    .line 763
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 764
    iput-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    :cond_2
    if-nez v0, :cond_5

    .line 766
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 767
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    .line 753
    :cond_3
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_4

    .line 754
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 755
    iput-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    .line 757
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 758
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    :cond_5
    :goto_0
    return-void
.end method

.method private adaptNotchHidden()V
    .locals 1

    .line 1201
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdaptRotation:Z

    if-eqz v0, :cond_0

    .line 1202
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->rotateGesture()V

    :cond_0
    const/4 v0, 0x0

    .line 1204
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdaptRotation:Z

    return-void
.end method

.method private adaptPNotchScreen(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    :try_start_0
    const-string v0, "android.view.WindowManager$LayoutParams"

    .line 903
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 906
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 908
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v0, "adaptPNotchScreen"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private adaptRotation()V
    .locals 4

    .line 1188
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 1189
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1190
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adaptRotation   currentRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   mRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    if-eq v0, v1, :cond_0

    .line 1193
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    .line 1194
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateGestureTouchHeight()V

    .line 1195
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initNotchRect()V

    .line 1196
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->rotateGesture()V

    :cond_0
    return-void
.end method

.method private calcBackArrowParamsAtNotchSide(F)[I
    .locals 7

    .line 483
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    .line 495
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 496
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 497
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 498
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 500
    :cond_1
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3

    .line 487
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 488
    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 489
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 491
    :cond_4
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    :goto_0
    new-array v3, v1, [I

    .line 506
    sget-object v4, Lcom/miui/home/recents/GestureStubView$5;->$SwitchMap$com$miui$home$recents$GestureStubView$EventPosition:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v0, v2, :cond_8

    if-eq v0, v6, :cond_8

    if-eq v0, v1, :cond_5

    goto :goto_2

    .line 514
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    aput p1, v3, v5

    .line 515
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptAlignNotchArrowXStart()I

    move-result p1

    aput p1, v3, v2

    .line 516
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isNotAdaptToNotch()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    if-eqz p1, :cond_6

    goto :goto_1

    .line 519
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    const/high16 v0, 0x42580000    # 54.0f

    mul-float v1, p0, v0

    sub-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    mul-float/2addr p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    aput p0, v3, v6

    goto :goto_2

    :cond_7
    :goto_1
    aput v4, v3, v6

    goto :goto_2

    :cond_8
    float-to-int p1, p1

    aput p1, v3, v5

    .line 510
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptBesideNotchArrowXStart()I

    move-result p0

    aput p0, v3, v2

    aput v4, v3, v6

    :goto_2
    return-object v3
.end method

.method private getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 914
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7eb

    const/16 v4, 0x128

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 922
    invoke-direct {p0, v6}, Lcom/miui/home/recents/GestureStubView;->adaptPNotchScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 923
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return-object p0
.end method

.method private getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 865
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 867
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptRotation()V

    .line 868
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 869
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x7eb

    const/16 v4, 0x128

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v7, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 877
    invoke-direct {p0, v7}, Lcom/miui/home/recents/GestureStubView;->adaptPNotchScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 878
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 879
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_0

    .line 881
    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    .line 882
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 885
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->addExtraFlag(Landroid/view/WindowManager$LayoutParams;I)V

    .line 886
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_1

    const/4 v6, 0x1

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_2

    const v1, 0x800003

    goto :goto_1

    :cond_2
    const v1, 0x800005

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v6, :cond_3

    const-string v1, "GestureStubLeft"

    goto :goto_2

    :cond_3
    const-string v1, "GestureStubRight"

    .line 888
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 889
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private getNavStubView()Lcom/miui/home/recents/NavStubView;
    .locals 0

    .line 938
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private getNotchHeight()I
    .locals 2

    .line 448
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_CAMERA_IN_CORNER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 451
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isNotAdaptToNotch()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 456
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 461
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    .line 459
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method private getNotchWidth()I
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 437
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    .line 435
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getPosStringSuffix(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "_Default"

    return-object p0

    :cond_0
    const-string p0, "_Right"

    return-object p0

    :cond_1
    const-string p0, "_Left"

    return-object p0
.end method

.method private handleLandscapeBreakableTouch(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 3

    .line 965
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 970
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->getMaintainGestureProxyPosition()I

    move-result v2

    .line 972
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-ne v2, p0, :cond_2

    if-nez p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 976
    :goto_0
    invoke-virtual {v0, p1, p0}, Lcom/miui/home/recents/NavStubView;->appTouchResolution(Landroid/view/MotionEvent;I)V

    .line 977
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    return-object v1
.end method

.method private hideGestureStub()V
    .locals 1

    const/4 v0, 0x1

    .line 588
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setKeepHidden(Z)V

    .line 589
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    .line 590
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureBackArrowView;->reset()V

    .line 595
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v0, "hideGestureStub"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initAndAddGestureBackArrow()V
    .locals 3

    .line 1066
    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    .line 1067
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initGestureEdgeSize()[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 693
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result v1

    iget v4, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    add-int/2addr v1, v4

    aput v1, v0, v2

    .line 695
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr p0, v4

    aput p0, v0, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 697
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    aput v1, v0, v2

    .line 698
    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr v2, v1

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result p0

    sub-int/2addr v2, p0

    aput v2, v0, v3

    goto :goto_0

    .line 700
    :cond_1
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    aput v1, v0, v2

    .line 701
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr p0, v1

    aput p0, v0, v3

    :goto_0
    return-object v0
.end method

.method private initGestureRouteState(II)V
    .locals 1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-ne p2, p0, :cond_2

    .line 950
    :cond_1
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->setMaintainGestureProxyPosition(I)V

    :cond_2
    return-void
.end method

.method private initGestureStubSize()V
    .locals 5

    .line 685
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initScreenSizeAndDensity()V

    .line 686
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureEdgeSize()[I

    move-result-object v0

    .line 687
    new-instance v1, Lcom/miui/home/recents/GesturesBackController;

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/recents/GesturesBackController;-><init>(Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;II)V

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    return-void
.end method

.method private initNotchRect()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 411
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    .line 426
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotchRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initScreenSizeAndDensity()V
    .locals 5

    .line 707
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 708
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 709
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 711
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 712
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 713
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initScreenSizeAndDensity, realX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", realY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v1, :cond_0

    .line 717
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    .line 718
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    goto :goto_0

    .line 720
    :cond_0
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    .line 721
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    .line 723
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateGestureTouchHeight()V

    .line 725
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE_WITH_SHELL:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    .line 726
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 728
    :cond_1
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    const/16 v1, 0x2d0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x438

    const/16 v2, 0x3e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a0

    if-eq v0, v1, :cond_2

    .line 739
    iput v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x52

    .line 730
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 733
    :cond_3
    iput v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    :cond_4
    const/16 v0, 0x28

    .line 736
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    .line 743
    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mGestureStubSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    return-void
.end method

.method private injectKeyEvent(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1085
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(IZ)V

    return-void
.end method

.method private injectKeyEvent(IZ)V
    .locals 3

    .line 1090
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectKeyEvent keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 1094
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->shockByBackGesture()V

    .line 1096
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mInjectBackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1097
    new-instance p2, Lcom/miui/home/recents/GestureStubView$4;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/recents/GestureStubView$4;-><init>(Lcom/miui/home/recents/GestureStubView;I)V

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mInjectBackRunnable:Ljava/lang/Runnable;

    .line 1131
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mBackGestureCallBack:Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;

    invoke-interface {p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$IBackStubCallBack;->injectKeyEvent(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mInjectBackRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1132
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1134
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mInjectBackRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static isDensityChangeOrScreenSizeChange(I)Z
    .locals 4

    and-int/lit16 v0, p0, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit16 v3, p0, 0x800

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-nez p0, :cond_4

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    return v1
.end method

.method private isFocusWindowAdaptNotch()Z
    .locals 5

    .line 531
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getViewRootImpl"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 532
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isFocusWindowAdaptNotch"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 534
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 536
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v1, "adaptBesideNotchArrowXStart"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private isInSpeedLimit(I)Z
    .locals 2

    .line 322
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNotAdaptToNotch()Z
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchWidth()I

    move-result v0

    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    div-int/lit8 p0, p0, 0x4

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportLandscapeBreakableInCurrentState()Z
    .locals 1

    .line 929
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 931
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 932
    invoke-static {}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->getIsAnimationRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 933
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 934
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportLandscapeBreakable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSwipeRightInDirection()Z
    .locals 3

    .line 335
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mSwipeInRightDirection:Z

    goto :goto_0

    .line 339
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mSwipeInRightDirection:Z

    .line 341
    :goto_0
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mSwipeInRightDirection:Z

    return p0
.end method

.method private static isUserSetUp(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 353
    sget-boolean v0, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    if-nez v0, :cond_1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 354
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user_setup_complete"

    .line 355
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    .line 357
    :cond_1
    sget-boolean p0, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    return p0
.end method

.method private onKeepHiddenChanged()V
    .locals 1

    .line 630
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateTouchable()V

    .line 631
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_V:Z

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->onBackCancelled()V

    :cond_0
    return-void
.end method

.method private renderView()V
    .locals 2

    .line 837
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 841
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 840
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v1, "renderView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 845
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedRender:Z

    .line 846
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->tryRequestTransparentRegionForParent()V

    return-void
.end method

.method private resetRenderProperty(Ljava/lang/String;)V
    .locals 7

    .line 814
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 818
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 819
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 820
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 821
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    .line 822
    iget-object v4, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, 0x0

    if-ne v1, v5, :cond_2

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v1, :cond_2

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v3, v1, :cond_2

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "showGestureStub"

    .line 824
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    .line 825
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetRenderProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   isLayoutParamChanged="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iput-boolean v6, p0, Lcom/miui/home/recents/GestureStubView;->mNeedRender:Z

    .line 833
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->tryRequestTransparentRegionForParent()V

    return-void
.end method

.method private rotateGesture()V
    .locals 2

    .line 1208
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setSize(I)V

    .line 1209
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v1, "rotateGesture---requestApplyInsets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    return-void
.end method

.method private setKeepHidden(Z)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeepHidden    old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eq v0, p1, :cond_0

    .line 624
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    .line 625
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->onKeepHiddenChanged()V

    :cond_0
    return-void
.end method

.method private setSize(I)V
    .locals 3

    .line 778
    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 779
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptNotch()V

    .line 780
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    if-eqz p1, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureEdgeSize()[I

    move-result-object p1

    .line 782
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/GesturesBackController;->setGestureEdgeWidth(II)V

    .line 786
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "setSize"

    .line 787
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 790
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private shockByBackGesture()V
    .locals 1

    .line 1076
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->isSupportEffectGestureBackLinear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performGestureBackHandUp()V

    .line 1078
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setArrowFeedBackDone(Z)V

    goto :goto_0

    .line 1080
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performInjectKeyEvent(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private shouldBlockSideHomeGestureDuringClosingAnimation(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 956
    invoke-static {}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->getMaintainGestureProxyPosition()I

    move-result v0

    .line 957
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 958
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager;->isClosingAnimRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 959
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager;->isClosingToRecentsAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mIsDuringClosingAnimation:Z

    .line 961
    :cond_2
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mIsDuringClosingAnimation:Z

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    if-eq v0, p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method static supportNextTask(Landroid/content/ContentResolver;)Z
    .locals 1

    .line 349
    sget-object v0, Lcom/miui/home/launcher/KeyguardStateListener;->sInstance:Lcom/miui/home/launcher/KeyguardStateListener;

    invoke-virtual {v0}, Lcom/miui/home/launcher/KeyguardStateListener;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private tryRequestTransparentRegionForParent()V
    .locals 1

    .line 853
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 857
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 861
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method private updateAssistXPosition()V
    .locals 4

    .line 326
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    sub-float v2, v1, v0

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    .line 327
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    return-void
.end method

.method private updateGestureTouchHeight()V
    .locals 3

    .line 893
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const v1, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 896
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureTouchHeight:I

    goto :goto_1

    .line 894
    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureTouchHeight:I

    :goto_1
    return-void
.end method

.method private updateTouchRegion(Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V
    .locals 6

    const/4 v0, 0x3

    .line 1214
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableInsets(I)V

    .line 1215
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 1216
    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1217
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Region;->set(IIII)Z

    goto :goto_3

    .line 1221
    :cond_0
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 1226
    :cond_1
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureTouchHeight:I

    sub-int v4, v1, v2

    div-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 1227
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 1222
    :cond_2
    :goto_0
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    const/high16 v4, 0x41c80000    # 25.0f

    .line 1223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    sub-int/2addr v1, v4

    .line 1224
    invoke-static {}, Lcom/miui/launcher/utils/NotesGestureCompat;->supportsGestureHeightExpansion()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    mul-int/2addr v4, v3

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureTouchHeight:I

    sub-int v4, v1, v3

    :goto_1
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1229
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 1231
    :goto_3
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mLastTouchableRegion:Landroid/graphics/Region;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1232
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTouchRegion: bounds= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mLastTouchableRegion:Landroid/graphics/Region;

    .line 1235
    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method private updateTouchable()V
    .locals 4

    .line 638
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouchBySwipeStatusBar:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 639
    :goto_1
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTouchable    old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    if-eq v1, v0, :cond_2

    .line 642
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    .line 643
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v1, "  updateTouchable---requestApplyInsets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    :cond_2
    return-void
.end method


# virtual methods
.method public adaptAndRender()V
    .locals 1

    .line 1071
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptNotch()V

    const-string v0, "adaptAndRender"

    .line 1072
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    return-void
.end method

.method public clearGestureStub()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v1, "clearGestureStub"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStub()V

    .line 681
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public disableQuickSwitch(Z)V
    .locals 0

    .line 1058
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableQuickSwitch:Z

    return-void
.end method

.method public disableTouch(Z)V
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableTouch    old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    if-eq v0, p1, :cond_0

    .line 604
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    .line 605
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateTouchable()V

    :cond_0
    return-void
.end method

.method public disableTouchBySwipeStatusBar(Z)V
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableTouchBySwipeStatusBar    old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouchBySwipeStatusBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouchBySwipeStatusBar:Z

    if-eq v0, p1, :cond_0

    .line 614
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouchBySwipeStatusBar:Z

    .line 615
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateTouchable()V

    :cond_0
    return-void
.end method

.method public enableGestureBackAnimation(Z)V
    .locals 2

    .line 1050
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureAnimationEnabled:Z

    .line 1051
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GesturesBackController;->enableGestureBackAnimation(Z)V

    .line 1053
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableGestureBackAnimation enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    .line 796
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedRender:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 797
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 798
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 800
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatherTransparentRegion: need render w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 803
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mLocation:[I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 804
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mLocation:[I

    const/4 v2, 0x0

    aget v4, p0, v2

    const/4 v3, 0x1

    .line 805
    aget v5, p0, v3

    add-int v6, v4, v0

    add-int v7, v5, v1

    .line 806
    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v2

    .line 810
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p0

    return p0
.end method

.method public hideGestureStubDelay()V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public isDisableQuickSwitch()Z
    .locals 0

    .line 1062
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableQuickSwitch:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDisableOldQuickSwitch()Z

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
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 469
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 470
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->tryRequestTransparentRegionForParent()V

    .line 471
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->register()V

    .line 472
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 473
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow---requestApplyInsets"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "force_black_v2"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "force_black"

    .line 475
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

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
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    .line 476
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    .line 477
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    return-void
.end method

.method public onBackCancelled()V
    .locals 3

    .line 1306
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackCancelled: mBackInvokeCallbackStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mOnBackInvokedCallbackImpl= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v1, "onBackCancelled"

    invoke-static {v0, v1}, Lcom/miui/home/recents/util/LogPersistenceHelper;->asyncFileLoggerLevelDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    invoke-interface {v0}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->onBackCancelled()V

    :cond_0
    const/4 v0, 0x0

    .line 1311
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    return-void
.end method

.method public onBackInvoke()V
    .locals 3

    .line 1315
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackInvoke: mBackInvokeCallbackStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mOnBackInvokedCallbackImpl= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v1, "onBackInvoked"

    invoke-static {v0, v1}, Lcom/miui/home/recents/util/LogPersistenceHelper;->asyncFileLoggerLevelDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    invoke-interface {v0}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->onBackInvoke()V

    :cond_0
    const/4 v0, 0x0

    .line 1320
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    return-void
.end method

.method public onBackProgressed(FFFFFILjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    .line 1300
    iget-boolean v1, v0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 1301
    invoke-interface/range {v2 .. v9}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->onBackProgressed(FFFFFILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackStart(FFFFFILjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    .line 1292
    iget-object v1, v0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackStart: mBackInvokeCallbackStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  mOnBackInvokedCallbackImpl= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-boolean v1, v0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 1294
    invoke-interface/range {v2 .. v9}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->onBackStart(FFFFFILjava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    .line 1296
    iput-boolean v1, v0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 654
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 656
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    .line 657
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, changes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->isDensityChangeOrScreenSizeChange(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 660
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initScreenSizeAndDensity()V

    .line 661
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    if-eqz p1, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureEdgeSize()[I

    move-result-object p1

    .line 663
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/GesturesBackController;->setGestureEdgeWidth(II)V

    .line 667
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptRotation()V

    .line 668
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptNotchHidden()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 559
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 560
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->unregister()V

    .line 561
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 562
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 984
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isSupportLandscapeBreakableInCurrentState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 986
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->isOpenAnimRunning()Z

    move-result v2

    .line 987
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->isClosingAnimRunning()Z

    move-result v0

    .line 988
    invoke-static {v2, v0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->getAnimOpenedRotation(ZZ)I

    move-result v0

    .line 989
    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    invoke-direct {p0, v0, v2}, Lcom/miui/home/recents/GestureStubView;->initGestureRouteState(II)V

    .line 991
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->shouldBlockSideHomeGestureDuringClosingAnimation(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string p1, "onTouchEvent, closing anim running"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 996
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->handleLandscapeBreakableTouch(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 998
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1002
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_3

    .line 1003
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string p1, "onTouchEvent, mKeepHidden return"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1007
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    .line 1009
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pos=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "], mIsGestureStarted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_4
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    goto :goto_0

    .line 1021
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    .line 1022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    goto :goto_0

    .line 1027
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    .line 1028
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    .line 1031
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP: mIsGestureStarted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGestureAnimationEnabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureAnimationEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureAnimationEnabled:Z

    if-eqz v0, :cond_7

    .line 1036
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v2, 0x102

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1040
    :cond_7
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    goto :goto_0

    .line 1016
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownX:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    .line 1017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownY:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    .line 1045
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/recents/GesturesBackController;->onPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V

    return v3
.end method

.method public setAppResume(Z)V
    .locals 2

    .line 140
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mAppResumed:Z

    .line 141
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppResume, mAppResumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mAppResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1244
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public showGestureStub()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureBackArrowView;->isSwipeOrFinishAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    const-string v0, "mGestureBackArrowView.isSwipeOrFinishAnimRunning = true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 573
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setKeepHidden(Z)V

    const-string v1, "showGestureStub"

    .line 574
    invoke-direct {p0, v1}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    .line 578
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
