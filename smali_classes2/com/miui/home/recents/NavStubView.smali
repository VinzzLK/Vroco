.class public Lcom/miui/home/recents/NavStubView;
.super Landroid/widget/FrameLayout;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;
.implements Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;
.implements Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/NavStubView$PairCounts;,
        Lcom/miui/home/recents/NavStubView$MotionEventPosition;,
        Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;,
        Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;,
        Lcom/miui/home/recents/NavStubView$AppToSmallWindowAnimatorAdapter;,
        Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;,
        Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;,
        Lcom/miui/home/recents/NavStubView$HalfAppToRecentsUpdateListener;,
        Lcom/miui/home/recents/NavStubView$H;,
        Lcom/miui/home/recents/NavStubView$ModeGesture;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static TOUCH_SLOP:I


# instance fields
.field private antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

.field finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

.field public isAfterInsidePairQuickSwitch:Z

.field private isBreakingOpen:Z

.field private isFromSmallWindow:Z

.field private isInsidePairQuickSwitch:Z

.field private volatile isSupportSmallWindow:Z

.field public isTouchingSingleRange:Z

.field public final mAppDragStartDefaultRect:Landroid/graphics/RectF;

.field private mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final mAppToAppTargetRectF:Landroid/graphics/RectF;

.field private mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

.field private final mAppToHomeTargetRect:Landroid/graphics/Rect;

.field private final mAppToHomeTargetRectF:Landroid/graphics/RectF;

.field private final mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mAppToRecentsStartDimLayerAlpha:F

.field private mBarFollowAnimationRunnerImpl:Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;

.field private mBlockedAfterStartNewTaskNum:I

.field private mBoostGestureTime:J

.field private final mBreakClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

.field private mCancelAppToAppAnim:Z

.field private final mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final mCompleteEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

.field private mContext:Landroid/content/Context;

.field private mCropArray:[I

.field private final mCtsTouchSlop:I

.field private mCurRect:Landroid/graphics/RectF;

.field private mCurrAction:I

.field private mCurrEventTime:J

.field private mCurrentGesturePosition:I

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDimAlpha:F

.field private mDisableHomeRecents:Z

.field private mDisableTouch:Z

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDownNo:I

.field private final mEnterRecentsRunnable:Ljava/lang/Runnable;

.field mEnterRecentsRunnale:Ljava/lang/Runnable;

.field private mEventReceiver:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mExitStateEvent:Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

.field mFinishRunnable:Ljava/lang/Runnable;

.field mFinishSoscRunnable:Ljava/lang/Runnable;

.field private mFrameHandler:Landroid/os/Handler;

.field mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

.field private final mFsGestureStartEvent:Lcom/miui/home/recents/messages/FsGestureStartEvent;

.field private mGestureLineProgress:F

.field private mGoToNormalStartRunnable:Ljava/lang/Runnable;

.field mHalfAppEnterRecentsRunnale:Ljava/lang/Runnable;

.field private final mHalfAppToRecentsAnimatorListenerAdapter:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;

.field private final mHalfAppToRecentsInHalfSplitAnimatorListenerAdapter:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;

.field private final mHalfAppToRecentsInHalfSplitUpdateListener:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;

.field private final mHalfAppToRecentsUpdateListener:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsUpdateListener;

.field private final mHandler:Lcom/miui/home/recents/NavStubView$H;

.field private mHideGestureLine:Z

.field private final mHoldStateEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

.field private mHomeGestureTaskAppearedRunable:Ljava/lang/Runnable;

.field private mHomeIntent:Landroid/content/Intent;

.field private final mHomeRotationStartRectF:Landroid/graphics/RectF;

.field private final mHomeTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final mHorizontalActiveArea:[F

.field private mHorizontalGap:F

.field private mIgnoreInputConsumer:Z

.field private mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

.field private mIsAnimatingToApp:Z

.field private mIsAnimatingToLauncher:Z

.field private mIsAnimatingToRecents:Z

.field private volatile mIsAppDragging:Z

.field private mIsAppHandleGesture:Z

.field mIsAppHold:Z

.field mIsAssistantInEditMode:Z

.field private mIsBlockedAfterExitSmallWindowMode:Z

.field private mIsBlockedAfterStartNewTask:Z

.field private mIsCancelBreakOpenAnim:Z

.field private mIsDarkMode:Z

.field private volatile mIsGestureStarted:Z

.field private mIsHalfQuickSwitching:Z

.field private mIsInFsMode:Z

.field private mIsKeyguardLocked:Z

.field private mIsLaunchingNewTask:Z

.field private mIsPointerEvent:Z

.field private mIsQuickSwitching:Z

.field private mIsRecentDisabled:Z

.field private mIsResetTaskView:Z

.field private mIsShowNavBar:Z

.field private mIsShowRecents:Z

.field private mIsShowStatusBar:Z

.field private mIsStartHalfSplit:Z

.field private mIsSupportQuickSwitchGesture:Z

.field private mIsVertical:Z

.field private mKeepHidden:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDownNo:I

.field private mLastGesturePosition:I

.field private mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLauncherAlphaInRecents:F

.field private mLauncherScaleInRecents:F

.field private final mLocation:[I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMatrixArray:[F

.field private mMinRectWidth:F

.field private mMiuiGestureDetector:Landroid/view/MiuiGestureDetector;

.field private mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

.field private mMotionEventPosition:Lcom/miui/home/recents/NavStubView$MotionEventPosition;

.field private mNavBarExtraWidth:I

.field private mNavBarWidth:I

.field public final mNavStubGestureEventManager:Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

.field private final mNavStubGestureListener:Lcom/miui/home/recents/gesture/NavStubGestureListener;

.field private mNavStubTraggeRange:Lcom/miui/home/recents/NavStubTraggeRange;

.field private volatile mNeedBreakOpenAnim:Z

.field private mNeedCreateDimLayer:Z

.field private mNeedResetLauncherAlphaScale:Z

.field private mNoIconRadius:I

.field private mNonAppTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

.field private final mOneHandedTouchSlop:I

.field private mPendingResetStatus:Z

.field private mPendingResetTaskView:Z

.field private final mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

.field private mPreviousGestureRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mQuickSwitchTaskId:I

.field private mQuickSwitchTaskIndex:I

.field private mQuickSwitchTaskView:Lcom/miui/home/recents/views/TaskView;

.field public mReLoadTaskFinished:Z

.field private mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private final mRecentsModeEvent:Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

.field private mRecentsPendingIntent:Landroid/app/PendingIntent;

.field mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mRecentslistenerAdapter:Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;

.field private final mRectNoInset:Landroid/graphics/RectF;

.field mRemoveTopViewRunnable:Ljava/lang/Runnable;

.field private mResponseOffset:F

.field mResumeLastTaskRunnable:Ljava/lang/Runnable;

.field private mRotationCurRect:Landroid/graphics/RectF;

.field private mRunningTaskComponentName:Landroid/content/ComponentName;

.field private mRunningTaskId:I

.field private mRunningTaskIndex:I

.field private mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mRunningTaskUserId:I

.field private mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

.field private mScreenHeight:I

.field private mScreenPinnedInputConsumer:Lcom/miui/home/recents/ScreenPinnedInputConsumer;

.field private mScreenWidth:I

.field private mShouldBlockGestureDuringAnimation:Z

.field private final mSmallWindowAdapter:Lcom/miui/home/recents/NavStubView$AppToSmallWindowAnimatorAdapter;

.field private mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

.field private mSoscFromState:I

.field private mSoscLeftOrTopBounds:Landroid/graphics/Rect;

.field private mSoscRightOrBottomBounds:Landroid/graphics/Rect;

.field private mSplitRatioBeforeHold:F

.field private mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field mStartHalfNewTaskRunnable:Ljava/lang/Runnable;

.field private mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

.field private final mStartToDragAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mState:I

.field mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

.field mSupportHorizontalGesture:Z

.field private mSwipeUpStartTimeMs:J

.field private mSystemUiFlags:I

.field private mTailCatcherTask:Ljava/lang/Runnable;

.field mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mTaskViewInitRect:Landroid/graphics/Rect;

.field private mTouchRange:I

.field private final mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

.field private final mUpdateTaskTargetRectF:Landroid/graphics/RectF;

.field private final mUpdateTaskViewRectF:Landroid/graphics/RectF;

.field private mUseEmptyTouchableRegion:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowMode:I

.field onClosingAnimConnectEndRunnable:Ljava/lang/Runnable;

.field private onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

.field private startSingleAppBounds:Landroid/graphics/Rect;

.field private targetSingleAppBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$0ORuw22-ICQSCW-OztH_B8heWys(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$onSystemUiFlagsChanged$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$4hvHeGrG3546L1PbkMcrQ-XYa-Y(Lcom/miui/home/recents/NavStubView;Lcom/android/systemui/shared/recents/model/ThumbnailData;Lcom/android/systemui/shared/recents/model/ThumbnailData;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/NavStubView;->lambda$switchToScreenshot$41(Lcom/android/systemui/shared/recents/model/ThumbnailData;Lcom/android/systemui/shared/recents/model/ThumbnailData;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Fp5CWcVbGfghUhRHxxQklvuRng(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$finishAppToHome$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$5N2jW87oGfG6jnCMbwia44WvCtI(Lcom/miui/home/recents/NavStubView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/NavStubView;->lambda$onSoscStateChanged$6(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5h-FvvfHV5X5D4ps82Gj37Vi2Go(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    return-void
.end method

.method public static synthetic $r8$lambda$8p9eYUIdWQdY9WUF9TR_bWyTGGE(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$finishAppToHomeNew$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$9FF2GAqC2QOIldhFFzvL8Yd1dxg(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$updateQuickSwitchTaskHold$11(Lcom/miui/home/recents/views/TaskView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BDp52Nky7yPZSJMdwDyffL3MJTY(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$appTouchResolution$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$DykIHsFdP0bgWYncOAX17JCELTE(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToRecents$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$EQIMrM3kVN6TsEuc9scWIB-mmDA(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$finishHideTaskView$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$EzBknQcbfB7-O5snEec3WmwGqZA(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$performHalfAppToRecentsNormal$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$HmGMIki5bfKNdLh4aktNWQz-NKg()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/NavStubView;->lambda$new$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$HnqhPTFjMWd_dNntQOPlSH6F5Yg(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$finishRecentsAnimation$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$LCBG_6N01GleaJ4VKTjrHjx0t_8(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$backGestureUp$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$MZkt37WyT_K2C2WcRjQyEjJ_bCw(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$enableInputProxy$3(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NKbiq7yZYOUwvjjFywxxOk9GOQk(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$new$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$NU8FPJMwnKE8NKWzf9eQMDBm09s(Lcom/miui/home/recents/NavStubView;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->lambda$updateSysUiFlagsDirectly$16(FI)V

    return-void
.end method

.method public static synthetic $r8$lambda$NxOu4dOa-ldJ9420HhOpAXoHJz0(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$onTasksAppearedFinished$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$ODwMa83eZtkJWseEK3XN9IvW_DA(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToRecentsInHalfSplit$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$PWPmrmU_bUn7v6pknr6oyJGzdtY(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$resetLauncherProperty$27(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PgsbaJwNsqj3f2t9kJvEjxxCPE0(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$new$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3IPaKnFWzv2Ac396S7KsKTwVdo(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$onInputConsumerEvent$4(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QQaXQ5zB_qEkvdsCOpbU87lzCnM(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$commonQuickSwitchTouchFromDown$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$R-Irdo0_Uml6XL7Yz4HVYkjKYUs(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$commonAnimStartAppToHome$25(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-xA55v_IGBjdlmxo4c8QVs3ibU(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$commonHomeTouchFromDown$42()V

    return-void
.end method

.method public static synthetic $r8$lambda$SaxsjIBipYjPNdkz6VltSTMmcf8(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$performHomeToHome$46()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sw2tV3YJsfQ3siIyIDEv__4SxiU(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$commonFinishAppToHome$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$T6TY6wB1mGBnRHXYatpa7sii4CE(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$new$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$TUlEV4RhCp-oDi5E59KAexwJhrc(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToRecents$33(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WQ4pMLYMz60GEjDGLFIF9rPCD0U()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/NavStubView;->lambda$showRecents$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$WZyJE3twdXKDf1j3hQqroj0yhmA(Lcom/miui/home/recents/NavStubView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->lambda$changeAlphaScaleForFsGesture$2(FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$WhSCqjHw66psbyC11VHlaKUBPM4(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$initLauncherViewStateForHalfAppTouch$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$XxSgB991sww7R0zzHRny3-jYZhs(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$new$48()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z4YDCemLHabdjub2MOAj_SrJ7fA(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->onInputConsumerEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZBBg8pEJsd7I4z3av14ZYBlAsdA(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$exitHomeHoldState$45()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZUnrBNKvImGT2PTQZuIazBNWtAA(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$showRecents$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$_1TIPbD_Qube8ba0QQZ7EoqAnDY(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$onDisplayRotationChanged$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$bRxiYXAG5cLbon5jxA-EqCHZPrU(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$resetTaskView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$dl5lbVLFBVYF4F8KHFJLU3oDRqg(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$commonAppTouchFromUpOrCancel$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$e4Jt9h3Z8IB4xe9v7Cok0pVvxeI(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$initLauncherViewStateForAppTouch$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$fgq8r3jliWROAxElLkmDToK51vA()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/NavStubView;->lambda$enterAppHoldState$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$iJoshmb46071oVOMCePg44GhP2A()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/NavStubView;->lambda$finishSmallTop$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$kRJDrL0tAyKzqsxuFUH8fYLxZi4(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$appTouchResolution$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$mwUriRc1Jad8x2YubRUZktDsl_E(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$new$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$qQz_gcO9RCxaVgTGpKJfO_n7NnY(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$resetLauncherPropertyIfNeed$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$rJe-c_Pq8cS-0NiP7YUrO4nd05k(Lcom/miui/home/recents/NavStubView;ZLandroid/graphics/RectF;Ljava/lang/Runnable;ZIFZFFZ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/miui/home/recents/NavStubView;->lambda$updateTaskViewNew$0(ZLandroid/graphics/RectF;Ljava/lang/Runnable;ZIFZFFZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rp39QaAiN4OJ0Kee2moHcCdf4FU(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$commonHomeTouchFromDown$43()V

    return-void
.end method

.method public static synthetic $r8$lambda$sATSJdd7KAVY6G4RqKRAac4-aGk(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$enterHomeHoldState$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$v2W0psqoYW6fmtKDGudTWWmSqvI(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->lambda$initRecentsAnimation$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$wz1eURhHTy1ekM2Cql-_QZ56AyY(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$resetSoscLauncherProperty$28(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 219
    const-class v0, Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    .line 341
    sput v0, Lcom/miui/home/recents/NavStubView;->TOUCH_SLOP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 996
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mContext:Landroid/content/Context;

    .line 236
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 254
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mState:I

    .line 255
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mSoscLeftOrTopBounds:Landroid/graphics/Rect;

    .line 256
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mSoscRightOrBottomBounds:Landroid/graphics/Rect;

    const/4 v2, 0x2

    .line 257
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    .line 258
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mSoscFromState:I

    const/4 v3, 0x0

    .line 259
    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mCurrentGesturePosition:I

    .line 260
    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mLastGesturePosition:I

    const/high16 v4, -0x40800000    # -1.0f

    .line 261
    iput v4, p0, Lcom/miui/home/recents/NavStubView;->mSplitRatioBeforeHold:F

    .line 262
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    .line 263
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mShouldBlockGestureDuringAnimation:Z

    .line 264
    new-instance v4, Lcom/miui/home/recents/NavStubView$1;

    invoke-direct {v4, p0}, Lcom/miui/home/recents/NavStubView$1;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mHomeGestureTaskAppearedRunable:Ljava/lang/Runnable;

    .line 278
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 329
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    new-array v1, v2, [I

    .line 343
    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    new-array v1, v2, [F

    .line 346
    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    const/4 v1, 0x1

    .line 349
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    .line 363
    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    .line 372
    new-instance v2, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentslistenerAdapter:Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;

    .line 373
    new-instance v2, Lcom/miui/home/recents/NavStubView$AppToSmallWindowAnimatorAdapter;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$AppToSmallWindowAnimatorAdapter;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowAdapter:Lcom/miui/home/recents/NavStubView$AppToSmallWindowAnimatorAdapter;

    .line 374
    new-instance v2, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHalfAppToRecentsAnimatorListenerAdapter:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;

    .line 375
    new-instance v2, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHalfAppToRecentsInHalfSplitAnimatorListenerAdapter:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;

    .line 376
    new-instance v2, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsUpdateListener;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsUpdateListener;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHalfAppToRecentsUpdateListener:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsUpdateListener;

    .line 377
    new-instance v2, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHalfAppToRecentsInHalfSplitUpdateListener:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;

    .line 380
    sget-object v2, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    .line 383
    new-instance v2, Lcom/miui/home/recents/NavStubTraggeRange;

    invoke-direct {v2}, Lcom/miui/home/recents/NavStubTraggeRange;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mNavStubTraggeRange:Lcom/miui/home/recents/NavStubTraggeRange;

    .line 388
    new-instance v2, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    invoke-direct {v2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureEventManager:Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    .line 391
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsKeyguardLocked:Z

    .line 415
    new-instance v4, Lcom/miui/home/recents/NavStubView$2;

    invoke-direct {v4, p0}, Lcom/miui/home/recents/NavStubView$2;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    .line 1335
    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    .line 1337
    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    .line 1489
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    .line 2516
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportQuickSwitchGesture()Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsSupportQuickSwitchGesture:Z

    .line 2517
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    .line 2525
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 2528
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 2534
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    .line 2535
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    .line 2536
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    .line 2537
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    .line 2538
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRectF:Landroid/graphics/RectF;

    .line 2539
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    .line 2540
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    .line 2541
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    .line 2542
    new-instance v4, Lcom/miui/home/recents/messages/FsGestureStartEvent;

    invoke-direct {v4}, Lcom/miui/home/recents/messages/FsGestureStartEvent;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureStartEvent:Lcom/miui/home/recents/messages/FsGestureStartEvent;

    .line 2543
    new-instance v4, Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

    invoke-direct {v4}, Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mRecentsModeEvent:Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

    .line 2544
    new-instance v4, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-direct {v4}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    .line 2545
    new-instance v4, Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

    invoke-direct {v4}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mHoldStateEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

    .line 2546
    new-instance v4, Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

    invoke-direct {v4}, Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mExitStateEvent:Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

    .line 2547
    new-instance v4, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    invoke-direct {v4}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mCompleteEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    .line 2549
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    .line 2550
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mAppDragStartDefaultRect:Landroid/graphics/RectF;

    const/high16 v4, 0x420c0000    # 35.0f

    .line 2552
    iput v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const v4, 0x3d4ccccd    # 0.05f

    .line 2553
    iput v4, p0, Lcom/miui/home/recents/NavStubView;->mResponseOffset:F

    const/16 v4, 0x14

    .line 2555
    iput v4, p0, Lcom/miui/home/recents/NavStubView;->mNoIconRadius:I

    .line 2557
    new-instance v4, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v4}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2558
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 2559
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    .line 2563
    new-instance v4, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v4}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2564
    new-instance v4, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v4}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2565
    new-instance v4, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v4}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mStartToDragAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2576
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 2579
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 2585
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->isInsidePairQuickSwitch:Z

    .line 2586
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->isAfterInsidePairQuickSwitch:Z

    .line 2587
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->isSupportSmallWindow:Z

    .line 2982
    new-instance v4, Lcom/miui/home/recents/NavStubView$4;

    invoke-direct {v4, p0}, Lcom/miui/home/recents/NavStubView$4;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    .line 3031
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    .line 3053
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    .line 3054
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsLaunchingNewTask:Z

    .line 3055
    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mBlockedAfterStartNewTaskNum:I

    .line 3096
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->isBreakingOpen:Z

    .line 3374
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 3375
    iput-object v4, p0, Lcom/miui/home/recents/NavStubView;->mMatrixArray:[F

    const/4 v4, 0x4

    new-array v5, v4, [I

    .line 3376
    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    .line 3378
    new-instance v5, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda29;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda29;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    .line 3599
    new-instance v5, Lcom/miui/home/recents/NavStubView$5;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$5;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3627
    new-instance v5, Lcom/miui/home/recents/NavStubView$6;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$6;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3679
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    .line 3853
    new-instance v5, Lcom/miui/home/recents/NavStubView$7;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$7;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    .line 4257
    new-instance v5, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda19;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda19;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    .line 4566
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mNeedResetLauncherAlphaScale:Z

    .line 5168
    new-instance v5, Lcom/miui/home/recents/NavStubView$10;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$10;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnale:Ljava/lang/Runnable;

    .line 5175
    new-instance v5, Lcom/miui/home/recents/NavStubView$11;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$11;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mHalfAppEnterRecentsRunnale:Ljava/lang/Runnable;

    .line 5801
    new-instance v5, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda11;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->onClosingAnimConnectEndRunnable:Ljava/lang/Runnable;

    .line 5807
    new-instance v5, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda14;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mResumeLastTaskRunnable:Ljava/lang/Runnable;

    .line 5829
    new-instance v5, Lcom/miui/home/recents/NavStubView$14;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$14;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mStartHalfNewTaskRunnable:Ljava/lang/Runnable;

    .line 5849
    new-instance v5, Lcom/miui/home/recents/NavStubView$15;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$15;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mFinishRunnable:Ljava/lang/Runnable;

    .line 5858
    new-instance v5, Lcom/miui/home/recents/NavStubView$16;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$16;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mFinishSoscRunnable:Ljava/lang/Runnable;

    .line 6777
    new-instance v5, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda21;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda21;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnable:Ljava/lang/Runnable;

    .line 7029
    new-instance v5, Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$MotionEventPosition;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mMotionEventPosition:Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    .line 7126
    new-instance v5, Lcom/miui/home/recents/NavStubView$18;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/NavStubView$18;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mRemoveTopViewRunnable:Ljava/lang/Runnable;

    .line 997
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mContext:Landroid/content/Context;

    .line 998
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 1000
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1001
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1002
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 1003
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 1005
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.HOME"

    .line 1006
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1007
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1008
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v5, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1009
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1012
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x10000000

    .line 1013
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    .line 1014
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1015
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mContext:Landroid/content/Context;

    const v7, 0x3000008

    invoke-static {v6, v3, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRecentsPendingIntent:Landroid/app/PendingIntent;

    .line 1019
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 1020
    new-instance v5, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mBreakClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 1021
    invoke-virtual {v3, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->setIsUseForHomeGesture(Z)V

    .line 1022
    invoke-virtual {v5, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->setIsUseForHomeGesture(Z)V

    .line 1023
    new-instance v1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1024
    new-instance v1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1026
    new-instance v1, Lcom/miui/home/recents/NavStubView$H;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/NavStubView$H;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$1;)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    .line 1028
    iput v4, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedTouchSlop:I

    const/4 v0, 0x7

    .line 1029
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCtsTouchSlop:I

    .line 1031
    new-instance v0, Lcom/miui/home/recents/AntiMistakeTouchView;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/AntiMistakeTouchView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    .line 1032
    invoke-virtual {v0}, Lcom/miui/home/recents/AntiMistakeTouchView;->getFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    new-instance v0, Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "GestureStateMachine"

    invoke-direct {v0, v1, p0}, Lcom/miui/home/recents/GestureStateMachine;-><init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    .line 1036
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateHorizontalActiveArea()V

    .line 1038
    new-instance v0, Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/FsGestureAssistHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    .line 1039
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isOneHandedModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    new-instance v0, Lcom/miui/home/recents/OneHandedModeInputConsumer;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/OneHandedModeInputConsumer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    .line 1042
    :cond_0
    new-instance v0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;

    invoke-direct {v0}, Lcom/miui/home/recents/ScreenPinnedInputConsumer;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenPinnedInputConsumer:Lcom/miui/home/recents/ScreenPinnedInputConsumer;

    .line 1043
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isInDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    .line 1044
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    .line 1045
    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerAlpha()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncherAlphaInRecents:F

    .line 1047
    new-instance p1, Lcom/miui/home/recents/gesture/NavStubGestureListener;

    invoke-direct {p1}, Lcom/miui/home/recents/gesture/NavStubGestureListener;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureListener:Lcom/miui/home/recents/gesture/NavStubGestureListener;

    .line 1048
    invoke-virtual {p1, v2}, Lcom/miui/home/recents/gesture/NavStubGestureListener;->addListener(Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;)V

    .line 1049
    new-instance v0, Landroid/view/MiuiGestureDetector;

    sget v1, Lcom/miui/home/recents/NavStubView;->TOUCH_SLOP:I

    invoke-direct {v0, v1, p1}, Landroid/view/MiuiGestureDetector;-><init>(ILandroid/view/MiuiGestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mMiuiGestureDetector:Landroid/view/MiuiGestureDetector;

    .line 1050
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->registerInputConsumer()V

    .line 1051
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mNavBarWidth:I

    .line 1052
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070244

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mNavBarExtraWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onHomeGestureTaskAppeared()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateGestureDetectorHotArea()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubTraggeRange;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mNavStubTraggeRange:Lcom/miui/home/recents/NavStubTraggeRange;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedAdjustTouchArea()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/NavStubView;)[F
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->disableTouch(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/GestureHomeCalculator;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedInjectWithFinishCallBack()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->injectEvent()V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$2400(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    return p0
.end method

.method static synthetic access$2500(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    return p0
.end method

.method static synthetic access$2600(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    return p0
.end method

.method static synthetic access$2700(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    return p0
.end method

.method static synthetic access$3100(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    return p0
.end method

.method static synthetic access$3200(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    return p0
.end method

.method static synthetic access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateRunningTaskIndexByTaskId()V

    return-void
.end method

.method static synthetic access$3500(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTaskViewToInitPosition()V

    return-void
.end method

.method static synthetic access$3600(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    return-void
.end method

.method static synthetic access$3800(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setPauseAdvanced(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isElementAnim()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsStartDimLayerAlpha:F

    return p0
.end method

.method static synthetic access$4100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCompleteEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->showRunningTaskView()V

    return-void
.end method

.method static synthetic access$4400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/SmallWindowCrop;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onHalfAppModeGestureEnd()V

    return-void
.end method

.method static synthetic access$4600(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->enableChangeSplitRatio()V

    return-void
.end method

.method static synthetic access$4700(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    return p0
.end method

.method static synthetic access$4702(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/miui/home/recents/NavStubView;Ljava/lang/Runnable;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resumeLastTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSoscGestureStartInHalfSplitMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcom/miui/home/recents/NavStubView;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mNonAppTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    return-void
.end method

.method static synthetic access$5500(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsHalfQuickSwitching(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onHalfAppModeToHalfAppGestureEnd()V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsLaunchingTask(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsStartHalfSplit(Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    return p0
.end method

.method static synthetic access$6000(Lcom/miui/home/recents/NavStubView;IZ)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->startNewTask(IZ)V

    return-void
.end method

.method static synthetic access$6100(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetSoscLauncherProperty(Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/miui/home/recents/NavStubView;Ljava/lang/String;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$ModeGesture;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/miui/home/recents/NavStubView;)Ljava/lang/Runnable;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHomeGestureTaskAppearedRunable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/miui/home/recents/NavStubView;)Landroid/view/WindowManager;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    return p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    return p0
.end method

.method private accessibilityTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 6621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 6629
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPauseWhileSwipeUp()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAccessibilityMenuShortcutAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6630
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->notifyAccessibilityButtonLongClicked()V

    goto :goto_0

    .line 6631
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 6632
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->notifyAccessibilityButtonClicked(I)V

    :cond_2
    :goto_0
    const-string p1, "accessibilityTouchResolution"

    .line 6634
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_1

    .line 6625
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    :goto_1
    return-void
.end method

.method private actionUpResolution()V
    .locals 2

    .line 6862
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6863
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getActionUpSpeedAndDirection()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    return-void
.end method

.method private appTouchResolution(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 3130
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->appTouchResolution(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private assistantEditTouchResolution(Landroid/view/MotionEvent;)V
    .locals 4

    .line 6566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 6570
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6574
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureHomeCalculator;->isFastPullUp()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 6575
    invoke-virtual {p0, p1, p1, v2}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    .line 6576
    invoke-virtual {p0, v1, p1, v2}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    :cond_2
    const-string p1, "assistantEditTouchResolution"

    .line 6578
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private assistantTouchResolution(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2452
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/recents/FsGestureAssistHelper;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 2453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "assistantTouchResolution"

    .line 2456
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private beforeStartHalfAppToHalfAppAnim()V
    .locals 0

    .line 5959
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsHalfQuickSwitching:Z

    if-eqz p0, :cond_0

    return-void

    .line 5962
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 5963
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidLaunchSplit()V

    return-void
.end method

.method private beforeStartHalfAppToRecentsAnim()V
    .locals 1

    .line 5922
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 5923
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->startForbidLaunchSplit()V

    .line 5924
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->reset9_1TaskViewRatio()V

    return-void
.end method

.method private boostGesture()V
    .locals 2

    .line 1956
    invoke-static {}, Lcom/miui/home/launcher/util/BoostRtHelper;->getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostGesture(Landroid/view/View;Z)V

    return-void
.end method

.method private boostGestureIfNeeded(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1941
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsKeyguardLocked:Z

    if-eqz v0, :cond_0

    .line 1942
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "boostGestureIfNeeded, keyguard locked, return"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1945
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrEventTime:J

    .line 1946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1947
    iget-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrEventTime:J

    iput-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mBoostGestureTime:J

    .line 1948
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    goto :goto_0

    .line 1949
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/util/BoostRtHelper;->getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/BoostRtHelper;->isSupportSetRtMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrEventTime:J

    iget-wide v2, p0, Lcom/miui/home/recents/NavStubView;->mBoostGestureTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x384

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 1950
    :cond_2
    iget-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrEventTime:J

    iput-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mBoostGestureTime:J

    .line 1951
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    :cond_3
    :goto_0
    return-void
.end method

.method private breakOpenAnimIfNeeded()V
    .locals 2

    .line 3569
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->needBreakOpenAnim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    const/4 v0, 0x0

    .line 3570
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->isBreakingOpen:Z

    .line 3571
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 3572
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x1

    .line 3573
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->isBreakingOpen:Z

    .line 3574
    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->breakOpenAnim()V

    :cond_0
    return-void
.end method

.method private calcCenterYAndOffsetY(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/Rect;II)[F
    .locals 4

    .line 575
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 576
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 579
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTaskStackLayoutStyleVertical()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    mul-float/2addr p3, v0

    sub-float/2addr v2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v2, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result p2

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    :goto_0
    const/4 p3, 0x0

    aput p2, v1, p3

    const/4 p2, 0x1

    .line 582
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTaskStackLayoutStyleVertical()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    sub-int/2addr p4, p5

    .line 583
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    mul-int/lit8 p4, p4, 0x32

    add-int/lit8 p4, p4, 0x19

    int-to-float p4, p4

    invoke-direct {p0, p1, p3, p4}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result p0

    goto :goto_1

    :cond_1
    const/high16 p0, 0x43960000    # 300.0f

    float-to-double p3, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 584
    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    double-to-float p1, p3

    mul-float/2addr p0, p1

    :goto_1
    aput p0, v1, p2

    return-object v1
.end method

.method private calcIsAppHandleGesture(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    .line 2384
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2386
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "isAppHandleGesture, launcher handle gesture, because runningTaskTopActivityComponentName is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2389
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.personalassistant.picker.business.home.pages.PickerHomeActivity:com.miui.personalassistant.picker.business.home.pages.PickerSearchActivity:com.miui.personalassistant.picker.business.list.activity.PickerAppListActivity:com.miui.personalassistant.picker.business.list.activity.PickerMaMlListActivity:com.miui.personalassistant.picker.business.detail.PickerDetailActivity:com.miui.personalassistant.maml.EditMamlWidgetActivity:com.android.thememanager.activity.LargeIconPickerActivity:com.mi.globalminusscreen.picker.business.home.pages.PickerHomeActivity:com.mi.globalminusscreen.picker.business.home.pages.PickerSearchActivity:com.mi.globalminusscreen.picker.business.list.activity.PickerAppListActivity:com.mi.globalminusscreen.picker.business.list.activity.PickerMaMlListActivity:com.mi.globalminusscreen.picker.business.detail.PickerDetailActivity:com.mi.globalminusscreen.maml.EditMamlWidgetActivity:com.miui.personalassistant.maml.edit.EditMamlActivity:com.miui.personalassistant.picker.business.filter.PickerReplaceWidgetActivity:com.personalizedEditor.activity.WallpaperEffectDialogActivity"

    .line 2390
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2391
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->isQuickSearchHandleGesture(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    .line 2392
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isGalleryPicker(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isSupportGalleryGesture()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 2393
    :cond_2
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAppHandleGesture, runningTaskClassName="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isAppHandleGesture="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private calculateDamping()F
    .locals 0

    .line 500
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f7d70a4    # 0.99f

    return p0

    :cond_0
    const p0, 0x3f5c28f6    # 0.86f

    return p0
.end method

.method private calculateDimAlpha()V
    .locals 2

    .line 2964
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDimAlpha:F

    return-void
.end method

.method private calculateResponse()F
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrY()F

    move-result v0

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 p0, p0, -0xfa

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float v0, p0, v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p0, v0

    const v0, 0x3d4ccccd    # 0.05f

    add-float/2addr p0, v0

    return p0
.end method

.method private calculateRotationRect(Landroid/graphics/RectF;)V
    .locals 2

    .line 3876
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    .line 3877
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "calculateRotationRect, mLauncher=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    .line 3881
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3882
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 3884
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3885
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    const/4 v1, 0x0

    .line 3884
    invoke-static {p0, v1, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method private calculateTaskInitRectF()Landroid/graphics/Rect;
    .locals 4

    .line 3777
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3778
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppDragStartDefaultRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3779
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private calculateTaskPosition()V
    .locals 4

    .line 3784
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTopWindowInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    iget-boolean v0, v0, Lcom/miui/home/recents/views/SmallWindowCrop;->mIsLandscape:Z

    if-nez v0, :cond_0

    .line 3785
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3786
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3788
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    if-nez v1, :cond_1

    .line 3789
    new-instance v1, Lcom/miui/home/recents/GestureHomeCalculator;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/miui/home/recents/GestureHomeCalculator;-><init>(I)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 3791
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v3

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/miui/home/recents/GestureHomeCalculator;->calculateTaskPosition(Landroid/graphics/Rect;Lcom/miui/home/recents/views/SmallWindowCrop;II)V

    return-void
.end method

.method private callUpdateTaskViewMethods(Ljava/util/List;ILcom/miui/home/launcher/common/BooleanValue;Landroid/graphics/RectF;FIFZZFFZLjava/lang/Runnable;Lcom/miui/home/recents/NavStubView$PairCounts;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;I",
            "Lcom/miui/home/launcher/common/BooleanValue;",
            "Landroid/graphics/RectF;",
            "FIFZZFFZ",
            "Ljava/lang/Runnable;",
            "Lcom/miui/home/recents/NavStubView$PairCounts;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    .line 907
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p12, :cond_1

    iget v5, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    if-ne v2, v5, :cond_1

    return-void

    :cond_1
    move-object v5, p1

    .line 915
    invoke-direct {p0, p1, p2, v4}, Lcom/miui/home/recents/NavStubView;->getFgSmallWindowCountBetweenA_B(Ljava/util/List;II)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p8, :cond_3

    if-ge v2, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    .line 918
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const v7, 0x3ee66666    # 0.45f

    mul-float/2addr v6, v7

    add-float v6, p5, v6

    .line 919
    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v6, v7}, Landroid/graphics/RectF;->offsetTo(FF)V

    const/4 v6, 0x0

    :cond_3
    move v7, v6

    .line 922
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/common/BooleanValue;->getValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    move-object/from16 v8, p3

    .line 923
    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/common/BooleanValue;->setValue(Z)V

    move-object/from16 v11, p13

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    move-object v11, v6

    .line 927
    :goto_1
    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-static {v6}, Lcom/miui/home/launcher/util/SoscUtils;->isSoscTouchSingleApp(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v12, p14

    .line 928
    invoke-direct/range {v0 .. v12}, Lcom/miui/home/recents/NavStubView;->updateTaskViewTouchSingleApp(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;Lcom/miui/home/recents/NavStubView$PairCounts;)V

    goto :goto_2

    :cond_5
    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    .line 930
    invoke-direct/range {v0 .. v11}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method private cancelBreakOpenRectFAnim()V
    .locals 1

    .line 3864
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    .line 3865
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3866
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3868
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3869
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3871
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    const/4 v0, 0x1

    .line 3872
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsCancelBreakOpenAnim:Z

    return-void
.end method

.method private cancelSyncTransactionApplier()V
    .locals 1

    .line 4599
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    return-void
.end method

.method private changeAlphaScaleForFsGesture(FF)V
    .locals 2

    .line 1084
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda34;-><init>(Lcom/miui/home/recents/NavStubView;FF)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkAndLauncherHome()V
    .locals 5

    .line 1960
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "checkAndLauncherHome"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/StartActivityEvent;

    new-instance v2, Lcom/miui/home/recents/event/StartActivityEventInfo;

    new-instance v3, Lcom/miui/home/recents/event/CommonStartActivityInfo;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v3, v4, p0}, Lcom/miui/home/recents/event/CommonStartActivityInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v2, v3}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;)V

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/StartActivityEvent;-><init>(Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method private checkRunningTaskValidity()Z
    .locals 3

    .line 1709
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->isPre()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1710
    :cond_0
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->notHasHome()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 1711
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v2

    .line 1712
    invoke-virtual {v2, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskForGesture(ZZ)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1714
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateRunningTaskInfoInRemoteAnimStarted()V

    .line 1716
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 1717
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->checkAndLauncherHome()V

    const/4 p0, 0x0

    return p0
.end method

.method private clearMessages()V
    .locals 2

    .line 1935
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1936
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1937
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v0, 0x104

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private clearSoscState()V
    .locals 1

    const/4 v0, -0x1

    .line 2153
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mSoscFromState:I

    return-void
.end method

.method private commonAnimStartAppToHome(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 4161
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_HOME:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 4163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toHome"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4165
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda39;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4191
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, -0x1

    .line 4192
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlagsDirectly(FI)V

    :cond_0
    return-void
.end method

.method private commonAppModeGestureEnd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4312
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    .line 4314
    :cond_0
    sget-object p1, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 4315
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeLayoutListener()V

    return-void
.end method

.method private commonAppTouchFromDown(Z)V
    .locals 7

    .line 3229
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->onGestureStart(I)V

    .line 3230
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureSoscController;->onGestureStart(I)V

    .line 3231
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3232
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    const/4 v0, 0x0

    .line 3233
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->resumeLastTask(Ljava/lang/Runnable;)V

    .line 3235
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initAppModeValues(Z)V

    .line 3236
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->breakOpenAnimIfNeeded()V

    .line 3237
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initRunningTaskRelativeInfo()V

    .line 3245
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-nez v0, :cond_3

    .line 3246
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->isReusefulOpeningAnimRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToApp:Z

    if-eqz v1, :cond_2

    .line 3247
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 3249
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureAppDownEvent;

    new-instance v2, Lcom/miui/home/recents/event/GestureAppDownEventInfo;

    .line 3252
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result v3

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    .line 3253
    invoke-static {v5}, Lcom/miui/home/launcher/util/SoscUtils;->isSoscTouchSingleApp(I)Z

    move-result v5

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/home/recents/event/GestureAppDownEventInfo;-><init>(ZIZI)V

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/GestureAppDownEvent;-><init>(Lcom/miui/home/recents/event/GestureAppDownEventInfo;)V

    .line 3249
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 3258
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initLauncherViewState()V

    :cond_3
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 3261
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    .line 3263
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 3264
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3265
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->isOpenAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 3266
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    return-void
.end method

.method private commonAppTouchFromMove(Landroid/view/MotionEvent;)V
    .locals 1

    .line 3310
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 3311
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 3312
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 3313
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 3314
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDimAlpha()V

    .line 3315
    sget-boolean p1, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStateMachine;->canUpdateEndRect()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3316
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->updateEndRectF(Landroid/graphics/RectF;)V

    .line 3318
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    return-void
.end method

.method private commonAppTouchFromUpOrCancel()V
    .locals 3

    .line 3326
    new-instance v0, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda26;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3327
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsModel;->setIgnoreTaskSnapshotChanged(Z)V

    .line 3328
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelBreakOpenRectFAnim()V

    const/4 v0, 0x0

    .line 3329
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 3330
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->enableInputProxy()V

    return-void
.end method

.method private commonFinishAppToHome()V
    .locals 1

    const/4 v0, 0x1

    .line 4663
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->commonFinishAppToHome(Z)V

    return-void
.end method

.method private commonFinishAppToHome(Z)V
    .locals 2

    .line 4647
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 4648
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 4649
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda18;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4650
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4651
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->fixSplitState()V

    .line 4654
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd(Z)V

    .line 4655
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherAlphaScaleWhenUseSimpleAnim()V

    .line 4656
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 4657
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 p1, 0x0

    .line 4658
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method private commonHomeTouchFromDown(Z)V
    .locals 5

    .line 6334
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 6335
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyHomeModeFsGestureStart()V

    .line 6337
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->cancelAppToHomeAnim()V

    .line 6338
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda16;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 6344
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 6345
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 6346
    sget-object v2, Lcom/miui/home/recents/NavStubView$ModeGesture;->HOME_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 6347
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    const/4 v1, -0x1

    .line 6348
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->setRunningTaskIndex(I)V

    .line 6350
    sget-boolean v1, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v1, :cond_1

    .line 6351
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->isAnimChainOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6352
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isOpenAnim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6353
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/recents/anim/ConnectAnimManager;->connectOpeningAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;Lcom/miui/home/recents/GestureStateMachine;)V

    .line 6355
    :cond_1
    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda31;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 6361
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    :cond_2
    return-void
.end method

.method private commonHomeTouchFromMove(Landroid/view/MotionEvent;)V
    .locals 1

    .line 6366
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 6367
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 6369
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 6370
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    return-void
.end method

.method private commonHomeTouchFromUpOrCancel()V
    .locals 1

    .line 6374
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    const/4 v0, 0x0

    .line 6375
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    return-void
.end method

.method private commonQuickSwitchTouchFromDown()V
    .locals 3

    .line 2931
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeGoToNormalStartRunnable()V

    .line 2932
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2933
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 2934
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda15;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2943
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    .line 2944
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    return-void
.end method

.method private commonQuickSwitchTouchFromMove(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2948
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 2950
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 2951
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 2952
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDimAlpha()V

    .line 2954
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 2955
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    return-void
.end method

.method private commonQuickSwitchTouchFromUpOrCancel()V
    .locals 1

    .line 2959
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    const/4 v0, 0x0

    .line 2960
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    return-void
.end method

.method private commonResetLauncherProperty(Z)V
    .locals 1

    .line 4239
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4241
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->postGoToNormalStartRunnable()V

    goto :goto_0

    .line 4243
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private computeFromRotationForUpdateTargetRectF(I)I
    .locals 1

    .line 5389
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPortraitDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftOrRightPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5390
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftPositionGesture()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0

    .line 5393
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftOrRightPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeDisplay()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return p1
.end method

.method private createBarFollowAnimationRunnerImplIfNeed()V
    .locals 1

    .line 3454
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportBarFollow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3455
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBarFollowAnimationRunnerImpl:Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;

    if-eqz v0, :cond_0

    .line 3456
    invoke-virtual {v0}, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->unlinkAndReset()V

    .line 3458
    :cond_0
    new-instance v0, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;

    invoke-direct {v0}, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBarFollowAnimationRunnerImpl:Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;

    :cond_1
    return-void
.end method

.method private createHalfSplitGestureMode(FZ)I
    .locals 4

    .line 2347
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->getState()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mSoscFromState:I

    .line 2349
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNavStubTraggeRange:Lcom/miui/home/recents/NavStubTraggeRange;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubTraggeRange;->isLeftRange(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2350
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->getLeftOrTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    goto :goto_0

    .line 2351
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNavStubTraggeRange:Lcom/miui/home/recents/NavStubTraggeRange;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubTraggeRange;->isRightRange(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2352
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->getRightOrBottoRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2354
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p2, :cond_2

    .line 2356
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2357
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsContainer;->isExitRecentsAnimating()Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 2358
    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v0

    :goto_3
    if-eqz v2, :cond_5

    if-nez p2, :cond_7

    .line 2359
    :cond_5
    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    if-nez p2, :cond_8

    const/16 p0, 0xb

    return p0

    :cond_8
    if-eqz v0, :cond_9

    const/16 p0, 0xd

    return p0

    .line 2365
    :cond_9
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/16 p0, 0xc

    return p0
.end method

.method private createSplitGeatureMode(FZZ)I
    .locals 1

    const/4 v0, 0x2

    .line 2332
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mSoscFromState:I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 2336
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mNavStubTraggeRange:Lcom/miui/home/recents/NavStubTraggeRange;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/NavStubTraggeRange;->isLeftRange(F)Z

    move-result p2

    const/16 p3, 0xc

    if-eqz p2, :cond_2

    .line 2337
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->getLeftOrTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return p3

    .line 2339
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mNavStubTraggeRange:Lcom/miui/home/recents/NavStubTraggeRange;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/NavStubTraggeRange;->isRightRange(F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2340
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->getRightOrBottoRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return p3

    :cond_3
    return v0
.end method

.method private disableTouch(Z)V
    .locals 2

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableTouch    old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubView_Touch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    if-eq v0, p1, :cond_0

    .line 1475
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    .line 1476
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTouchable()V

    :cond_0
    return-void
.end method

.method private enableChangeSplitRatio()V
    .locals 1

    .line 5196
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5197
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->enableChangeSplitRatio()V

    :cond_0
    return-void
.end method

.method private exitFreeFormWindowIfNeeded()V
    .locals 0

    return-void
.end method

.method private exitTopWindowCrop()V
    .locals 2

    .line 7120
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::exitTopWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-eqz p0, :cond_0

    .line 7122
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->exitTopWindowCrop()V

    :cond_0
    return-void
.end method

.method private finalization(Ljava/lang/String;)V
    .locals 3

    .line 6902
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>>>finalization executed from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6904
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6905
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    .line 6908
    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsPointerEvent:Z

    .line 6909
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 6910
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "ignore_bring_to_front"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6911
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "filter_flag"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6913
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 6914
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6916
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsInFsMode(Z)V

    return-void
.end method

.method private findBackAnimTarget(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4332
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->findClosingAnimTarget(Z)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    return-object p0
.end method

.method private findClosingAnimTarget(Z)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 5

    .line 4050
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedToScreenCenter()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4051
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v1

    .line 4055
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isElementAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 4059
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/NavStubView;->getClosingApp(Lcom/miui/home/launcher/Launcher;Z)Lcom/miui/home/launcher/util/ClosingAppInfo;

    move-result-object v0

    .line 4060
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findClosingAnimTarget, closingApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    .line 4061
    iget-boolean p1, v0, Lcom/miui/home/launcher/util/ClosingAppInfo;->isIconLayoutFromSoscChange:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 4066
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->findClosingWidgetView(Lcom/miui/home/launcher/util/ClosingAppInfo;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p1

    if-nez p1, :cond_3

    .line 4068
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->findClosingShortcutIcon(Lcom/miui/home/launcher/util/ClosingAppInfo;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1

    .line 4062
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method private findClosingShortcutIcon(Lcom/miui/home/launcher/util/ClosingAppInfo;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 5

    .line 4002
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->needFindClosingShortcutIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDeviceOrSpecialDevice()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4004
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isNeedShowStatusBarTypeAnim(Lcom/miui/home/launcher/util/ClosingAppInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4005
    new-instance p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4006
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->getMIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4007
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->getMRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v2, v3, v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4008
    :cond_0
    iget-boolean v0, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->isAppPair:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->isIconLayoutFromSoscChange:Z

    if-nez v0, :cond_1

    .line 4009
    iget-object v0, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    iget p1, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->userId:I

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1, v2}, Lcom/miui/home/recents/CloseShortcutIconUtils;->getCloseShortcutIcon(Landroid/content/ComponentName;ILcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    .line 4015
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 4018
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    .line 4020
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "can\'t get closingIcon location"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4021
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method private findClosingWidgetView(Lcom/miui/home/launcher/util/ClosingAppInfo;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4029
    iget-object v1, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_1

    iget-boolean v2, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->isAppPair:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->isIconLayoutFromSoscChange:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4036
    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object v1

    .line 4037
    invoke-virtual {v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    move-result-object v1

    .line 4038
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->needFindClosingShortcutIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 4039
    iget-object p1, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4040
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getScreenId()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    .line 4041
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->isMatchClosingAppPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4042
    invoke-virtual {v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private finishHideTaskView()V
    .locals 2

    .line 4197
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishSmallTop()V
    .locals 2

    .line 5108
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    sget-object v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda47;->INSTANCE:Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda47;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 5115
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->finishHideTaskView()V

    .line 5116
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlur(Lcom/miui/home/launcher/Launcher;Z)V

    const-string v0, "startTopWindow"

    .line 5118
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void
.end method

.method private getActionUpSpeedAndDirection()I
    .locals 1

    .line 6839
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->isFastPullUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    .line 6841
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->isFastPullDown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6842
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->isPullLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    .line 6844
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isPullRight()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_0

    .line 6850
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->isPullLeft()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x8

    goto :goto_0

    .line 6852
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isPullRight()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x9

    goto :goto_0

    :cond_5
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method private getAppModeWithNoQuickSwitching()I
    .locals 1

    .line 2273
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2274
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 2276
    :cond_0
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    return p0
.end method

.method private getAppToAppListener(II)Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;
    .locals 1

    .line 5564
    new-instance v0, Lcom/miui/home/recents/NavStubView$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/recents/NavStubView$12;-><init>(Lcom/miui/home/recents/NavStubView;II)V

    return-object v0
.end method

.method private getClosingApp(Lcom/miui/home/launcher/Launcher;Z)Lcom/miui/home/launcher/util/ClosingAppInfo;
    .locals 6

    .line 3948
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClosingApp mRunningTaskComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", launcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3953
    :cond_0
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3954
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    .line 3955
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3956
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3958
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->isFreeFormMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "getClosingApp: isFreeFormMode return null"

    .line 3959
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3962
    :cond_1
    new-instance v1, Lcom/miui/home/launcher/util/ClosingAppInfo;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3963
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 3964
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    .line 3965
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isIconLayoutFromSoscChange(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    invoke-direct {v1, v0, v3, v4, p0}, Lcom/miui/home/launcher/util/ClosingAppInfo;-><init>(Landroid/content/ComponentName;IZZ)V

    goto :goto_3

    .line 3968
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vroco.launcher"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3969
    new-instance v1, Lcom/miui/home/launcher/util/ClosingAppInfo;

    if-eqz v0, :cond_4

    .line 3970
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLastLaunchComponentName()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    :goto_1
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskUserId:I

    .line 3972
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAppPair()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    .line 3973
    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isIconLayoutFromSoscChange(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    invoke-direct {v1, v0, v2, v4, p0}, Lcom/miui/home/launcher/util/ClosingAppInfo;-><init>(Landroid/content/ComponentName;IZZ)V

    :cond_6
    :goto_3
    return-object v1
.end method

.method private getCurrentDisplayRotation()I
    .locals 0

    .line 5385
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/launcher/utils/DisplayManagerGlobalUtils;->getRotation()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getCurrentTaskViewRatio()F
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getTaskViewWidth()F

    move-result v0

    .line 529
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->getTaskViewHeight()F

    move-result v1

    .line 530
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 532
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    div-float/2addr v1, p0

    return v1

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private getCurrentWindowMode(Landroid/view/MotionEvent;ZZZ)I
    .locals 3

    .line 2195
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isInScreenPinning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x4

    return p0

    .line 2202
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isStartOrStopOneHandMode()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p0, 0x7

    return p0

    .line 2205
    :cond_2
    iget-boolean p2, p0, Lcom/miui/home/recents/NavStubView;->mIsAssistantInEditMode:Z

    if-eqz p2, :cond_3

    const/16 p0, 0x9

    return p0

    .line 2208
    :cond_3
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/miui/home/recents/FsGestureAssistHelper;->canTriggerAssistantAction(FFI)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p0, 0x6

    return p0

    .line 2211
    :cond_4
    iget-boolean p2, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-eqz p2, :cond_5

    const/4 p0, 0x5

    return p0

    .line 2214
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAccessibilityMenuAvailable()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/miui/home/recents/NavStubView;->mIsPointerEvent:Z

    if-eqz p2, :cond_6

    const/16 p0, 0x8

    return p0

    .line 2218
    :cond_6
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/recents/GestureSoscController;->isForbidGesture()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 2219
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "getCurrentWindowMode: isForbidGesture"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2222
    :cond_7
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p2, :cond_9

    .line 2223
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 2224
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->isMultiScreenChangeAnimRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2225
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "getCurrentWindowMode: MultiScreenChangeAnimRunning"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2228
    :cond_8
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 2229
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsContainer;->isOneKeyCleanAnimating()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 2230
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "getCurrentWindowMode: OneKeyCleanAnimating"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2234
    :cond_9
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSupportSplitGesture()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/miui/home/recents/NavStubView;->mIsHalfQuickSwitching:Z

    if-eqz p2, :cond_a

    const/16 p0, 0xf

    return p0

    .line 2238
    :cond_a
    sget-object p2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/StateManager;->isBlockForSplitScreen()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 2239
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "getCurrentWindowMode: isBlockForSplitScreen"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2243
    :cond_b
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->isClickAppWaitForCallback()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 2244
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "getCurrentWindowMode: isClickAppWaitForCallback"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2247
    :cond_c
    iget-boolean p2, p0, Lcom/miui/home/recents/NavStubView;->mIsLaunchingNewTask:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p2, :cond_e

    .line 2248
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p2, "getCurrentWindowMode: mIsLaunchingNewTask"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mBlockedAfterStartNewTaskNum:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mBlockedAfterStartNewTaskNum:I

    if-lt p1, v1, :cond_d

    .line 2251
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsLaunchingTask(Z)V

    :cond_d
    return v0

    .line 2256
    :cond_e
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSupportSplitGesture()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/recents/GestureSoscController;->isPredictAndCallbackSplitMode()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 2257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-direct {p0, p1, p3, p4}, Lcom/miui/home/recents/NavStubView;->createSplitGeatureMode(FZZ)I

    move-result p0

    return p0

    .line 2260
    :cond_f
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/recents/GestureSoscController;->isPredictAndCallbackHalfSplitMode()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 2261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-direct {p0, p1, p4}, Lcom/miui/home/recents/NavStubView;->createHalfSplitGestureMode(FZ)I

    move-result p0

    return p0

    :cond_10
    if-eqz p3, :cond_11

    if-eqz p4, :cond_11

    return v1

    :cond_11
    if-eqz p3, :cond_12

    return v2

    :cond_12
    const/4 p0, 0x2

    return p0
.end method

.method private getCurrentWindowRadius(Landroid/graphics/RectF;)F
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 518
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    .line 523
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    :goto_0
    mul-float/2addr v1, p1

    .line 524
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method private getDirectionByOffset()I
    .locals 1

    .line 5306
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 5308
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isRightDirection()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getFgSmallWindowCountBetweenA_B(Ljava/util/List;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;II)I"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 935
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    if-eq p2, p3, :cond_1

    .line 937
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 938
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_1

    .line 940
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p3, :cond_0

    .line 941
    invoke-virtual {p3}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private getFirstValidTaskIndex(ILcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)I
    .locals 1

    .line 5532
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p2

    .line 5533
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 5534
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setTaskIfNeedHide(Ljava/util/ArrayList;)I

    if-eqz v0, :cond_4

    .line 5536
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_3

    :cond_0
    if-lez p3, :cond_2

    add-int/lit8 p0, p1, 0x1

    .line 5542
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result p3

    if-ge p0, p3, :cond_4

    .line 5543
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/shared/recents/model/Task;

    .line 5544
    invoke-virtual {p3}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p0, p1, -0x1

    :goto_1
    if-ltz p0, :cond_4

    .line 5552
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    .line 5553
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result p2

    if-nez p2, :cond_3

    :goto_2
    move p1, p0

    goto :goto_3

    :cond_3
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    return p1
.end method

.method private getFullScreenSizeHomeStackBoundByOrientation()Landroid/graphics/Rect;
    .locals 3

    .line 2813
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2814
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 2815
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 2817
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2818
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2820
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getHalfAppToHalfAppListener(II)Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;
    .locals 1

    .line 5727
    new-instance v0, Lcom/miui/home/recents/NavStubView$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/recents/NavStubView$13;-><init>(Lcom/miui/home/recents/NavStubView;II)V

    return-object v0
.end method

.method private getHomeRotation()I
    .locals 0

    .line 3812
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method private getPercentsValue(FFF)F
    .locals 0

    const/4 p0, 0x0

    .line 3849
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sub-float/2addr p3, p2

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    return p2
.end method

.method private getQuickSwitchOrRunningTaskId()I
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    :goto_0
    return p0
.end method

.method private getQuickSwitchTaskIndexByDirection(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 5297
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5299
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result p0

    return p0

    .line 5301
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p0

    return p0
.end method

.method private getRotationRectF(IILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    .line 4774
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 4776
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    return-object p3

    .line 4780
    :cond_1
    invoke-static {p2, v1, p3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    .line 4784
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftPositionGesture()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureHomeCalculator;->isRightPositionGesture()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4785
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeDisplay()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p3

    .line 4788
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftPositionGesture()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x3

    :goto_0
    move p2, p0

    .line 4790
    :cond_6
    invoke-static {p2, v1, p3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private getRunningTaskPkgName()Ljava/lang/String;
    .locals 0

    .line 3081
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    .line 3082
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRunningTaskTopPkgName()Ljava/lang/String;
    .locals 1

    .line 3088
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 3089
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    .line 3090
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getStartFirstTaskListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;
    .locals 1

    .line 6019
    new-instance v0, Lcom/miui/home/recents/NavStubView$17;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$17;-><init>(Lcom/miui/home/recents/NavStubView;)V

    return-object v0
.end method

.method private getTaskLocation()I
    .locals 1

    .line 5316
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTargetSingleAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5319
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-gtz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private halfAppTouchResolution(Landroid/view/MotionEvent;)V
    .locals 3

    .line 3200
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isBlockedAfterExitSmallWindowMode(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3201
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isBlockedAfterStartNewTask(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3204
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3205
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3206
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->disableChangeSplitRatioOnce()V

    .line 3208
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->commonAppTouchFromDown(Z)V

    .line 3209
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initFirstSplitTaskInHalfAppMode()V

    goto :goto_0

    .line 3210
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 3211
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonAppTouchFromMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3212
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 3213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 3214
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonAppTouchFromUpOrCancel()V

    .line 3215
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-eqz p1, :cond_5

    .line 3217
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x0

    .line 3218
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetSoscLauncherProperty(Z)V

    const-string p1, "halfAppHandleGesture"

    .line 3219
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 3220
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 3221
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getActionUpSpeedAndDirection()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->sendBroadcastToAppForHandleGesture(ILjava/lang/String;)V

    goto :goto_0

    .line 3223
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    :cond_6
    :goto_0
    return-void
.end method

.method private halfHomeTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 6318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 6324
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonHomeTouchFromMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6328
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonHomeTouchFromUpOrCancel()V

    goto :goto_0

    .line 6320
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->commonHomeTouchFromDown(Z)V

    .line 6321
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->initFirstSplitTaskInHalfHomeMode()V

    :goto_0
    return-void
.end method

.method private halfQuickSwitchTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 2911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 2912
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2913
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 2915
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2916
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 2918
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartHalfNewTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2919
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonQuickSwitchTouchFromDown()V

    goto :goto_0

    .line 2920
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2921
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonQuickSwitchTouchFromMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2922
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 2923
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 2924
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonQuickSwitchTouchFromUpOrCancel()V

    const/4 p1, 0x0

    .line 2925
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsHalfQuickSwitching(Z)V

    const-string p1, "HalfQuickSwitchTouchResolution"

    .line 2926
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private halfRecentsTouchResolution(Landroid/view/MotionEvent;)V
    .locals 0

    .line 6672
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->recentsTouchResolution(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private handleLandscapeBreakableTouch(Landroid/view/MotionEvent;I)Ljava/lang/Boolean;
    .locals 2

    .line 3099
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->shouldBlockGesture(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3100
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3103
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->initCalculatorAndUpdateRecentsOrientation(Landroid/view/MotionEvent;I)V

    .line 3105
    iget p2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 3119
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action is"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/NavStubView;->finishRecentsAnimation(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 3120
    iput-boolean p2, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    goto :goto_0

    .line 3107
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    .line 3108
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initializeDownEvent(Landroid/view/MotionEvent;)V

    .line 3109
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValueAndCheckRunningTaskValidity(Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 3110
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3113
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "taskSnapshot"

    const-string v1, "gesture"

    invoke-static {p2, v0, v1}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mSwipeUpStartTimeMs:J

    .line 3115
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getAppModeWithNoQuickSwitching()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/miui/home/recents/NavStubView;->sendMsgDownToStateMachine(I)V

    .line 3124
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->handleVelocityTracking(Landroid/view/MotionEvent;)V

    .line 3126
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private handleVelocityTracking(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1690
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startVelocityTracker(Landroid/view/MotionEvent;)V

    .line 1691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1693
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetValue()V

    .line 1694
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 1695
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->stopVelocityTracker()V

    :cond_1
    return-void
.end method

.method private hasTopWindowCrop()Z
    .locals 4

    .line 7054
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7055
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    .line 7056
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskUserId:I

    .line 7055
    invoke-static {v0, v1, v2, v3, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterMiniSmallWindow(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7057
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private homeTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 6298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 6303
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonHomeTouchFromMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6307
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonHomeTouchFromUpOrCancel()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6300
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonHomeTouchFromDown(Z)V

    :goto_0
    return-void
.end method

.method private ignoreTouchPosition(II)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initAppModeValues(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3336
    sget-object p1, Lcom/miui/home/recents/NavStubView$ModeGesture;->HALF_APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    const/4 p1, 0x0

    .line 3337
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 3338
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 3339
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 3340
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsModel;->setIgnoreTaskSnapshotChanged(Z)V

    .line 3341
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelSyncTransactionApplier()V

    .line 3342
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeGoToNormalStartRunnable()V

    .line 3343
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppDragging:Z

    return-void
.end method

.method private initCalculatorAndUpdateRecentsOrientation(Landroid/view/MotionEvent;I)V
    .locals 2

    .line 1662
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    .line 1663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    .line 1665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1666
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1667
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/RecentsRotationByUserGesturePositionHelper;->updateRecentsOrientationByGesturePosition(I)V

    .line 1669
    :cond_0
    new-instance v1, Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-direct {v1, p2}, Lcom/miui/home/recents/GestureHomeCalculator;-><init>(I)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 1674
    :cond_1
    iget p2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    invoke-direct {p0, v0, p2}, Lcom/miui/home/recents/NavStubView;->ignoreTouchPosition(II)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1675
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureHomeCalculator;->setCurrEvent(Landroid/view/MotionEvent;)V

    :cond_2
    return-void
.end method

.method private initFirstSplitTaskInAppMode()V
    .locals 1

    .line 3270
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isSoscFirstSplitScreenTaskEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3271
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->resetSoscFirstSplitScreenTaskNull()V

    .line 3272
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->preloadTasks(I)V

    .line 3273
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "initFirstSplitTaskInAppMode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initFirstSplitTaskInHalfAppMode()V
    .locals 4

    .line 3279
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSoscGestureStartInHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3280
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->resetSoscFirstSplitScreenTaskNull()V

    .line 3281
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->preloadTasks(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3285
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 3291
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->getLeftOrTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 3292
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFirstSplitTaskInHalfAppMode: getLeftOrTopRunningTaskInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3287
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->getRightOrBottoRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 3288
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFirstSplitTaskInHalfAppMode: getRightOrBottoRunningTaskInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_3

    .line 3298
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->setSoscFirstSplitRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 3299
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->preloadTasks(I)V

    :cond_3
    return-void
.end method

.method private initLauncherViewState()V
    .locals 1

    .line 3690
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3691
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initLauncherViewStateForHalfAppTouch()V

    goto :goto_0

    .line 3693
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initLauncherViewStateForAppTouch()V

    :goto_0
    return-void
.end method

.method private initLauncherViewStateForAppTouch()V
    .locals 2

    .line 3698
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda27;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initLauncherViewStateForHalfAppTouch()V
    .locals 2

    .line 3727
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda20;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initRecentsAnimation(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 9

    .line 2660
    iget-object v0, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2663
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2665
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 2666
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2668
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2669
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2670
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 2672
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2673
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2676
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v0, v2

    aget v7, v0, v1

    aget v8, v0, v2

    add-int/2addr v8, v4

    aget v0, v0, v1

    add-int/2addr v0, v3

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    goto :goto_1

    .line 2678
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getFullScreenSizeHomeStackBoundByOrientation()Landroid/graphics/Rect;

    move-result-object v0

    .line 2681
    :goto_1
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v4}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 2682
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2683
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v4, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v3, v4, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)V

    .line 2685
    :cond_3
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 2686
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 2687
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mBreakClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v4}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 2688
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mBreakClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object p1, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v3, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 2689
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mBreakClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 2690
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mBreakClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 2692
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2693
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2694
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 2695
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2696
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 2698
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2699
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2700
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 2702
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2703
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2705
    :goto_2
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 2706
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2708
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_9

    .line 2709
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p1

    .line 2710
    invoke-virtual {p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p1

    .line 2711
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v4

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2712
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 2713
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initTaskViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2714
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2716
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2717
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2718
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_4

    .line 2720
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2721
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2723
    :goto_4
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 2724
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result p1

    sub-int/2addr v3, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object p1, v0

    .line 2726
    :cond_9
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 2727
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mBreakClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v4

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 2729
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_a

    .line 2730
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 2731
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hideCurrentInputMethod()V

    .line 2732
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 2735
    :cond_a
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result p1

    if-nez p1, :cond_b

    .line 2736
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->removeMessage(I)V

    .line 2737
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 2740
    :cond_b
    new-instance p1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda33;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda33;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initRunningTaskRelativeInfo()V
    .locals 3

    .line 2997
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->runningTaskInfoInValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2998
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->getRunningTaskId()I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    .line 2999
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->getFastUserId()I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskUserId:I

    const/4 v1, 0x0

    .line 3000
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    .line 3001
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->getFastLaunchRunningTaskPkgName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 3003
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    .line 3004
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTaskInfoUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskUserId:I

    .line 3005
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    .line 3006
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->calcIsAppHandleGesture(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    .line 3008
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3009
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 3010
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateRunningTaskIndexByTaskId()V

    .line 3012
    :cond_1
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRunningTaskRelativeInfo, mRunningTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRunningTaskIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRunningTaskUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRunningTaskComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsAppHandleGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initTaskViews()V
    .locals 4

    .line 3761
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3762
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3763
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3764
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3765
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 v2, 0x0

    .line 3766
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3767
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3768
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 3769
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    .line 3770
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 3771
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initTopWindowCrop()V
    .locals 3

    .line 7082
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::initTopWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7083
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 7086
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7087
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->initTopWindowCrop(ZII)V

    return-void
.end method

.method private initTouchRange(F)V
    .locals 1

    .line 2319
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsHalfQuickSwitching:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNavStubTraggeRange:Lcom/miui/home/recents/NavStubTraggeRange;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubTraggeRange;->isLeftRange(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 2323
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    goto :goto_0

    .line 2324
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNavStubTraggeRange:Lcom/miui/home/recents/NavStubTraggeRange;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubTraggeRange;->isRightRange(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2325
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 2327
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    :cond_3
    :goto_0
    return-void
.end method

.method private initValue(Landroid/view/MotionEvent;)V
    .locals 1

    .line 6820
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureHomeCalculator;->initValue(Landroid/view/MotionEvent;)V

    .line 6821
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    .line 6822
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->removeMessage(I)V

    .line 6824
    :cond_0
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine;

    const-string v0, "GestureStateMachine"

    invoke-direct {p1, v0, p0}, Lcom/miui/home/recents/GestureStateMachine;-><init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 p1, 0x0

    .line 6825
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    .line 6826
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsResetTaskView:Z

    .line 6827
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsCancelBreakOpenAnim:Z

    .line 6828
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureStartEvent:Lcom/miui/home/recents/messages/FsGestureStartEvent;

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private initValueAndCheckRunningTaskValidity(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1700
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateScreenSize()V

    .line 1701
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    .line 1702
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->checkRunningTaskValidity()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private initializeDownEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureHomeCalculator;->setInitEvent(Landroid/view/MotionEvent;)V

    .line 1681
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 1683
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 1685
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 1686
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateSupportHorizontalGesture()V

    return-void
.end method

.method private injectEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 1445
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->injectMotionEvent(I)V

    const/4 v0, 0x1

    .line 1446
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->injectMotionEvent(I)V

    return-void
.end method

.method private injectMotionEvent(I)V
    .locals 21

    move-object/from16 v0, p0

    .line 1543
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    return-void

    .line 1549
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-nez v2, :cond_2

    .line 1551
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectMotionEvent action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " downX: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " downY: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " flags:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1551
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    new-array v11, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 1556
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v15, 0x0

    aput-object v5, v11, v15

    aget-object v5, v11, v15

    .line 1558
    invoke-virtual {v1, v15, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-array v12, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 1560
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v12, v15

    aget-object v5, v12, v15

    .line 1562
    invoke-virtual {v1, v15, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v5, v12, v15

    .line 1563
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v5, v12, v15

    .line 1564
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1565
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    const/4 v10, 0x1

    .line 1567
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    .line 1568
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v16

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v17

    .line 1569
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    .line 1570
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    move/from16 v9, p1

    move v4, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v1

    .line 1565
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1571
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1573
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    goto :goto_0

    :cond_1
    const-string v0, "injectMotionEvent warning:display==null."

    .line 1575
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    const-string v0, "android.hardware.input.InputManager"

    .line 1579
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getInstance"

    new-array v5, v4, [Ljava/lang/Class;

    .line 1580
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 1581
    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1584
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "injectInputEvent"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/view/InputEvent;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v4

    .line 1585
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1587
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private isAccessibilityMenuAvailable()Z
    .locals 0

    .line 7156
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAccessibilityMenuShortcutAvailable()Z
    .locals 0

    .line 7160
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAllowToAppHoldState(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result p0

    return p0

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->isInHoldState()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAppPair()Z
    .locals 1

    .line 3980
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAppToRecentsAnimRunning()Z
    .locals 0

    .line 4667
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBlockedAfterExitSmallWindowMode(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 3034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 3049
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    return p0

    .line 3042
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    if-eqz p1, :cond_1

    const-string v1, "isBlocked"

    .line 3044
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 3046
    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    return p1

    :cond_2
    const-string p1, "BLOCKER_ID_FOR_APP_DRAG_AFTER_EXIT_SMALL_WINDOW_MODE"

    .line 3036
    invoke-static {p1}, Lcom/miui/home/recents/util/TimeOutBlocker;->isBlocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3037
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getRunningTaskPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isLastValidSmallWindowPackageName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    .line 3038
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsBlockedAfterExitSmallWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    return p0
.end method

.method private isBlockedAfterStartNewTask(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 3058
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 3076
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    return p0

    .line 3065
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    if-eqz p1, :cond_1

    .line 3067
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mBlockedAfterStartNewTaskNum:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mBlockedAfterStartNewTaskNum:I

    const-string v1, "isBlocked"

    .line 3068
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 3070
    :cond_1
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mBlockedAfterStartNewTaskNum:I

    const/4 v2, 0x0

    if-lt v1, v0, :cond_2

    .line 3071
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setIsLaunchingTask(Z)V

    .line 3073
    :cond_2
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    return p1

    .line 3060
    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsLaunchingNewTask:Z

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    .line 3061
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsBlockedAfterStartNewTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    return p0
.end method

.method private isElementAnim()Z
    .locals 1

    .line 4462
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 4463
    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    .line 4464
    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getElementTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4465
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isNormalMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isIconLayoutFromSoscChange(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 3987
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "isIconLayoutFromSoscChange: launcher is null, return false"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3990
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInSoscing()Z

    move-result p0

    .line 3991
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIconLayoutFromSoscChange: isIconLayout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isImmersive()Z
    .locals 3

    .line 6275
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6276
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    xor-int/2addr p0, v1

    return p0

    .line 6278
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method private isInDarkMode(Landroid/content/res/Configuration;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1077
    iget p0, p1, Landroid/content/res/Configuration;->uiMode:I

    const/16 p1, 0x20

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInScreenPinning()Z
    .locals 1

    .line 2380
    sget-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/ScreenPinnedHelper;->isInPinned(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isInvalidRectF(Landroid/graphics/RectF;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 4319
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

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

.method private isLandScapeActually()Z
    .locals 3

    .line 556
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 557
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLandScapeActually: orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLandscapeDisplay()Z
    .locals 3

    .line 3824
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3825
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private isLandscapeVisually()Z
    .locals 1

    .line 562
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    goto :goto_0

    .line 564
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

.method private isMistakeTouch()Z
    .locals 3

    .line 6283
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_mistake_touch_toast"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6284
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "isMistakeTouch: show_mistake_touch_toast = 0"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6288
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandScapeActually()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isImmersive()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    return v2
.end method

.method private isNeedAdjustTouchArea()Z
    .locals 2

    .line 1212
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1215
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_1

    return v1

    .line 1218
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1221
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1222
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeDisplay()Z

    move-result p0

    return p0

    .line 1224
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private isNeedInjectWithFinishCallBack()Z
    .locals 3

    .line 1450
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1453
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getState()I

    move-result v0

    .line 1454
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->isPre()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p0, -0x1

    if-ne v0, p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private isNeedStopBecauseRecentsRemoteAnimStartFailed()Z
    .locals 1

    .line 5371
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedToScreenCenter()Z
    .locals 5

    .line 4077
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isElementAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 4081
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 4085
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isShowingUserPresentAnimation()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 4089
    :cond_4
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->getFastLaunchRunningTaskPkgName()Ljava/lang/String;

    move-result-object v2

    .line 4090
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getRunningTaskPkgName()Ljava/lang/String;

    move-result-object p0

    .line 4092
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 4094
    invoke-static {p0, v2}, Lcom/miui/home/recents/CloseShortcutIconUtils;->isRelativePackageName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4095
    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4096
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedToScreenCenter, fastLaunchApp is different from runningTask, fastLaunchPkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", runningTaskPkgName:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private isOneHandedModeActive()Z
    .locals 0

    .line 2417
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->isOneHandedModeActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOneHandedModeEnabled()Z
    .locals 0

    .line 2412
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->isOneHandedModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOneHandedModeSupported()Z
    .locals 0

    .line 2407
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isOneHandedModeSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOtherHomeActivityOnTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 2149
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isPauseWhileSwipeUp()Z
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getFollowTailDistance()F

    move-result p0

    const/high16 v0, 0x41c80000    # 25.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortraitDisplay()Z
    .locals 2

    .line 3816
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3817
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isQuickSearchHandleGesture(Ljava/lang/String;)Z
    .locals 2

    .line 2399
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportQuickSearchHandleGesture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, ":com.android.quicksearchbox.SearchActivityTransparent:com.android.quicksearchbox.SearchActivity"

    .line 2402
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAppPair()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isQuickSwitchInsidePair()Z
    .locals 0

    .line 5332
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getStartSingleAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isQuickSwitchInsidePairDirectionLeft(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isQuickSwitchInsidePairDirectionRight(II)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRecentsContainerLandscapeVisually()Z
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 569
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 570
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 571
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscapeVisually()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRecentsDisabled()Z
    .locals 0

    .line 1594
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsRecentDisabled:Z

    return p0
.end method

.method private isRecentsLoaded()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 540
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRecentsRemoteAnimStarted()Z
    .locals 2

    .line 5375
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5376
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "isRecentsRemoteAnimStarted = false, mRecentsAnimationListenerImpl is null"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5379
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsMerged:Z

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    .line 5380
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->hasRecentInit()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isSoscGestureStartInHalfSplitMode()Z
    .locals 1

    .line 2375
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mSoscFromState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isSoscGestureStartInSplitMode()Z
    .locals 1

    .line 2371
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mSoscFromState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStartOrStopOneHandMode()Z
    .locals 3

    .line 2430
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsContainerLandscapeVisually()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2434
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isOneHandedModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getInitY()F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrY()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedTouchSlop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isOneHandedModeActive()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private isStartTopWindow()Z
    .locals 1

    .line 7139
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTopWindowInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isInHoldState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportSmallWindowByRotation()Z
    .locals 4

    .line 7066
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v0

    .line 7067
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    .line 7068
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportByRotation: homeRotation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; displayRotation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7069
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "isSupportByRotation: Applications that force vertical screens do not support"

    .line 7071
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    const-string p0, "isSupportByRotation: Applications that force horizontal screens do not support"

    .line 7074
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isSupportSplitGesture()Z
    .locals 2

    .line 2306
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2309
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    .line 2312
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private isSupportThroughPass(FFLandroid/view/MotionEvent;)Z
    .locals 2

    .line 1919
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    .line 1923
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureEventManager:Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureListener:Lcom/miui/home/recents/gesture/NavStubGestureListener;

    if-eqz p2, :cond_1

    .line 1924
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isSupportDoubleAction()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureEventManager:Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    .line 1925
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->isSupportVoiceAssistant()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1926
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureListener:Lcom/miui/home/recents/gesture/NavStubGestureListener;

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/NavStubGestureListener;->getHotAreaRect()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1927
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isTaskStackLayoutStyleVertical()Z
    .locals 0

    .line 3936
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3937
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTopWindowInit()Z
    .locals 0

    .line 7095
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isInit()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private keyguardTouchResolution(Landroid/view/MotionEvent;)V
    .locals 5

    .line 6589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 6593
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 6597
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureHomeCalculator;->isFastPullUp()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6598
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 6599
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_3

    .line 6600
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.miui.keyguard.editor.EditorActivity"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6601
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6602
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getActionUpSpeedAndDirection()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->sendBroadcastToAppForHandleGesture(ILjava/lang/String;)V

    goto :goto_0

    .line 6604
    :cond_2
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "keyguardTouchResolution: KEYCODE_BACK"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6605
    invoke-virtual {p0, v4, v4, v0}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    .line 6606
    invoke-virtual {p0, v2, v4, v0}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    goto :goto_0

    .line 6609
    :cond_3
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "keyguardTouchResolution: KEYCODE_HOME"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6610
    invoke-virtual {p0, v4, v4, v1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    .line 6611
    invoke-virtual {p0, v2, v4, v1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    :cond_4
    :goto_0
    const-string p1, "keyguardTouchResolution"

    .line 6615
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$appTouchResolution$13()V
    .locals 3

    .line 3160
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mMotionEventPosition:Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    iget v1, v0, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->rawX:F

    iget v0, v0, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->rawY:F

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/recents/NavStubView;->updateSmallWindowCrop(FFZ)V

    return-void
.end method

.method private synthetic lambda$appTouchResolution$14()V
    .locals 3

    .line 3157
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->hasTopWindowCrop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->isSupportSmallWindow:Z

    .line 3158
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasTopWindowCrop: isSupportSmallWindow= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->isSupportSmallWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; mIsGestureStarted= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->isSupportSmallWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-eqz v0, :cond_0

    .line 3160
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda28;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$backGestureUp$8()V
    .locals 0

    .line 2143
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    return-void
.end method

.method private synthetic lambda$changeAlphaScaleForFsGesture$2(FF)V
    .locals 6

    .line 1085
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    .line 1086
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->changeShortcutMenuLayerAlphaScale(FFIIZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$commonAnimStartAppToHome$25(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 4166
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4167
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsSheet;->shouldShow(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4168
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideLandscapeShortcutMenuLayer()V

    .line 4170
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 4171
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-boolean v2, v0, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    .line 4172
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    const/4 v1, 0x0

    .line 4173
    iput-boolean v1, v0, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    .line 4175
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    .line 4176
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4177
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v3, "commonAnimStartAppToHome "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4179
    invoke-direct {p0, v1, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    :cond_2
    if-nez v0, :cond_3

    .line 4183
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "commonAnimStartAppToHome cancelEndDetector"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelEndDetector()V

    .line 4186
    :cond_3
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentBreakOpenAnimRunning()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 4187
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onGesturePerformAppToHome()V

    .line 4188
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateMamlDownloadVisible(I)V

    return-void
.end method

.method private synthetic lambda$commonAppTouchFromUpOrCancel$15()V
    .locals 0

    .line 3326
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    return-void
.end method

.method private synthetic lambda$commonFinishAppToHome$32()V
    .locals 1

    const/4 v0, 0x1

    .line 4649
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot(Z)Landroid/graphics/Bitmap;

    return-void
.end method

.method private synthetic lambda$commonHomeTouchFromDown$42()V
    .locals 0

    .line 6339
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 6340
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyStateIfNeed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$commonHomeTouchFromDown$43()V
    .locals 0

    .line 6356
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 6357
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->endAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$commonQuickSwitchTouchFromDown$12()V
    .locals 3

    .line 2935
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2936
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 2937
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2938
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$enableInputProxy$3(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/recents/util/TransformEventUtils;->transformEventIfNeed(Landroid/view/MotionEvent;Lcom/miui/home/launcher/Launcher;Z)V

    .line 1261
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$enterAppHoldState$24()V
    .locals 2

    .line 3924
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/launcher/LauncherState;->disableRestore:Z

    return-void
.end method

.method private synthetic lambda$enterHomeHoldState$44()V
    .locals 22

    move-object/from16 v0, p0

    .line 6401
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterHomeHoldState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6403
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 6405
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    .line 6406
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 6407
    iput-boolean v4, v1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    .line 6409
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6410
    new-instance v1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object v4, v1

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    const/4 v6, -0x1

    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6411
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 6412
    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v14

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v15

    .line 6413
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v16

    iget v3, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    move/from16 v17, v3

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v18

    iget v3, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    move/from16 v19, v3

    iget v3, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v20, v3

    iget v3, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v21, v3

    invoke-direct/range {v4 .. v21}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    .line 6414
    new-instance v3, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v5

    invoke-direct {v3, v4, v5, v1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;-><init>(IFLcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    .line 6415
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v4, Lcom/miui/home/recents/event/GestureHomeMoveEvent;

    invoke-direct {v4, v3}, Lcom/miui/home/recents/event/GestureHomeMoveEvent;-><init>(Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;)V

    invoke-virtual {v1, v4}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6419
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/RecentsView;

    .line 6420
    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6422
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    .line 6423
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/RecentsView;->updateEmptyView(I)V

    .line 6426
    :cond_1
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 6428
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6429
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    .line 6431
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 6433
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$exitHomeHoldState$45()V
    .locals 1

    .line 6450
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    .line 6451
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyView()V

    .line 6453
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    return-void
.end method

.method private synthetic lambda$finishAppToHome$31()V
    .locals 1

    const/4 v0, 0x0

    .line 4628
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    return-void
.end method

.method private synthetic lambda$finishAppToHomeNew$30()V
    .locals 1

    const/4 v0, 0x1

    .line 4457
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot(Z)Landroid/graphics/Bitmap;

    return-void
.end method

.method private synthetic lambda$finishHideTaskView$26()V
    .locals 2

    .line 4198
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4199
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 4200
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4201
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$finishRecentsAnimation$19()V
    .locals 2

    .line 3528
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->isPre()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3529
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3532
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerDirectly(ZZ)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$finishSmallTop$37()V
    .locals 1

    .line 5109
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5111
    invoke-interface {v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initLauncherViewStateForAppTouch$22()V
    .locals 2

    .line 3699
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    .line 3700
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initTaskViews()V

    .line 3701
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3702
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 3704
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3705
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 3707
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenGestureAppModeStart(Lcom/miui/home/launcher/Launcher;)V

    .line 3709
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->endAnimation()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initLauncherViewStateForHalfAppTouch$23()V
    .locals 1

    .line 3728
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 3729
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3730
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 3732
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->endAnimation()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initRecentsAnimation$9()V
    .locals 1

    const/4 v0, 0x0

    .line 2741
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot(Z)Landroid/graphics/Bitmap;

    .line 2742
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "onRecentsAnimationStart before send MSG_ON_RECENT_ANIM_START"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$new$17()V
    .locals 4

    .line 3382
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 3383
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    sget-object v2, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;->HIGH_FOR_NON_RENDER_THREAD:Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    const/16 v3, 0x1f4

    .line 3382
    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/library/utils/CPUBooster;->boostThreadLevel([IILcom/miui/home/library/utils/CPUBooster$ThreadLevel;)V

    .line 3386
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/launcher/utils/BoostHelper;->setDynamicVIPTaskIfNeeded(I)V

    return-void
.end method

.method private synthetic lambda$new$18()V
    .locals 11

    const-string v0, "startRecentsTransition"

    const/4 v1, 0x0

    .line 3379
    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 3380
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 3381
    sget-object v3, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda44;->INSTANCE:Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda44;

    invoke-static {v3}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 3388
    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-nez v3, :cond_1

    .line 3391
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 3392
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3393
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_0

    .line 3394
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v5, v6

    .line 3395
    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/RectF;->bottom:F

    .line 3396
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 3397
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v3, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 3398
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mMatrixArray:[F

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3400
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    aput v1, v3, v1

    .line 3401
    aput v1, v3, v4

    const/4 v6, 0x2

    .line 3402
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    aput v7, v3, v6

    .line 3403
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, v3, v6

    .line 3405
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRadius()F

    move-result v2

    .line 3406
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mMatrixArray:[F

    const-string v6, "KEY_RECENTSANIMATION_MATRIX"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    const-string v6, "KEY_RECENTSANIMATION_CROP"

    .line 3407
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "KEY_RECENTSANIMATION_RADIUS"

    .line 3408
    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_0

    .line 3410
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeRecentsAnimationExtra()V

    goto :goto_0

    .line 3413
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeRecentsAnimationExtra()V

    .line 3415
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3416
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    .line 3420
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-nez v4, :cond_3

    .line 3422
    invoke-static {v8}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->setTransientLaunch(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    :cond_3
    const/4 v2, 0x4

    .line 3424
    iget-wide v3, p0, Lcom/miui/home/recents/NavStubView;->mSwipeUpStartTimeMs:J

    invoke-static {v8, v2, v3, v4}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->setSourceInfo(Landroid/app/ActivityOptions;IJ)V

    .line 3425
    sget-object v5, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mRecentsPendingIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-object v10, p0, Lcom/miui/home/recents/NavStubView;->mBarFollowAnimationRunnerImpl:Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;

    invoke-virtual/range {v5 .. v10}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startRecentsActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;)Z

    goto :goto_2

    .line 3427
    :cond_4
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v2, v3, v4, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    .line 3430
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$new$29()V
    .locals 3

    .line 4258
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 4259
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4260
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v2, Lcom/miui/home/recents/event/ResetLauncherPropertyEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/event/ResetLauncherPropertyEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 4262
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$38()V
    .locals 2

    .line 5802
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5803
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$39()V
    .locals 3

    .line 5808
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5809
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 5811
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherPropertyIfNeed()V

    return-void
.end method

.method private synthetic lambda$new$48()V
    .locals 3

    .line 6778
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "crossSafeArea"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6780
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6781
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDisplayRotationChanged$5()V
    .locals 1

    .line 1511
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onInputConsumerEvent$4(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mEventReceiver:Ljava/util/function/Predicate;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1295
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSoscStateChanged$6(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSoScStateChanged    state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "lotBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "robBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubView_Touch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mState:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSoscLeftOrTopBounds:Landroid/graphics/Rect;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSoscRightOrBottomBounds:Landroid/graphics/Rect;

    if-eq p3, v0, :cond_1

    .line 1522
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mState:I

    .line 1523
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mSoscLeftOrTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1524
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mSoscRightOrBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1525
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "  onSoScStateChanged requestApplyInsets"

    .line 1526
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onSystemUiFlagsChanged$7()V
    .locals 1

    .line 1620
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v0, :cond_1

    .line 1622
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 1621
    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->updateVisibilityState(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onTasksAppearedFinished$10()V
    .locals 1

    const/4 v0, 0x0

    .line 2803
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsLaunchingTask(Z)V

    .line 2804
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsStartHalfSplit(Z)V

    return-void
.end method

.method private synthetic lambda$performAppToRecents$33(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 4688
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/miui/home/recents/util/TransformEventUtils;->transformEventIfNeed(Landroid/view/MotionEvent;Lcom/miui/home/launcher/Launcher;Z)V

    .line 4689
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$performAppToRecents$34()V
    .locals 2

    .line 4739
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    return-void
.end method

.method private synthetic lambda$performAppToRecentsInHalfSplit$35()V
    .locals 2

    .line 4878
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4879
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 4881
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    .line 4882
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->setupVisible()V

    .line 4884
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$performHalfAppToRecentsNormal$36()V
    .locals 2

    .line 4969
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    return-void
.end method

.method private synthetic lambda$performHomeToHome$46()V
    .locals 3

    .line 6496
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 6498
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ignore_bring_to_front"

    const/4 v2, 0x1

    .line 6499
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "filter_flag"

    .line 6500
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6501
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resetLauncherProperty$27(Z)V
    .locals 1

    .line 4222
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 4223
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonResetLauncherProperty(Z)V

    .line 4224
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resetLauncherPropertyIfNeed$40()V
    .locals 1

    const/4 v0, 0x1

    .line 5817
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->commonAppModeGestureEnd(Z)V

    return-void
.end method

.method private synthetic lambda$resetSoscLauncherProperty$28(Z)V
    .locals 1

    .line 4231
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 4232
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonResetLauncherProperty(Z)V

    const/4 p1, 0x1

    .line 4233
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonAppModeGestureEnd(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resetTaskView$1()V
    .locals 1

    const/4 v0, 0x1

    .line 953
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsResetTaskView:Z

    return-void
.end method

.method private static synthetic lambda$showRecents$20()V
    .locals 2

    .line 3675
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/launcher/LauncherState;->disableRestore:Z

    return-void
.end method

.method private synthetic lambda$showRecents$21()V
    .locals 6

    .line 3638
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v0

    .line 3639
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRecents stop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\tmIsShowRecents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\tmLauncherNull = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    .line 3641
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3645
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v0, "addOnGlobalLayoutListener mRecentsViewLayoutListener"

    .line 3646
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3650
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    .line 3651
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 3652
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    invoke-direct {p0, v0, v2}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    .line 3655
    :cond_3
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v4, v0, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    .line 3656
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3657
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/OverviewState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    .line 3658
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    goto :goto_1

    .line 3660
    :cond_4
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 3662
    :goto_1
    iput-boolean v5, v0, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    const-string v2, "addOnGlobalLayoutListener mTaskStackViewLayoutListener"

    .line 3663
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3665
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    .line 3666
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v1, v2, v4}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 3667
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 3668
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateRunningTaskIndexByTaskId()V

    .line 3670
    invoke-virtual {p0, v4}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 3672
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/LauncherStateManager;->setUserControlled(Z)V

    .line 3674
    iput-boolean v5, v0, Lcom/miui/home/launcher/LauncherState;->disableRestore:Z

    .line 3675
    sget-object v0, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda45;->INSTANCE:Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda45;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$switchToScreenshot$41(Lcom/android/systemui/shared/recents/model/ThumbnailData;Lcom/android/systemui/shared/recents/model/ThumbnailData;I)V
    .locals 2

    .line 5996
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5997
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5998
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6000
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6001
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/miui/home/recents/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateQuickSwitchTaskHold$11(Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2882
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRatio()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateSysUiFlagsDirectly$16(FI)V
    .locals 2

    .line 3354
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3357
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->useHomeSysUiFlags(F)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3358
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 3359
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isLightBgForStatusBar(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    goto :goto_2

    .line 3360
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3361
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    move p1, p2

    goto :goto_0

    .line 3363
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSysUiStatusNavFlags()I

    move-result p1

    .line 3364
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, p2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 3365
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$updateTaskViewNew$0(ZLandroid/graphics/RectF;Ljava/lang/Runnable;ZIFZFFZ)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    iget-object v0, v15, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isInHoldState()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_0
    iget-boolean v0, v15, Lcom/miui/home/recents/NavStubView;->mIsResetTaskView:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 869
    :cond_1
    invoke-direct {v15, v14}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 871
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 873
    :cond_2
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTaskViewNew error: rectF="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p4, :cond_4

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v2

    .line 880
    invoke-virtual {v14, v0, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 883
    :cond_4
    iget-object v0, v15, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v16

    .line 884
    new-instance v13, Lcom/miui/home/launcher/common/BooleanValue;

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v13, v0}, Lcom/miui/home/launcher/common/BooleanValue;-><init>(Z)V

    .line 885
    iget v12, v14, Landroid/graphics/RectF;->left:F

    .line 886
    iget-object v0, v15, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 887
    iget-object v0, v15, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    add-int/lit8 v1, v16, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v11

    .line 888
    new-instance v10, Lcom/miui/home/recents/NavStubView$PairCounts;

    invoke-direct {v10, v15}, Lcom/miui/home/recents/NavStubView$PairCounts;-><init>(Lcom/miui/home/recents/NavStubView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p5

    move-object v3, v13

    move-object/from16 v4, p2

    move v5, v12

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p4

    move/from16 v9, p7

    move-object/from16 v18, v10

    move/from16 v10, p8

    move v15, v11

    move/from16 v11, p9

    move/from16 v19, v12

    move/from16 v12, p10

    move-object/from16 v20, v13

    move-object/from16 v13, p3

    move-object/from16 v14, v18

    .line 889
    invoke-direct/range {v0 .. v14}, Lcom/miui/home/recents/NavStubView;->callUpdateTaskViewMethods(Ljava/util/List;ILcom/miui/home/launcher/common/BooleanValue;Landroid/graphics/RectF;FIFZZFFZLjava/lang/Runnable;Lcom/miui/home/recents/NavStubView$PairCounts;)V

    add-int/lit8 v0, p5, -0x1

    move v14, v0

    :goto_1
    sub-int v11, v15, v16

    if-le v14, v11, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v14

    move-object/from16 v3, v20

    move-object/from16 v4, p2

    move/from16 v5, v19

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p3

    move/from16 v21, v14

    move-object/from16 v14, v18

    .line 892
    invoke-direct/range {v0 .. v14}, Lcom/miui/home/recents/NavStubView;->callUpdateTaskViewMethods(Ljava/util/List;ILcom/miui/home/launcher/common/BooleanValue;Landroid/graphics/RectF;FIFZZFFZLjava/lang/Runnable;Lcom/miui/home/recents/NavStubView$PairCounts;)V

    add-int/lit8 v14, v21, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, p5, 0x1

    move v14, v0

    :goto_2
    if-gt v14, v15, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v14

    move-object/from16 v3, v20

    move-object/from16 v4, p2

    move/from16 v5, v19

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p3

    move/from16 v16, v14

    move-object/from16 v14, v18

    .line 896
    invoke-direct/range {v0 .. v14}, Lcom/miui/home/recents/NavStubView;->callUpdateTaskViewMethods(Ljava/util/List;ILcom/miui/home/launcher/common/BooleanValue;Landroid/graphics/RectF;FIFZZFFZLjava/lang/Runnable;Lcom/miui/home/recents/NavStubView$PairCounts;)V

    add-int/lit8 v14, v16, 0x1

    goto :goto_2

    .line 899
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/miui/home/recents/NavStubView$PairCounts;->clearPairCount()V

    :cond_8
    :goto_3
    return-void
.end method

.method private modifyTransformVisible(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;I)V"
        }
    .end annotation

    .line 4282
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    .line 4283
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4284
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskViewTransform;

    sub-int v3, p0, p2

    if-lt v1, v3, :cond_0

    add-int v3, p0, p2

    if-gt v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    .line 4285
    :goto_1
    iput-boolean v3, v2, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private needFindClosingShortcutIcon()Z
    .locals 1

    .line 3996
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private notifyAccessibilityButtonClicked(I)V
    .locals 0

    .line 7148
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method

.method private notifyAccessibilityButtonLongClicked()V
    .locals 0

    .line 7152
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->notifyAccessibilityButtonLongClicked()V

    return-void
.end method

.method private onAppModeGestureEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 4291
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->commonAppModeGestureEnd(Z)V

    return-void
.end method

.method private onAppModeGestureEnd(Z)V
    .locals 0

    .line 4295
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonAppModeGestureEnd(Z)V

    return-void
.end method

.method private onHalfAppModeGestureEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 4299
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->commonAppModeGestureEnd(Z)V

    .line 4300
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSoscGestureStartInSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4301
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mNonAppTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p0}, Lcom/miui/home/recents/TaskViewUtils;->showDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    :cond_0
    return-void
.end method

.method private onHalfAppModeToHalfAppGestureEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 4306
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->commonAppModeGestureEnd(Z)V

    .line 4307
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mNonAppTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p0}, Lcom/miui/home/recents/TaskViewUtils;->showDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method private onHomeGestureTaskAppeared()V
    .locals 1

    const/4 v0, 0x0

    .line 2782
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->onTasksAppearedFinished([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const/4 v0, 0x0

    .line 2783
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    return-void
.end method

.method private onInputConsumerEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1274
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTopWindowInit()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    .line 1275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/recents/views/SmallWindowCrop;->isClickInAnim(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->isFromSmallWindow:Z

    if-nez v0, :cond_2

    .line 1277
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsHalfQuickSwitching:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1289
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1290
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v3, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda37;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda37;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v3}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    return v2

    .line 1278
    :cond_2
    :goto_1
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInputConsumerEvent return, mIgnoreInputConsumer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsQuickSwitching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsHalfQuickSwitching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsHalfQuickSwitching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isFromSmallWindow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->isFromSmallWindow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->isFromSmallWindow:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 1285
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->isFromSmallWindow:Z

    :cond_4
    return v2
.end method

.method private onRecentsAnimationStartForNormal(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 2

    .line 2629
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    .line 2630
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2631
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2632
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 2635
    :cond_0
    iget-object v0, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2636
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2637
    iget-object v0, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getDockDivider()[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNonAppTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    goto :goto_0

    .line 2639
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2640
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v1, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->onGoingToRecentsLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNonAppTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    goto :goto_0

    .line 2642
    :cond_2
    sget-object v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    iget-object v1, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v1, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onGoingToRecentsLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNonAppTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 2645
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNonAppTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {v0}, Lcom/miui/home/recents/TaskViewUtils;->hideDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 2647
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initRecentsAnimation(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    return-void
.end method

.method private onRecentsAnimationStartForSosc(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 2

    .line 2651
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSoscGestureStartInHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2652
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v1, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->onGoingToRecentsLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNonAppTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 2653
    invoke-static {v0}, Lcom/miui/home/recents/TaskViewUtils;->hideDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 2655
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initRecentsAnimation(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    return-void
.end method

.method private onTasksAppearedFinished([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 3

    .line 2793
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsStartHalfSplit:Z

    if-eqz v0, :cond_0

    .line 2794
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeFinishSoscRunnable()V

    .line 2795
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_1

    .line 2796
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishSoscControllerAsync(IZZ)V

    goto :goto_0

    .line 2799
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->removeFinishRunnable()V

    .line 2801
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/TaskLaunchedEvent;

    new-instance v2, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;

    invoke-direct {v2, p1}, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/TaskLaunchedEvent;-><init>(Lcom/miui/home/recents/event/TaskLaunchedEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 2802
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda12;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private oneHandTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 2469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2471
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->getDownY()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/NavStubView;->startOrStopOneHandMode(Landroid/content/Context;FF)V

    .line 2473
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    const-string p1, "oneHandTouchResolution"

    .line 2474
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private performAppToRecentsInHalfSplit(Z)V
    .locals 33

    move-object/from16 v0, p0

    .line 4865
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "performHalfAppToRecentsInHalfSplit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4867
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object v2

    sget-object v3, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_RECENT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 4868
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessStart()V

    .line 4869
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 4870
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    .line 4872
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "toRecents"

    const-string v5, "gesture"

    invoke-static {v3, v4, v5}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 4875
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 4877
    :cond_0
    new-instance v3, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda13;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/folme/FolmeUtils;->hideThenShowRecentsAnim(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 4887
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 4888
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 4889
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    .line 4890
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f266666    # 0.65f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 4891
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    .line 4888
    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v15, 0x0

    .line 4896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performHalfAppToRecentsInHalfSplit, mCurRect="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", homeRotationTargetRectF="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", targetRectF="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4900
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->beforeStartHalfAppToRecentsAnim()V

    const-string v1, "performAppToRecentsInHalfSplit"

    .line 4901
    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 4903
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v1

    int-to-float v13, v1

    .line 4904
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 4905
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iput v1, v0, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    .line 4906
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/DimLayer;->getCurrentAlpha()F

    move-result v1

    iput v1, v0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsStartDimLayerAlpha:F

    .line 4907
    new-instance v1, Lcom/miui/home/recents/anim/RectFParams;

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3, v2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v11

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 4908
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v12

    const/high16 v14, 0x3f800000    # 1.0f

    sget-object v16, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/16 v17, 0x1

    const/16 v18, 0x1

    .line 4909
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v19

    const/16 v20, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mHalfAppToRecentsInHalfSplitAnimatorListenerAdapter:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;

    move-object/from16 v21, v2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    move-object/from16 v26, v2

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v31, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v32, v2

    invoke-direct/range {v8 .. v32}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZII)V

    .line 4912
    sget-object v2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    new-instance v3, Lcom/miui/home/recents/event/HalfAppToRecentEvent;

    new-instance v5, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;

    .line 4913
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v6

    invoke-direct {v5, v1, v6, v4}, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;-><init>(Lcom/miui/home/recents/anim/RectFParams;ZLcom/miui/home/recents/anim/TaskViewsParams;)V

    invoke-direct {v3, v5}, Lcom/miui/home/recents/event/HalfAppToRecentEvent;-><init>(Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;)V

    .line 4912
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto :goto_0

    .line 4915
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    .line 4917
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method private performHalfAppToRecentsNormal(Z)V
    .locals 28

    move-object/from16 v0, p0

    .line 4921
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "performHalfAppToRecentsNormal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4923
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object v3

    sget-object v4, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_RECENT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 4924
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 4925
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v3

    .line 4927
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 4928
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v4

    .line 4929
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v6

    const/4 v7, 0x1

    if-nez p1, :cond_0

    .line 4931
    sget-object v3, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v3

    new-instance v5, Lcom/miui/home/recents/event/GestureEnterAppHoldEvent;

    invoke-direct {v5}, Lcom/miui/home/recents/event/GestureEnterAppHoldEvent;-><init>()V

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 4932
    invoke-virtual {v0, v7}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 4933
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation()V

    .line 4934
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 4935
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v3, v5, v6}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 4936
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v6

    iget v8, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v6, v8}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    .line 4937
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    .line 4938
    invoke-virtual {v4, v3, v7}, Lcom/miui/home/recents/views/TaskStackView;->initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    move v3, v5

    goto :goto_0

    .line 4940
    :cond_0
    invoke-virtual {v4, v6, v5}, Lcom/miui/home/recents/views/TaskStackView;->initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 4943
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "toRecents"

    const-string v8, "gesture"

    invoke-static {v5, v6, v8}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 4946
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 4949
    :cond_1
    invoke-direct {v0, v2}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 4950
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    .line 4951
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v5

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v2, v5, v6, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTargetTaskViewIndex(ZII)I

    move-result v2

    .line 4952
    invoke-virtual {v4, v2}, Lcom/miui/home/recents/views/TaskStackView;->getScrollForTaskView(I)F

    move-result v2

    .line 4954
    iget-boolean v5, v0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v5, :cond_2

    .line 4955
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    goto :goto_1

    .line 4957
    :cond_2
    iput-boolean v7, v0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 4961
    invoke-virtual {v4, v3, v2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4962
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4963
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 4964
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    .line 4965
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    int-to-float v4, v4

    .line 4966
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    .line 4967
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    int-to-float v6, v6

    .line 4964
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v5, 0x0

    .line 4969
    sget-object v3, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v4, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    move v10, v5

    .line 4973
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v6, v2

    goto :goto_2

    .line 4976
    :cond_5
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 4977
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getCurrentDisplayRotation()I

    move-result v4

    .line 4978
    invoke-static {v3, v4, v2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    .line 4980
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performHalfAppToRecentsNormal, homeRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentDisplayRotation="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 4984
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performHalfAppToRecentsNormal, mCurRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", homeRotationTargetRectF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetRectF="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->beforeStartHalfAppToRecentsAnim()V

    .line 4990
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v1

    int-to-float v8, v1

    .line 4991
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 4992
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    iput v1, v0, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    .line 4993
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/DimLayer;->getCurrentAlpha()F

    move-result v1

    iput v1, v0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsStartDimLayerAlpha:F

    .line 4995
    new-instance v1, Lcom/miui/home/recents/anim/RectFParams;

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v6}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 4996
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v11, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 4997
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v14

    iget-object v15, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mHalfAppToRecentsAnimatorListenerAdapter:Lcom/miui/home/recents/NavStubView$HalfAppToRecentsAnimatorListenerAdapter;

    move-object/from16 v16, v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    move-object/from16 v21, v2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v26, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v27, v2

    invoke-direct/range {v3 .. v27}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZII)V

    .line 5000
    sget-object v2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    new-instance v3, Lcom/miui/home/recents/event/HalfAppToRecentEvent;

    new-instance v4, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v5

    sget-object v6, Lcom/miui/home/recents/anim/TaskViewsParams;->Companion:Lcom/miui/home/recents/anim/TaskViewsParams$Companion;

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/TaskViewsParams$Companion;->buildAppToRecentTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;-><init>(Lcom/miui/home/recents/anim/RectFParams;ZLcom/miui/home/recents/anim/TaskViewsParams;)V

    invoke-direct {v3, v4}, Lcom/miui/home/recents/event/HalfAppToRecentEvent;-><init>(Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto :goto_3

    .line 5002
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    .line 5004
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method private postGoToNormalStartRunnable()V
    .locals 3

    .line 4249
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeGoToNormalStartRunnable()V

    .line 4250
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private preloadTasks(I)V
    .locals 2

    .line 3304
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p0

    .line 3305
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v0

    .line 3306
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    return-void
.end method

.method private quickSwitchTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 2892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 2893
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2894
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 2896
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2897
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 2899
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonQuickSwitchTouchFromDown()V

    goto :goto_0

    .line 2900
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2901
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonQuickSwitchTouchFromMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2902
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 2903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 2904
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonQuickSwitchTouchFromUpOrCancel()V

    const/4 p1, 0x0

    .line 2905
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    const-string p1, "QuickSwitchTouchResolution"

    .line 2906
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private recentsTouchResolution(Landroid/view/MotionEvent;)V
    .locals 3

    .line 6646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 6653
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 6655
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 6659
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->resetSplitRatioBeforeHold()V

    .line 6660
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    const-string p1, "recentsTouchResolution"

    .line 6661
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_0

    .line 6648
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsModeEvent:Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6649
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->endAppToRecentsAnimIfNeeded()V

    .line 6650
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->getSplitRadio()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mSplitRatioBeforeHold:F

    :goto_0
    return-void
.end method

.method private registerInputConsumer()V
    .locals 2

    .line 1138
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "registerInputConsumer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-static {}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/recents/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    .line 1140
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->registerInputConsumer()V

    return-void
.end method

.method private removeFinishSoscRunnable()V
    .locals 1

    .line 5894
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5895
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFinishSoscRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeGoToNormalStartRunnable()V
    .locals 1

    .line 4254
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeLayoutListener()V
    .locals 3

    .line 3579
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3580
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "removeLayoutListener mRecentsViewLayoutListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3582
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "removeLayoutListener mTaskStackViewLayoutListener"

    .line 3583
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private removeRecentsAnimationExtra()V
    .locals 2

    .line 3434
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "KEY_RECENTSANIMATION_MATRIX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3435
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "KEY_RECENTSANIMATION_CROP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3436
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v0, "KEY_RECENTSANIMATION_RADIUS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method private reset9_1TaskViewRatio()V
    .locals 4

    .line 5928
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_3

    .line 5929
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 5930
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5933
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5935
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 5937
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    if-eqz v2, :cond_2

    .line 5938
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->is9_1Task()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5939
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5941
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    .line 5943
    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5945
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4209
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, -0x1

    .line 4211
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    :cond_0
    return-void
.end method

.method private resetLauncherAlphaScaleWhenUseSimpleAnim()V
    .locals 1

    .line 4323
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4324
    invoke-direct {p0, v0, v0}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    :cond_0
    return-void
.end method

.method private resetLauncherProperty()V
    .locals 1

    const/4 v0, 0x0

    .line 4217
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    return-void
.end method

.method private resetLauncherProperty(Z)V
    .locals 2

    .line 4221
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda41;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetLauncherPropertyIfNeed()V
    .locals 2

    .line 5815
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5816
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda30;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5820
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    :goto_0
    return-void
.end method

.method private resetSoscLauncherProperty(Z)V
    .locals 2

    .line 4230
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda42;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetTaskView()V
    .locals 2

    .line 951
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda25;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetTaskViewThumbnail(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    .line 846
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 847
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method private resetTopWindowCrop()V
    .locals 2

    .line 7113
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::resetTopWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7114
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-eqz p0, :cond_0

    .line 7115
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->resetTopWindowCrop()V

    :cond_0
    return-void
.end method

.method private resetValue()V
    .locals 1

    const/4 v0, 0x1

    .line 6832
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsInFsMode(Z)V

    .line 6833
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    const/4 v0, 0x0

    .line 6834
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    return-void
.end method

.method private resumeLastTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 6012
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "resumeLastTask"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6013
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 6014
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->adaptToTopActivityWhenPause()V

    :cond_0
    return-void
.end method

.method private screenPinTouchResolution(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2483
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenPinnedInputConsumer:Lcom/miui/home/recents/ScreenPinnedInputConsumer;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 2485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "screenPinTouchResolution"

    .line 2488
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendAppMoveEvent(Z)V
    .locals 30

    move-object/from16 v0, p0

    .line 3892
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->getFastLaunchRunningTaskPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 3893
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-boolean v4, v4, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    .line 3894
    :goto_0
    iget-boolean v4, v0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-nez v4, :cond_3

    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    .line 3895
    :cond_1
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v2

    move v10, v2

    goto :goto_1

    :cond_2
    move v10, v5

    .line 3896
    :goto_1
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 3897
    invoke-static {v10, v5, v2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    move-object v12, v2

    .line 3898
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v3, Lcom/miui/home/recents/event/GestureAppMoveEvent;

    new-instance v4, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v7

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskAlpha()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v5

    new-instance v29, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object/from16 v11, v29

    iget v13, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v14, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 3899
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v17

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct {v0, v2}, Lcom/miui/home/recents/NavStubView;->getCurrentWindowRadius(Landroid/graphics/RectF;)F

    move-result v21

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 3900
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v23

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    move/from16 v24, v2

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v25

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    move/from16 v26, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v27, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v28, v2

    invoke-direct/range {v11 .. v28}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    iget-object v13, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    move-object v6, v4

    move/from16 v9, p1

    move v11, v5

    move-object/from16 v12, v29

    invoke-direct/range {v6 .. v13}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;-><init>(FFZIILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/GestureHomeCalculator;)V

    invoke-direct {v3, v4}, Lcom/miui/home/recents/event/GestureAppMoveEvent;-><init>(Lcom/miui/home/recents/event/GestureAppMoveEventInfo;)V

    .line 3898
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_3
    return-void
.end method

.method private sendBroadcastToAppForHandleGesture(ILjava/lang/String;)V
    .locals 4

    .line 6867
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.fullScreenGesture.actionUp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6868
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "actionUpSpeedAndDirection"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6869
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastToAppForHandleGesture, pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", gesture="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6871
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendMsgDownToStateMachine(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2172
    :pswitch_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 p1, 0x6a

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    .line 2173
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/GestureRecentDownEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/event/GestureRecentDownEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto :goto_0

    .line 2187
    :pswitch_1
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 p1, 0x69

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 2180
    :pswitch_2
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 p1, 0x68

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    .line 2181
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/GestureHomeDownEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/event/GestureHomeDownEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto :goto_0

    .line 2162
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 p1, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 2165
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2159
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 p1, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 2168
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 p1, 0x66

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    .line 2169
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/GestureRecentDownEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/event/GestureRecentDownEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto :goto_0

    .line 2184
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 p1, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 2176
    :cond_5
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 p1, 0x64

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    .line 2177
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/GestureHomeDownEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/event/GestureHomeDownEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAppTransformParams(Landroid/graphics/RectF;FFFZ)V
    .locals 1

    .line 6267
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {v0, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 6268
    iget-object p4, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p4, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 6269
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 6270
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    sget-object p2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    :cond_0
    return-void
.end method

.method private setFinalTargetRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 4447
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 4449
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method private setIsHalfQuickSwitching(Z)V
    .locals 2

    .line 2977
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsHalfQuickSwitching:Z

    .line 2978
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsHalfQuickSwitching mIsHalfQuickSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsHalfQuickSwitching:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIsInFsMode(Z)V
    .locals 0

    .line 6920
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    return-void
.end method

.method private setIsLaunchingTask(Z)V
    .locals 0

    .line 5825
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsLaunchingNewTask:Z

    const/4 p1, 0x0

    .line 5826
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mBlockedAfterStartNewTaskNum:I

    return-void
.end method

.method private setIsStartHalfSplit(Z)V
    .locals 0

    .line 5870
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsStartHalfSplit:Z

    return-void
.end method

.method private setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    return-void
.end method

.method private setParamsWhenQuickSwitchInsidePair(Landroid/graphics/Rect;)V
    .locals 0

    .line 5327
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setTargetSingleAppBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 5328
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setInsidePairQuickSwitch(Z)V

    return-void
.end method

.method private setPauseAdvanced(Z)V
    .locals 5

    .line 4582
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isNormalMode()Z

    move-result v0

    .line 4583
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPauseAdvanced isNotInSoSc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 4585
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getRunningTaskPkgName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2, p1}, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->setPauseAdvanced(Ljava/lang/String;[IZ)V

    .line 4586
    invoke-static {}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->getInstance()Lcom/miui/home/launcher/util/K8FrontCameraManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getRunningTaskPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->needPauseAdvance(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4587
    invoke-static {}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->getInstance()Lcom/miui/home/launcher/util/K8FrontCameraManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getRunningTaskTopPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->needPauseAdvance(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4588
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->getInstance()Lcom/miui/home/launcher/util/K8FrontCameraManager;

    move-result-object v0

    new-array v1, v1, [I

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    aput p0, v1, v4

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/util/K8FrontCameraManager;->setCameraPauseAdvanced([IZ)V

    :cond_1
    return-void
.end method

.method private setQuickSwitchTaskIndex(I)V
    .locals 2

    .line 6056
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 6057
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQuickSwitchTaskIndex, mQuickSwitchTaskIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setRunningTaskIndex(I)V
    .locals 2

    .line 3027
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 3028
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRunningTaskIndex, mRunningTaskIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setTaskIfNeedHide(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)I"
        }
    .end annotation

    .line 5345
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getAllSmallWindows()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 5346
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5349
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5350
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-static {p0}, Lcom/miui/home/launcher/util/SoscUtils;->isSoscTouchSingleApp(I)Z

    move-result p0

    .line 5351
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 5352
    invoke-virtual {v2, v0, p0}, Lcom/android/systemui/shared/recents/model/Task;->updateIsNeedHideState(Ljava/util/Set;Z)V

    .line 5353
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private setTopWindowCrop()V
    .locals 1

    .line 7178
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    return-void
.end method

.method private shouldBlockGesture(Landroid/view/MotionEvent;I)Z
    .locals 1

    .line 1735
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->shouldBlockOtherHomeGestureDuringQuickSwitch(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1736
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->shouldBlockGestureInLandscapeDuringClosingAnimation(Landroid/view/MotionEvent;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private shouldBlockGestureInLandscapeDuringClosingAnimation(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 1745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 1764
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mShouldBlockGestureDuringAnimation:Z

    return p0

    .line 1757
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mShouldBlockGestureDuringAnimation:Z

    if-eqz p1, :cond_1

    .line 1758
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mShouldBlockGestureDuringAnimation:Z

    return v1

    :cond_1
    return v0

    .line 1747
    :cond_2
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager;->isClosingAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1748
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1749
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isBottomPositionGesture(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1750
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mShouldBlockGestureDuringAnimation:Z

    return v1

    :cond_3
    return v0
.end method

.method private shouldBlockOtherHomeGestureDuringQuickSwitch(Landroid/view/MotionEvent;I)Z
    .locals 1

    .line 1770
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->updateGesturePosition(Landroid/view/MotionEvent;I)V

    .line 1771
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsHalfQuickSwitching:Z

    if-eqz p1, :cond_2

    :cond_0
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mCurrentGesturePosition:I

    if-eqz p1, :cond_2

    .line 1774
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mLastGesturePosition:I

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isLeftOrRightPositionGesture(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1775
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isBottomPositionGesture(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 1780
    :cond_1
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mLastGesturePosition:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isBottomPositionGesture(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1781
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isLeftOrRightPositionGesture(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private shouldInitTopWindowCrop()Z
    .locals 2

    .line 7091
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsDisabled()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldUseEmptyTouchableRegion()Z
    .locals 1

    .line 1493
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mDisableHomeRecents:Z

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

.method private showRecents()V
    .locals 2

    .line 3637
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda23;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showRunningTaskView()V
    .locals 3

    .line 5091
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 5092
    invoke-virtual {v0, v2, v2, v1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 5094
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5095
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    :cond_1
    return-void
.end method

.method private startAppToHomeAnim(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 31

    move-object/from16 v0, p0

    .line 4337
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 4339
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->findBackAnimTarget(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v1

    .line 4340
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/miui/home/recents/NavStubView;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 4341
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAppToHomeAnim launchAppAndBackHomeAnimTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", appAndBackHomeAnimTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    .line 4343
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4345
    invoke-interface {v3}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    .line 4348
    :cond_0
    instance-of v3, v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;

    if-eqz v3, :cond_1

    .line 4351
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "toStatusBar"

    const-string v6, "gesture"

    invoke-static {v4, v5, v6}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4353
    :cond_1
    sget-object v4, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    if-eqz v3, :cond_2

    .line 4354
    sget-object v5, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_STARTED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    goto :goto_0

    .line 4355
    :cond_2
    sget-object v5, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_UNDEFINED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    .line 4353
    :goto_0
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    .line 4356
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRectF:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4357
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 4358
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 4359
    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v5

    move v13, v5

    goto :goto_1

    :cond_3
    move v13, v6

    .line 4360
    :goto_1
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v13, v4, v5}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    .line 4361
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v5, 0x0

    .line 4366
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 4367
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isElementAnim()Z

    move-result v7

    .line 4368
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v10

    const/4 v9, 0x1

    if-nez v1, :cond_4

    if-nez v7, :cond_4

    move v15, v9

    goto :goto_2

    :cond_4
    move v15, v6

    .line 4370
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v4, :cond_5

    move v6, v9

    :cond_5
    if-eqz v7, :cond_6

    .line 4372
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v5}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v5

    .line 4373
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getElementTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v7

    .line 4374
    iget v9, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->cornerRadius:F

    .line 4375
    sget-object v11, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 4376
    iget-object v12, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4377
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v8, v7, v6}, Lcom/miui/home/recents/NavStubView;->setFinalTargetRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;Z)V

    move-object v6, v5

    move/from16 v16, v9

    move-object/from16 v21, v11

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    .line 4380
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-interface {v1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4381
    invoke-interface {v1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v7

    .line 4382
    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 4384
    :cond_7
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4385
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 4386
    sget-object v7, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 4387
    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v8, v9, v6}, Lcom/miui/home/recents/NavStubView;->setFinalTargetRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;Z)V

    if-eqz v1, :cond_8

    .line 4389
    invoke-static {v1}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v6

    goto :goto_3

    :cond_8
    invoke-direct {v0, v8}, Lcom/miui/home/recents/NavStubView;->getCurrentWindowRadius(Landroid/graphics/RectF;)F

    move-result v6

    :goto_3
    move/from16 v16, v6

    move-object/from16 v21, v7

    move-object v6, v5

    .line 4391
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAppToHomeAnim isCloseToHomeCenter="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isQuickSwitchMode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    new-instance v2, Lcom/miui/home/recents/anim/RectFParams;

    move-object v5, v2

    const/4 v7, 0x0

    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 4393
    invoke-virtual {v9}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v9

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v30, v15

    move/from16 v15, v17

    move-object/from16 v17, v1

    check-cast v17, Landroid/view/View;

    new-instance v7, Lcom/miui/home/recents/NavStubView$8;

    move-object/from16 v18, v7

    invoke-direct {v7, v0, v3, v1}, Lcom/miui/home/recents/NavStubView$8;-><init>(Lcom/miui/home/recents/NavStubView;ZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    const/16 v19, 0x0

    const/16 v20, 0x1

    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    move-object/from16 v23, v1

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x2

    move v1, v10

    move/from16 v10, v16

    move v3, v13

    move-object/from16 v13, v21

    move/from16 v16, v1

    move/from16 v21, v3

    move/from16 v22, v4

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v30}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZ)V

    .line 4440
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    .line 4442
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v3, Lcom/miui/home/recents/event/AppToHomeEvent;

    new-instance v4, Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    sget-object v5, Lcom/miui/home/recents/anim/TaskViewsParams;->Companion:Lcom/miui/home/recents/anim/TaskViewsParams$Companion;

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/TaskViewsParams$Companion;->buildAppToHomeTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v5

    invoke-direct {v4, v2, v1, v5}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;-><init>(Lcom/miui/home/recents/anim/RectFParams;ZLcom/miui/home/recents/anim/TaskViewsParams;)V

    invoke-direct {v3, v4}, Lcom/miui/home/recents/event/AppToHomeEvent;-><init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method private startHalfAppToHomeAnim()V
    .locals 32

    move-object/from16 v0, p0

    .line 4469
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHalfAppToHomeAnim, isQuickSwich = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isUseSimpleAnim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4470
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4469
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 4473
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v3, 0x1

    .line 4475
    invoke-direct {v0, v3}, Lcom/miui/home/recents/NavStubView;->findClosingAnimTarget(Z)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v3

    .line 4476
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/miui/home/recents/NavStubView;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 4477
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRectF:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4478
    invoke-direct {v0, v2}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v4}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 4485
    :cond_0
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 4486
    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v6, :cond_1

    .line 4487
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v5

    .line 4488
    :cond_1
    invoke-static {v5, v4, v2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v3, :cond_2

    .line 4491
    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-interface {v3}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4492
    invoke-interface {v3}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v6

    .line 4493
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 4496
    :cond_2
    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    invoke-virtual {v6, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4497
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4498
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->beforeStartHalfAppToHomeAnim()V

    .line 4500
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    invoke-static {v2, v6}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    .line 4501
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    invoke-static {v2, v6}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v3, :cond_3

    .line 4504
    invoke-static {v3}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v2

    goto :goto_0

    :cond_3
    invoke-direct {v0, v9}, Lcom/miui/home/recents/NavStubView;->getCurrentWindowRadius(Landroid/graphics/RectF;)F

    move-result v2

    :goto_0
    move v11, v2

    .line 4505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startHalfAppToHomeAnim, homeRotationStartRectF="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", appToHomeRotationTargetRectF="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", homeRotation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currentDisplayRotation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", animTarget="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mCurTaskRadius = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 4510
    invoke-virtual {v6}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", endRadius = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4505
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    new-instance v1, Lcom/miui/home/recents/anim/RectFParams;

    move-object v6, v1

    const/4 v7, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 4514
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v10

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    sget-object v14, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 4516
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v17

    move-object/from16 v18, v3

    check-cast v18, Landroid/view/View;

    new-instance v2, Lcom/miui/home/recents/NavStubView$9;

    move-object/from16 v19, v2

    invoke-direct {v2, v0}, Lcom/miui/home/recents/NavStubView$9;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const/16 v20, 0x0

    const/16 v21, 0x1

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    move-object/from16 v24, v2

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v29, v2

    const/16 v30, 0x2

    const/16 v31, 0x1

    move/from16 v22, v5

    move/from16 v23, v4

    invoke-direct/range {v6 .. v31}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZ)V

    .line 4531
    sget-object v2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    new-instance v3, Lcom/miui/home/recents/event/AppToHomeEvent;

    new-instance v4, Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    .line 4532
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    sget-object v5, Lcom/miui/home/recents/anim/TaskViewsParams;->Companion:Lcom/miui/home/recents/anim/TaskViewsParams$Companion;

    .line 4533
    invoke-virtual {v5}, Lcom/miui/home/recents/anim/TaskViewsParams$Companion;->buildAppToHomeTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v5

    invoke-direct {v4, v1, v0, v5}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;-><init>(Lcom/miui/home/recents/anim/RectFParams;ZLcom/miui/home/recents/anim/TaskViewsParams;)V

    invoke-direct {v3, v4}, Lcom/miui/home/recents/event/AppToHomeEvent;-><init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;)V

    .line 4531
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void

    .line 4479
    :cond_4
    :goto_1
    invoke-virtual {v0, v5}, Lcom/miui/home/recents/NavStubView;->finishHalfAppToHome(Z)V

    .line 4480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startHalfAppToHomeAnim error: startRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   appToHomeTargetRect="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startNewTask(IZ)V
    .locals 12

    .line 6134
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNewTask isRecentsLoaded :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 6137
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6140
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    move v1, v2

    .line 6141
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6142
    iget v10, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getTaskLocation()I

    move-result v11

    invoke-virtual/range {v3 .. v11}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZZZZII)V

    .line 6143
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6144
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mHomeGestureTaskAppearedRunable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->addOnStopCallback(Ljava/lang/Runnable;)V

    :cond_1
    move v1, v2

    :cond_2
    if-nez v1, :cond_3

    .line 6150
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onHomeGestureTaskAppeared()V

    :cond_3
    return-void
.end method

.method private startOrStopOneHandMode(Landroid/content/Context;FF)V
    .locals 0

    .line 2438
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    if-eqz p0, :cond_0

    .line 2439
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->startOrStopOneHandMode(Landroid/content/Context;FF)V

    .line 2440
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_ONE_HAND:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    goto :goto_0

    .line 2442
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    :goto_0
    return-void
.end method

.method private startSmallViewAnim()V
    .locals 27

    move-object/from16 v0, p0

    .line 4795
    sget-object v1, Lcom/miui/home/launcher/KeyguardStateListener;->sInstance:Lcom/miui/home/launcher/KeyguardStateListener;

    invoke-virtual {v1}, Lcom/miui/home/launcher/KeyguardStateListener;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4796
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->skipSmallWindowGestureUpAnim()V

    return-void

    .line 4799
    :cond_0
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/SmallWindowCrop;->startSmallWindow(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4800
    sget-object v2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager;->isWindowElementEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 4804
    :cond_1
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "inFixedRotation"

    invoke-virtual {v3, v1, v5, v4}, Lcom/miui/home/recents/views/SmallWindowCrop;->def(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4805
    sget-object v4, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSmallWindowAnimParams: isSmallWindowRotate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {v4, v1, v3}, Lcom/miui/home/recents/views/SmallWindowCrop;->setTargetParams(Landroid/os/Bundle;Z)Landroid/graphics/RectF;

    move-result-object v4

    .line 4807
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v6

    .line 4808
    :goto_0
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {v7}, Lcom/miui/home/recents/views/SmallWindowCrop;->getCurrentApp()Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    .line 4809
    invoke-static {v5, v6, v4}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    .line 4810
    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v6}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 4811
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {v7}, Lcom/miui/home/recents/views/SmallWindowCrop;->getCurrentApp()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float v11, v6, v7

    if-eqz v3, :cond_3

    .line 4812
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v6, v1

    move v12, v6

    goto :goto_1

    .line 4813
    :cond_3
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "cornerRadius"

    invoke-virtual {v4, v1, v7, v6}, Lcom/miui/home/recents/views/SmallWindowCrop;->def(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v12, v1

    .line 4814
    :goto_1
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/SmallWindowCrop;->getTargetAppAlpha(Z)F

    move-result v14

    .line 4815
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v23

    if-eqz v3, :cond_4

    .line 4816
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_SMALL_WINDOW_ROTATE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_SMALL_WINDOW:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    :goto_2
    move-object v15, v1

    .line 4817
    new-instance v1, Lcom/miui/home/recents/anim/RectFParams;

    move-object v7, v1

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v8

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mSmallWindowAdapter:Lcom/miui/home/recents/NavStubView$AppToSmallWindowAnimatorAdapter;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-object/from16 v21, v3

    const/16 v22, 0x1

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v24, v5

    invoke-direct/range {v7 .. v26}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;Z)V

    .line 4836
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v2, Lcom/miui/home/recents/event/AppToSmallWindowAnimEvent;

    new-instance v3, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;

    invoke-direct {v3, v1}, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;-><init>(Lcom/miui/home/recents/anim/RectFParams;)V

    invoke-direct {v2, v3}, Lcom/miui/home/recents/event/AppToSmallWindowAnimEvent;-><init>(Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void

    .line 4801
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->skipSmallWindowGestureUpAnim()V

    return-void
.end method

.method private startTopWindow(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 7143
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavStubView::startTopWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/SmallWindowCrop;->isInHoldState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7144
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->getCurrentApp()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private startVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2829
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2830
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2832
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private stopVelocityTracker()V
    .locals 1

    .line 2836
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2837
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2838
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private tryRequestTransparentRegionForParent()V
    .locals 1

    .line 6951
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6955
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6959
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method private updateGestureDetectorHotArea()V
    .locals 8

    .line 1056
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureListener:Lcom/miui/home/recents/gesture/NavStubGestureListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1060
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1061
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    .line 1062
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mNavBarWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mNavBarExtraWidth:I

    sub-int/2addr v4, v5

    const/4 v6, 0x1

    aget v7, v1, v6

    .line 1064
    div-int/2addr v3, v0

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    aget v0, v1, v6

    .line 1065
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1066
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v7, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1067
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureListener:Lcom/miui/home/recents/gesture/NavStubGestureListener;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/gesture/NavStubGestureListener;->setHotAreaRect(Landroid/graphics/Rect;)V

    .line 1068
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hot Area Rect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateGesturePosition(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 1727
    iput p2, p0, Lcom/miui/home/recents/NavStubView;->mCurrentGesturePosition:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 1729
    :cond_1
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mCurrentGesturePosition:I

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mLastGesturePosition:I

    const/4 p1, 0x0

    .line 1730
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurrentGesturePosition:I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateHorizontalActiveArea()V
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceMaxSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1073
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceMaxSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p0, v1

    return-void
.end method

.method private updateMotionEventVelocity(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2843
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 2845
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    .line 2844
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2847
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 2848
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 2849
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    .line 2850
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    div-float/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/GestureHomeCalculator;->updateVelocity(FF)V

    :cond_0
    return-void
.end method

.method private updateQuickSwitchTaskHold()V
    .locals 30

    move-object/from16 v0, p0

    .line 2860
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;->calculateRotationRect(Landroid/graphics/RectF;)V

    .line 2861
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/event/GestureAppMoveEvent;

    new-instance v11, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 2864
    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v4

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2865
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v8

    new-instance v9, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object v12, v9

    iget-object v13, v0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    iget v14, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    iget v15, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    .line 2867
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v18

    .line 2868
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v19

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    .line 2869
    invoke-direct {v0, v3}, Lcom/miui/home/recents/NavStubView;->getCurrentWindowRadius(Landroid/graphics/RectF;)F

    move-result v22

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v23

    iget v3, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    move/from16 v25, v3

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 2870
    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v26

    iget v3, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    move/from16 v27, v3

    iget v3, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v28, v3

    iget v3, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v29, v3

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x1

    invoke-direct/range {v12 .. v29}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    iget-object v10, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;-><init>(FFZIILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/GestureHomeCalculator;)V

    invoke-direct {v2, v11}, Lcom/miui/home/recents/event/GestureAppMoveEvent;-><init>(Lcom/miui/home/recents/event/GestureAppMoveEventInfo;)V

    .line 2861
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 2875
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2877
    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2879
    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    .line 2880
    sget-object v2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v3, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda40;

    invoke-direct {v3, v0, v1}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda40;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateQuickSwitchTaskIndex()V
    .locals 5

    .line 6041
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6043
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 6044
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6045
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    const-string v4, "startHomeAnimation"

    invoke-direct {p0, v4}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 6046
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6047
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setQuickSwitchTaskIndex(I)V

    .line 6048
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskIdByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateRunningTaskIndexByTaskId()V
    .locals 2

    .line 3021
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3022
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setRunningTaskIndex(I)V

    :cond_0
    return-void
.end method

.method private updateRunningTaskInfoInRemoteAnimStarted()V
    .locals 3

    .line 2280
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2288
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 2289
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2292
    :cond_1
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsHalfQuickSwitching:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsLaunchingNewTask:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 2294
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mPreviousGestureRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_3

    .line 2295
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "updateRunningTaskInfoInRemoteAnimStarted: mPreviousGestureRunningTaskInfo is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2297
    :cond_3
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2298
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    .line 2299
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRunningTaskInfoInRemoteAnimStarted: mRunningTaskInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private updateScreenSize()V
    .locals 4

    .line 2496
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 2497
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 2498
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2499
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2500
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v2

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->isNeedRotate(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 2501
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 2502
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 2503
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 2505
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 2506
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 2507
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 2509
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/GestureHomeCalculator;->updateScreenData(IIZ)V

    .line 2510
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskInitRectF()Landroid/graphics/Rect;

    .line 2511
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2512
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    :cond_1
    return-void
.end method

.method private updateSmallWindowCrop(FFZ)V
    .locals 2

    .line 7038
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTopWindowInit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7041
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->shouldInitTopWindowCrop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7042
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    .line 7043
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->hasValidSurface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7044
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->isSupportSmallWindow:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSupportSmallWindowByRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->isBottomPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7045
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initTopWindowCrop()V

    .line 7046
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/NavStubView;->updateTopWindowCrop(FFZ)V

    goto :goto_0

    .line 7048
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTopWindowInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7049
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/NavStubView;->updateTopWindowCrop(FFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSupportHorizontalGesture()V
    .locals 4

    .line 1657
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportQuickSwitchGesture()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsSupportQuickSwitchGesture:Z

    .line 1658
    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    return-void
.end method

.method private updateSysUiFlagsDirectly(FI)V
    .locals 2

    .line 3353
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda35;-><init>(Lcom/miui/home/recents/NavStubView;FI)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTargetRectF(IZ)V
    .locals 5

    .line 5404
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftOrRightPositionGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    int-to-float v1, p1

    .line 5405
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    .line 5408
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v2

    .line 5409
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 5410
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPortraitDisplay()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5412
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    :goto_1
    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    :goto_2
    move v0, v4

    goto :goto_4

    .line 5413
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPortraitDisplay()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 5415
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    :goto_3
    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    neg-float p1, p1

    goto :goto_2

    .line 5416
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeDisplay()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 5418
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    goto :goto_3

    .line 5419
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeDisplay()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 5421
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    goto :goto_1

    :cond_4
    move p1, v4

    .line 5424
    :goto_4
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5426
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftOrRightPositionGesture()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5427
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_5
    if-nez p2, :cond_6

    .line 5430
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sub-float/2addr v0, p2

    .line 5431
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 5433
    :cond_6
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 5434
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentDisplayRotation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->computeFromRotationForUpdateTargetRectF(I)I

    move-result p1

    .line 5436
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method private updateTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 3521
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mPreviousGestureRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3522
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3523
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTaskInfo, mRunningTaskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTaskPosition(Landroid/graphics/RectF;FFFZ)Landroid/graphics/RectF;
    .locals 0

    .line 6233
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/NavStubView;->setAppTransformParams(Landroid/graphics/RectF;FFFZ)V

    .line 6234
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p2

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v5, p4

    .line 591
    iget-object v0, v6, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 592
    iget-object v0, v6, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v0

    int-to-float v9, v0

    .line 594
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    iget v0, v6, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    if-eq v0, v10, :cond_1

    .line 595
    iget-object v0, v6, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v2, v6, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 596
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, v6, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 600
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v9

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v11

    .line 602
    :goto_0
    iget-object v2, v6, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->right:F

    if-ge v8, v5, :cond_1

    .line 603
    iget v2, v6, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    move v1, v11

    .line 609
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 612
    iget-object v0, v6, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v0

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v0, v12, v0

    .line 613
    invoke-virtual {v7, v0}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 619
    iget-object v0, v6, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    const v13, 0x47c35000    # 100000.0f

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_a

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v15, v0, v2

    .line 622
    iget-object v0, v6, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    iget-object v2, v6, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 623
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    .line 624
    iget-object v0, v6, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v9

    mul-float/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 625
    iget-object v2, v6, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 626
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 627
    iget-object v2, v6, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-int v4, v8, v5

    .line 629
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v10, :cond_3

    if-le v8, v5, :cond_2

    add-float v0, v0, p6

    neg-float v0, v0

    sub-int v4, v4, p5

    goto :goto_2

    :cond_2
    add-float v0, v0, p6

    neg-float v0, v0

    add-int v4, v4, p5

    goto :goto_2

    :cond_3
    add-float v0, v0, p6

    neg-float v0, v0

    :goto_2
    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v14

    sub-float/2addr v2, v1

    add-float/2addr v2, v0

    cmpl-float v0, v2, v13

    if-lez v0, :cond_4

    move v12, v13

    goto :goto_3

    :cond_4
    move v12, v2

    .line 643
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->resetTaskViewThumbnail(Lcom/miui/home/recents/views/TaskView;)V

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v16, 0x0

    if-eqz v0, :cond_5

    iget v0, v6, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    if-eq v8, v0, :cond_6

    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-array v0, v1, [F

    .line 650
    iget-object v1, v6, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    aput v1, v0, v16

    aput v11, v0, v10

    goto :goto_4

    .line 651
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isDifferentRotation()Z

    move-result v0

    if-nez v0, :cond_8

    .line 652
    iget-object v2, v6, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->calcCenterYAndOffsetY(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/Rect;II)[F

    move-result-object v0

    goto :goto_4

    :cond_8
    new-array v0, v1, [F

    .line 653
    iget-object v1, v6, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    aput v1, v0, v16

    const/high16 v1, 0x43960000    # 300.0f

    iget-object v2, v6, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    aput v2, v0, v10

    .line 655
    :goto_4
    aget v1, v0, v16

    .line 656
    aget v0, v0, v10

    mul-float/2addr v9, v15

    div-float/2addr v9, v14

    sub-float/2addr v1, v9

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v14

    sub-float/2addr v1, v2

    add-float/2addr v1, v0

    cmpl-float v0, v1, v13

    if-lez v0, :cond_9

    goto :goto_5

    :cond_9
    move v13, v1

    :goto_5
    move v5, v15

    goto :goto_6

    :cond_a
    move v12, v11

    move v13, v12

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_6
    if-eqz p8, :cond_c

    const/high16 v0, 0x40800000    # 4.0f

    int-to-float v1, v8

    sub-float/2addr v1, v5

    .line 665
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v6, Lcom/miui/home/recents/NavStubView;->mResponseOffset:F

    mul-float/2addr v0, v1

    add-float v9, p10, v0

    .line 666
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v1

    if-eqz v1, :cond_b

    move v3, v11

    goto :goto_7

    :cond_b
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_7
    move-object/from16 v1, p1

    move/from16 v2, p2

    move v4, v5

    move v6, v12

    move v7, v13

    move/from16 v8, p9

    move-object/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    goto :goto_9

    .line 669
    :cond_c
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 670
    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 671
    invoke-virtual {v7, v13}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 672
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v14

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v14

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 674
    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 675
    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 676
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v11, p7

    :goto_8
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz p11, :cond_e

    .line 678
    invoke-interface/range {p11 .. p11}, Ljava/lang/Runnable;->run()V

    :cond_e
    :goto_9
    return-void
.end method

.method private updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V
    .locals 14

    .line 863
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v13, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda43;

    move-object v1, v13

    move-object v2, p0

    move/from16 v3, p10

    move-object v4, p1

    move-object/from16 v5, p9

    move/from16 v6, p4

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda43;-><init>(Lcom/miui/home/recents/NavStubView;ZLandroid/graphics/RectF;Ljava/lang/Runnable;ZIFZFFZ)V

    invoke-virtual {v0, v13}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTaskViewToInitPosition()V
    .locals 11

    .line 3590
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3592
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-float v0, v0

    .line 3593
    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 3594
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    .line 3595
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result v4

    .line 3596
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v7

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    .line 3594
    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V

    return-void
.end method

.method private updateTaskViewTouchSingleApp(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;Lcom/miui/home/recents/NavStubView$PairCounts;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v6, p2

    move/from16 v5, p4

    move-object/from16 v1, p12

    const-string v7, " scaleX: "

    const-string v8, "attr error:  width = "

    .line 685
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    .line 686
    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v3, p3

    invoke-direct {v12, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 687
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v2

    int-to-float v9, v2

    .line 690
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v10

    .line 691
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v13

    .line 693
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v10, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->is9_1Task()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-virtual {v10}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    :cond_0
    if-eqz v13, :cond_1

    .line 698
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v13, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->is9_1Task()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    invoke-virtual {v13}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    .line 704
    :cond_1
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v2

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v2, v14, v2

    .line 705
    invoke-virtual {v11, v2}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 714
    iget v2, v1, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCount:F

    .line 715
    iget v2, v1, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountLeft:F

    .line 716
    iget v3, v1, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountRight:F

    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    if-lez v4, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    if-lez v4, :cond_18

    .line 718
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v4, v15

    .line 719
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v9

    div-float v14, v4, v14

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v4, v15, v16

    move-object/from16 v17, v7

    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, p6, v7

    add-float/2addr v7, v4

    .line 721
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 722
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets()Landroid/graphics/Rect;

    move-result-object v18

    .line 724
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v19

    .line 725
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v20

    sub-int v21, v6, v5

    const/high16 v22, 0x3f000000    # 0.5f

    move-object/from16 v23, v8

    if-lez v21, :cond_4

    .line 729
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v24

    if-eqz v24, :cond_3

    iget v8, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    if-eq v6, v8, :cond_3

    :cond_2
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v2, v8

    sub-float v8, v2, v22

    :goto_1
    move/from16 v25, v3

    move v3, v2

    move v2, v8

    move/from16 v8, v25

    goto :goto_2

    :cond_3
    move v8, v3

    move v3, v2

    goto :goto_2

    :cond_4
    if-gez v21, :cond_6

    .line 736
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    if-eq v6, v8, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v3, v8

    sub-float v8, v3, v22

    goto :goto_1

    :cond_5
    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_2

    .line 743
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getStartSingleAppBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getStartSingleAppBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-nez v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getStartSingleAppBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-eqz v8, :cond_7

    goto :goto_0

    :cond_7
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v3, v8

    sub-float v22, v3, v22

    move v8, v3

    move v3, v2

    move/from16 v2, v22

    goto :goto_2

    :cond_8
    move v8, v3

    move v3, v2

    const/4 v2, 0x0

    .line 756
    :goto_2
    invoke-virtual {v1, v2, v3, v8}, Lcom/miui/home/recents/NavStubView$PairCounts;->setPairCounts(FFF)V

    if-le v6, v5, :cond_9

    add-float v1, v19, p6

    neg-float v1, v1

    sub-int v3, v21, p5

    int-to-float v3, v3

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    const/16 v22, 0x0

    :goto_3
    add-float v24, v1, v22

    move/from16 v22, v24

    goto :goto_4

    :cond_9
    const/16 v22, 0x0

    if-ge v6, v5, :cond_a

    add-float v1, v19, p6

    neg-float v1, v1

    add-int v3, v21, p5

    int-to-float v3, v3

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    goto :goto_3

    :cond_a
    cmpl-float v1, v8, v22

    if-eqz v1, :cond_b

    add-float v1, v19, p6

    neg-float v1, v1

    neg-float v2, v2

    mul-float/2addr v1, v2

    goto :goto_3

    :cond_b
    cmpl-float v1, v3, v22

    if-eqz v1, :cond_c

    add-float v1, v19, p6

    neg-float v1, v1

    mul-float/2addr v1, v2

    add-float v1, v1, v22

    move/from16 v22, v1

    goto :goto_4

    :cond_c
    const/16 v22, 0x0

    .line 767
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v1, v16

    sub-float v20, v20, v1

    add-float v20, v20, v22

    const v8, 0x47c35000    # 100000.0f

    cmpl-float v1, v20, v8

    if-lez v1, :cond_d

    move v3, v8

    goto :goto_5

    :cond_d
    move/from16 v3, v20

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move v4, v3

    move-object/from16 v3, v18

    move/from16 p0, v4

    move/from16 v4, p2

    move/from16 v5, p4

    .line 772
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->calcCenterYAndOffsetY(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/Rect;II)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 773
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 774
    aget v0, v0, v2

    mul-float/2addr v9, v14

    div-float v9, v9, v16

    sub-float/2addr v1, v9

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v2, v16

    sub-float/2addr v1, v2

    add-float/2addr v1, v0

    cmpl-float v0, v1, v8

    if-lez v0, :cond_e

    goto :goto_6

    :cond_e
    move v8, v1

    .line 785
    :goto_6
    invoke-virtual {v10, v14, v12}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(FLandroid/graphics/RectF;)V

    if-eqz v13, :cond_f

    .line 787
    invoke-virtual {v13, v14, v12}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(FLandroid/graphics/RectF;)V

    :cond_f
    if-eqz p8, :cond_13

    const/high16 v0, 0x40800000    # 4.0f

    int-to-float v1, v6

    sub-float/2addr v1, v15

    .line 790
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    add-float v13, p10, v0

    .line 791
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 792
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v3, 0x0

    goto :goto_7

    :cond_10
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_7
    move-object/from16 v1, p1

    move/from16 v2, p2

    move v4, v7

    move v5, v14

    move/from16 v6, p0

    move v15, v7

    move v7, v8

    move/from16 v8, p9

    move v9, v13

    move-object/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    .line 794
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move v2, v15

    move v3, v14

    move/from16 v4, p9

    move v5, v13

    move-object/from16 v6, p11

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewThumbnailSpringAnim(Lcom/miui/home/recents/views/TaskView;FFFFLjava/lang/Runnable;Landroid/graphics/RectF;)V

    goto/16 :goto_d

    .line 796
    :cond_11
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v3, 0x0

    goto :goto_8

    :cond_12
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_8
    move-object/from16 v1, p1

    move/from16 v2, p2

    move v4, v15

    move v5, v14

    move/from16 v6, p0

    move v7, v8

    move/from16 v8, p9

    move v9, v13

    move-object/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    goto/16 :goto_d

    :cond_13
    move v4, v7

    .line 801
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 802
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_15

    move/from16 v0, p0

    .line 803
    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 804
    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 805
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 807
    invoke-virtual {v11, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 808
    invoke-virtual {v11, v14}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_9

    :cond_14
    move/from16 v0, p7

    :goto_9
    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v1, 0x0

    .line 811
    invoke-virtual {v10, v1}, Landroid/view/View;->setPivotX(F)V

    .line 812
    invoke-virtual {v10}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v0

    div-float v0, v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->setPivotY(F)V

    .line 815
    :try_start_0
    invoke-virtual {v10}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v0

    mul-float/2addr v0, v4

    div-float v0, v19, v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleX(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, v17

    move-object/from16 v2, v23

    goto :goto_a

    :catch_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 817
    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleX(F)V

    .line 818
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setPivotX(F)V

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setPivotY(F)V

    .line 825
    :try_start_1
    invoke-virtual {v13}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v0

    mul-float/2addr v0, v4

    div-float v0, v19, v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setScaleX(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 827
    invoke-virtual {v13, v0}, Landroid/view/View;->setScaleX(F)V

    .line 828
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_15
    move/from16 v0, p0

    const/4 v1, 0x0

    .line 831
    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 832
    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 833
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 835
    invoke-virtual {v11, v15}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 836
    invoke-virtual {v11, v14}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 837
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_b

    :cond_16
    move/from16 v1, p7

    :goto_b
    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_c
    if-eqz p11, :cond_17

    .line 840
    invoke-interface/range {p11 .. p11}, Ljava/lang/Runnable;->run()V

    :cond_17
    :goto_d
    return-void

    .line 781
    :cond_18
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTaskViewTouchSingleApp: taskView width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTopWindowCrop(FFZ)V
    .locals 6

    .line 7099
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-nez v0, :cond_0

    return-void

    .line 7102
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getVelocity()Landroid/graphics/PointF;

    move-result-object v0

    .line 7103
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateState(FFFZ)I

    move-result p1

    .line 7104
    sget-object p2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateTopWindowCrop state= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 7106
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 p1, 0x103

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 7108
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 p1, 0x10e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTouchable()V
    .locals 3

    .line 1497
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->shouldUseEmptyTouchableRegion()Z

    move-result v0

    .line 1498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTouchable    old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavStubView_Touch"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    if-eq v1, v0, :cond_0

    .line 1501
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    .line 1502
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "  updateTouchable---requestApplyInsets"

    .line 1503
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private updateViewLayout(I)V
    .locals 1

    .line 6943
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6944
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6947
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->tryRequestTransparentRegionForParent()V

    return-void
.end method

.method private useHomeSysUiFlags(F)Z
    .locals 0

    const p0, 0x3e199998    # 0.14999998f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private useHorizontalStyleToInitTaskView()Z
    .locals 4

    .line 3928
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getVelocity()Landroid/graphics/PointF;

    move-result-object v0

    .line 3929
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 3930
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->useHorizontalStyleToInitTaskView()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3931
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    .line 3932
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTaskStackLayoutStyleVertical()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public actionMoveAppDrag(Z)V
    .locals 0

    .line 3906
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->sendAppMoveEvent(Z)V

    return-void
.end method

.method public actionMoveHalfAppTaskHold()V
    .locals 2

    .line 3941
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveHalfAppTaskHold"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3942
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3943
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->actionMoveAppDrag(Z)V

    :cond_0
    return-void
.end method

.method public actionMoveHomeDrag()V
    .locals 3

    .line 6458
    new-instance v0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;-><init>(IFLcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    .line 6459
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v1, Lcom/miui/home/recents/event/GestureHomeMoveEvent;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/event/GestureHomeMoveEvent;-><init>(Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6461
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "actionMoveHomeDrag"

    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public actionMoveHomeTaskHold()V
    .locals 24

    move-object/from16 v0, p0

    .line 6465
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "actionMoveHomeTaskHold"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6466
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->getVisibleScreenWidth()F

    move-result v1

    .line 6467
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getVisibleScreenHeight()F

    move-result v2

    .line 6468
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->calculateTaskWidthHome()F

    .line 6469
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/GestureHomeCalculator;->calculateTaskXHome(Landroid/graphics/Rect;)F

    .line 6470
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getTaskViewWidth()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    mul-float v4, v3, v2

    div-float/2addr v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 6476
    :goto_0
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v6}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskY()F

    move-result v6

    div-float/2addr v4, v5

    add-float/2addr v6, v4

    invoke-direct {v0, v1, v2, v6}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v1

    .line 6477
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 6478
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 6480
    :cond_1
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getTaskViewX()F

    move-result v5

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 6481
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    move-object v7, v2

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v2, Landroid/graphics/RectF;->right:F

    sub-float v3, v1, v4

    .line 6482
    iput v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    .line 6483
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 6484
    new-instance v1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object v6, v1

    const/4 v8, -0x1

    iget v9, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v10, 0x0

    const/4 v11, 0x1

    const v12, 0x3f666666    # 0.9f

    const v13, 0x3e4ccccd    # 0.2f

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 6486
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v16

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v17

    .line 6487
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v18

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    move/from16 v19, v2

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v20

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    move/from16 v21, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v22, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v23, v2

    invoke-direct/range {v6 .. v23}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    .line 6488
    new-instance v2, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

    const/4 v3, 0x2

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v0

    invoke-direct {v2, v3, v0, v1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;-><init>(IFLcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    .line 6489
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureHomeMoveEvent;

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/GestureHomeMoveEvent;-><init>(Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public actionMoveQuickSwitchTaskHold()V
    .locals 1

    .line 2855
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 2856
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateQuickSwitchTaskHold()V

    return-void
.end method

.method public actionMoveRecentsDrag()V
    .locals 3

    .line 6676
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveRecentsDrag"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6677
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 6678
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureRecentMoveEvent;

    new-instance v2, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result p0

    invoke-direct {v2, p0}, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;-><init>(F)V

    const/4 p0, 0x1

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/event/GestureRecentMoveEvent;-><init>(ILcom/miui/home/recents/event/GestureRecentMoveEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public appTouchResolution(Landroid/view/MotionEvent;I)V
    .locals 2

    .line 3140
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isLeftOrRightPositionGesture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3141
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->handleLandscapeBreakableTouch(Landroid/view/MotionEvent;I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3146
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isBlockedAfterExitSmallWindowMode(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 3150
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 3151
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->commonAppTouchFromDown(Z)V

    .line 3152
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_2

    .line 3153
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->setTopWindowCrop()V

    .line 3155
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTopWindowCrop()V

    .line 3156
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3163
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initFirstSplitTaskInAppMode()V

    goto/16 :goto_1

    .line 3164
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 3165
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->commonAppTouchFromMove(Landroid/view/MotionEvent;)V

    .line 3166
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mMotionEventPosition:Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->update(Landroid/view/MotionEvent;)Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    .line 3167
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-eqz p1, :cond_8

    .line 3168
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mMotionEventPosition:Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    iget p2, p1, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->rawX:F

    iget p1, p1, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->rawY:F

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/home/recents/NavStubView;->updateSmallWindowCrop(FFZ)V

    goto :goto_1

    .line 3170
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    .line 3171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    .line 3172
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonAppTouchFromUpOrCancel()V

    .line 3173
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isStartTopWindow()Z

    move-result p1

    const/4 p2, 0x4

    if-eqz p1, :cond_6

    .line 3174
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 3175
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V

    .line 3176
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStateMachine;->removeCallbacksAndMessage()V

    .line 3177
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startTopWindow(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 3178
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->startSmallViewAnim()V

    .line 3179
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->finishSmallTop()V

    goto :goto_0

    .line 3180
    :cond_6
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-eqz p1, :cond_7

    .line 3181
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 3183
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V

    .line 3184
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    const-string p1, "appHandleGesture"

    .line 3185
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 3186
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 3187
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getActionUpSpeedAndDirection()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->sendBroadcastToAppForHandleGesture(ILjava/lang/String;)V

    goto :goto_0

    .line 3189
    :cond_7
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    .line 3191
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->exitTopWindowCrop()V

    :cond_8
    :goto_1
    return-void
.end method

.method public backGestureDown()Z
    .locals 3

    .line 2124
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mPreviousGestureRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2125
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->notHasHome()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskForGesture(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2126
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateRunningTaskInfoInRemoteAnimStarted()V

    .line 2127
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->runningTaskInfoInValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2
.end method

.method public backGestureUp()V
    .locals 2

    const/4 v0, 0x0

    .line 2134
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->initAppModeValues(Z)V

    .line 2135
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->breakOpenAnimIfNeeded()V

    .line 2136
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initRunningTaskRelativeInfo()V

    const/4 v1, 0x2

    .line 2137
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 2138
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    .line 2139
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsHalfQuickSwitching(Z)V

    .line 2140
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonAppTouchFromUpOrCancel()V

    .line 2141
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/BackGestureUpEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/BackGestureUpEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 2142
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda10;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected beforeStartHalfAppToHomeAnim()V
    .locals 0

    .line 5954
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 5955
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidLaunchSplit()V

    return-void
.end method

.method public canPerformQuickSwitch()Z
    .locals 1

    .line 6883
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-nez v0, :cond_0

    .line 6884
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p0

    return p0

    .line 6886
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeAreaWithoutGestureLine()Z

    move-result p0

    return p0
.end method

.method public cancelAppToHomeAnim()V
    .locals 1

    .line 4577
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4578
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_0
    return-void
.end method

.method public clearWhenLauncherDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 7182
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 7183
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskView:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method

.method public disableInputProxy()V
    .locals 1

    const/4 v0, 0x1

    .line 1268
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    .line 1269
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->disableInputConsumer()V

    return-void
.end method

.method public enableInputProxy()V
    .locals 3

    .line 1245
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableInputProxy setTouchListener mIsAppHandleGesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-nez v0, :cond_0

    return-void

    .line 1249
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isElementAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->disableWindowInput()V

    return-void

    .line 1253
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1254
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    .line 1255
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->enableInputConsumer()V

    .line 1256
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->setTouchListener(Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;)V

    .line 1258
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1259
    new-instance v0, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda48;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mEventReceiver:Ljava/util/function/Predicate;

    :cond_2
    return-void
.end method

.method public endAppToRecentsAnimIfNeeded()V
    .locals 1

    .line 4671
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAppToRecentsAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4672
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->end()V

    :cond_0
    return-void
.end method

.method public enterAppHoldState()V
    .locals 4

    .line 3910
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v0

    .line 3911
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterAppHoldState, needStopBecauseRecentsRemoteAnimStartFailed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsShowRecents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mLauncher = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 3915
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3918
    :cond_0
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureEnterAppHoldEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/GestureEnterAppHoldEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 3919
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3920
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateRunningTaskIndexByTaskId()V

    :cond_1
    const/4 v0, 0x1

    .line 3922
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 3923
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/home/launcher/LauncherState;->disableRestore:Z

    .line 3924
    sget-object v0, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda46;->INSTANCE:Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda46;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public enterHomeHoldState()V
    .locals 2

    .line 6400
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda32;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enterRecentsHoldState()V
    .locals 1

    const/4 v0, 0x0

    .line 6687
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->enterRecentsHoldState(Z)V

    return-void
.end method

.method public enterRecentsHoldState(Z)V
    .locals 4

    .line 6691
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureRecentMoveEvent;

    new-instance v2, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v3

    invoke-direct {v2, v3}, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;-><init>(F)V

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/event/GestureRecentMoveEvent;-><init>(ILcom/miui/home/recents/event/GestureRecentMoveEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6692
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHoldStateEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6694
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    if-eqz p1, :cond_0

    .line 6704
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->setSplitRatio(F)V

    :cond_0
    return-void
.end method

.method public exitHomeHoldState()V
    .locals 21

    move-object/from16 v0, p0

    .line 6437
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "exitHomeHoldState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6439
    new-instance v1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object v3, v1

    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    .line 6441
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v10

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 6442
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v13

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 6443
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v15

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    move/from16 v16, v2

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v17

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    move/from16 v18, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v19, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v20, v2

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v20}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    .line 6444
    new-instance v2, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v3

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3, v1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;-><init>(IFLcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    .line 6445
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v3, Lcom/miui/home/recents/event/GestureHomeMoveEvent;

    invoke-direct {v3, v2}, Lcom/miui/home/recents/event/GestureHomeMoveEvent;-><init>(Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;)V

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6447
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v2, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda22;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitRecentsHoldState()V
    .locals 1

    const/4 v0, 0x0

    .line 6709
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->exitRecentsHoldState(Z)V

    return-void
.end method

.method public exitRecentsHoldState(Z)V
    .locals 4

    .line 6713
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "exitRecentsHoldState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6714
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureRecentMoveEvent;

    new-instance v2, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v3

    invoke-direct {v2, v3}, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;-><init>(F)V

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/event/GestureRecentMoveEvent;-><init>(ILcom/miui/home/recents/event/GestureRecentMoveEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6715
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mExitStateEvent:Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6717
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    if-eqz p1, :cond_0

    .line 6720
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mSplitRatioBeforeHold:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->setSplitRatio(F)V

    :cond_0
    return-void
.end method

.method public finish(ZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 6166
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;Z)V
    .locals 3

    .line 6170
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: toRecents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   sendUserLeaveHint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 6173
    sget-object v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->notifySwipeToHomeFinished()V

    .line 6175
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p0, :cond_1

    .line 6176
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZLjava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public finishAppToHome(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 4609
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(ZZ)V

    return-void
.end method

.method public finishAppToHome(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4613
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(ZZZ)V

    return-void
.end method

.method public finishAppToHome(ZZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 4623
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->setPipAnimationTypeToAlpha()V

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 4625
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/NavStubView;->finishDirectly(ZZ)V

    .line 4626
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    goto :goto_0

    .line 4628
    :cond_0
    new-instance p3, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p0, v1, p3, p1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;Z)V

    goto :goto_0

    .line 4631
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    .line 4633
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setRecentAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/views/FloatingIconView;)V

    .line 4634
    invoke-direct {p0, p2}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd(Z)V

    .line 4635
    invoke-direct {p0, p2}, Lcom/miui/home/recents/NavStubView;->commonFinishAppToHome(Z)V

    return-void
.end method

.method public finishAppToHomeNew()V
    .locals 2

    .line 4454
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 4455
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 4456
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 4457
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public finishDirectly(Z)V
    .locals 3

    .line 6199
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: toRecents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6201
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 6202
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerDirectly(ZZ)V

    :cond_0
    return-void
.end method

.method public finishDirectly(ZZ)V
    .locals 3

    .line 6207
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishDirectly: toRecents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p0, :cond_0

    .line 6210
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerDirectly(ZZ)V

    :cond_0
    return-void
.end method

.method public finishHalfAppToHome(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4640
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishSosc()V

    .line 4642
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onHalfAppModeGestureEnd()V

    .line 4643
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->commonFinishAppToHome()V

    return-void
.end method

.method public finishRecentsActivityDirectly()V
    .locals 4

    .line 6155
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 6156
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 6157
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    .line 6159
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    const-string v3, "finishRecentsActivityDirectly"

    invoke-direct {v1, v3, v2, v2}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const-string v0, "finishRecentsActivity"

    .line 6160
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 6161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "finishRecentDirectly"

    const-string v1, "gesture"

    invoke-static {p0, v0, v1}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishRecentsAnimation(Ljava/lang/String;)V
    .locals 1

    .line 3527
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda9;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishSosc()V
    .locals 0

    .line 6195
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->notifySwipeToHomeFinished()V

    return-void
.end method

.method public finishSoscDirectly(Z)V
    .locals 3

    .line 6215
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishSoscDirectly : toRecents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6217
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 6218
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishSoscController(IZZ)V

    :cond_0
    return-void
.end method

.method public finishSoscRecentsActivityDirectly()V
    .locals 4

    .line 6187
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 6188
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 6189
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->resetSoscLauncherProperty(Z)V

    .line 6190
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    const-string v3, "finishSoscRecentsActivityDirectly"

    invoke-direct {v1, v3, v2, v2}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const-string v0, "finishSoscRecentsActivity"

    .line 6191
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    if-eqz p1, :cond_0

    .line 6925
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6926
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 6927
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 6929
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

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

    .line 6932
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 6933
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    const/4 v2, 0x0

    aget v4, p0, v2

    const/4 v3, 0x1

    .line 6934
    aget v5, p0, v3

    add-int v6, v4, v0

    add-int v7, v5, v1

    .line 6935
    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v2

    .line 6939
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p0

    return p0
.end method

.method public getAppToHomeAnim2()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 7211
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method public getCalculator()Lcom/miui/home/recents/GestureHomeCalculator;
    .locals 0

    .line 3801
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    return-object p0
.end method

.method public getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;
    .locals 0

    .line 6259
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    return-object p0
.end method

.method public getCurrentPositionTaskIndex()I
    .locals 1

    .line 5361
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrentPositionTaskIndexLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5362
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result p0

    return p0

    .line 5363
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrentPositionTaskIndexRight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5364
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result p0

    return p0

    .line 5366
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p0

    return p0
.end method

.method public getDimAlpha()F
    .locals 0

    .line 7227
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mDimAlpha:F

    return p0
.end method

.method public getGestureStateMachine()Lcom/miui/home/recents/GestureStateMachine;
    .locals 0

    .line 6263
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    return-object p0
.end method

.method public getHotSpaceHeight()I
    .locals 5

    .line 6999
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE_WITH_SHELL:Z

    const/high16 v1, 0x41c80000    # 25.0f

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7001
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_1

    const/high16 v1, 0x41a40000    # 20.5f

    .line 7006
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v1, p0

    float-to-int v0, v0

    .line 7008
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHotSpaceHeight   heightDP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "   density="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "   heightPX="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getLeftTaskIndex()I
    .locals 4

    .line 5202
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5203
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    .line 5205
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    .line 5206
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 5207
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-eqz v2, :cond_3

    .line 5208
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 5212
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setTaskIfNeedHide(Ljava/util/ArrayList;)I

    add-int/lit8 p0, v0, 0x1

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-gt p0, v3, :cond_2

    .line 5214
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 5216
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 5221
    :cond_2
    :goto_1
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionTest getLeftTaskIndex  isRecentsLoaded() index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5209
    :cond_3
    :goto_2
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "TransitionTest getLeftTaskIndex : list is null or empty"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    .line 5210
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 5224
    :cond_4
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "TransitionTest getLeftTaskIndex  return 0"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getQuickSwitchOrRunningTaskIndex()I
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    :goto_0
    return p0
.end method

.method public getQuickSwitchTaskIndex(I)I
    .locals 4

    .line 5256
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 5257
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 5258
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v2

    if-nez p1, :cond_0

    .line 5261
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getDirectionByOffset()I

    move-result p1

    :cond_0
    if-eq v0, v2, :cond_5

    .line 5265
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    .line 5266
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5268
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "getQuickSwitchTaskIndex : stack is null , index is currentTaskIndex"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5271
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5272
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 5277
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_5

    .line 5278
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchInsidePair()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5279
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getTaskLocation()I

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchInsidePairDirectionRight(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5280
    iget-object p1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Bounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setParamsWhenQuickSwitchInsidePair(Landroid/graphics/Rect;)V

    return v2

    .line 5283
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getTaskLocation()I

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchInsidePairDirectionLeft(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5284
    iget-object p1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Bounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setParamsWhenQuickSwitchInsidePair(Landroid/graphics/Rect;)V

    return v2

    .line 5273
    :cond_4
    :goto_0
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "getQuickSwitchTaskIndex : list is null or empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    .line 5274
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 5289
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchTaskIndexByDirection(I)I

    move-result p0

    return p0

    :cond_6
    return v1
.end method

.method public getRightTaskIndex()I
    .locals 4

    .line 5230
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5231
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    .line 5233
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5234
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 5238
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setTaskIfNeedHide(Ljava/util/ArrayList;)I

    add-int/lit8 p0, v0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 5240
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 5242
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 5247
    :cond_2
    :goto_1
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionTest getRightTaskIndex isRecentsLoaded() index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5235
    :cond_3
    :goto_2
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "TransitionTest getRightTaskIndex : list is null or empty"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    .line 5236
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 5250
    :cond_4
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "TransitionTest getRightTaskIndex isRecentsLoaded() return 0"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getScreenHeight()I
    .locals 0

    .line 7239
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    .line 7235
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    return p0
.end method

.method public getSourceStackBounds()Landroid/graphics/Rect;
    .locals 3

    .line 3832
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3834
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3835
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 3840
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 3841
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3842
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 3844
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSplitRatioBeforeHold()F
    .locals 0

    .line 7247
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mSplitRatioBeforeHold:F

    return p0
.end method

.method public getStartSingleAppBounds()Landroid/graphics/Rect;
    .locals 0

    .line 2605
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->startSingleAppBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTargetSingleAppBounds()Landroid/graphics/Rect;
    .locals 0

    .line 2597
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->targetSingleAppBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getWindowParam(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 6971
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7e8

    const/16 v4, 0x128

    const/4 v5, -0x3

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 p1, 0x0

    .line 6981
    invoke-static {v6, p1}, Lcom/miui/home/recents/util/Utilities;->setFitInsetsTypes(Landroid/view/WindowManager$LayoutParams;I)V

    .line 6982
    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p1, 0x50

    .line 6983
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p1, 0x1

    .line 6984
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 p1, 0x10000000

    .line 6985
    invoke-static {v6, p1}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->addExtraFlag(Landroid/view/WindowManager$LayoutParams;I)V

    .line 6990
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz p0, :cond_0

    const-string p0, "GestureStub"

    goto :goto_0

    :cond_0
    const-string p0, "GestureStubHome"

    :goto_0
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method protected initFirstSplitTaskInHalfHomeMode()V
    .locals 4

    .line 6380
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6382
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->getRightOrBottoRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 6383
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFirstSplitTaskInHalfHomeMode: getRightOrBottoRunningTaskInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6386
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->getLeftOrTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 6387
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFirstSplitTaskInHalfHomeMode: getLeftOrTopRunningTaskInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_2

    .line 6393
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isSoscFirstSplitScreenTask(Landroid/app/TaskInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6394
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->setSoscFirstSplitRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    const/4 v0, -0x1

    .line 6395
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->preloadTasks(I)V

    :cond_2
    return-void
.end method

.method public isDifferentRotation()Z
    .locals 2

    .line 3805
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3806
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isHomeDisabled()Z
    .locals 0

    .line 7167
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInAppModeGesture()Z
    .locals 1

    .line 412
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsidePairQuickSwitch()Z
    .locals 0

    .line 2590
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->isInsidePairQuickSwitch:Z

    return p0
.end method

.method public isOverDistanceThread()Z
    .locals 0

    .line 6891
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isOverDistanceThread()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverviewDisabled()Z
    .locals 0

    .line 7174
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickSwitchMode()Z
    .locals 1

    .line 544
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

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

.method public isSafeArea()Z
    .locals 0

    .line 6875
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isSafeArea()Z

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

.method public isSafeAreaWithoutGestureLine()Z
    .locals 0

    .line 6879
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isSafeAreaWithoutGestureLine()Z

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

.method public isShowRecents()Z
    .locals 0

    .line 3686
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    return p0
.end method

.method public isToAppHoldState(Z)Z
    .locals 6

    .line 455
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 456
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isToAppHoldState: mDisableRecents = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsRecentDisabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getVelocity()Landroid/graphics/PointF;

    move-result-object v0

    .line 460
    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 461
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 462
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getFollowTailDistance()F

    move-result v2

    const/high16 v4, 0x41c80000    # 25.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 463
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    .line 464
    :goto_0
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v4}, Lcom/miui/home/recents/GestureHomeCalculator;->isSlideHorizontal()Z

    move-result v4

    .line 465
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5, v0}, Lcom/miui/home/recents/GestureHomeCalculator;->setLastVelocity(F)V

    if-nez v2, :cond_2

    if-eqz v4, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isAllowToAppHoldState(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    .line 468
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    :cond_3
    if-nez v2, :cond_4

    if-eqz v4, :cond_5

    .line 471
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isAllowToAppHoldState(Z)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method public isToHomeDragState()Z
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrY()F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v1, v1, -0xc8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 446
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceX()F

    move-result p0

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isToHomeHoldState()Z
    .locals 4

    .line 435
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isToHomeHoldState: mDisableRecents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsRecentDisabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPauseWhileSwipeUp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 440
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getFollowTailXDelta()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getFollowTailYDelta()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceX()F

    move-result p0

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isToRecentsDrag()Z
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrY()F

    move-result v0

    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 p0, p0, -0xc8

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isToRecentsHoldState()Z
    .locals 0

    .line 484
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPauseWhileSwipeUp()Z

    move-result p0

    return p0
.end method

.method public modifyTransformVisible(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 4267
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4270
    :cond_0
    sget-object v0, Lcom/miui/home/recents/NavStubView$19;->$SwitchMap$com$miui$home$recents$NavStubView$ModeGesture:[I

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4275
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/miui/home/recents/NavStubView;->modifyTransformVisible(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 4272
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/miui/home/recents/NavStubView;->modifyTransformVisible(Ljava/util/ArrayList;I)V

    :goto_0
    return-void
.end method

.method public needBreakOpenAnim()Z
    .locals 0

    .line 3563
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3564
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->isAnimChainOn()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3565
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAppMoveWithoutRecentLeash()V
    .locals 1

    const/4 v0, 0x0

    .line 3322
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->sendAppMoveEvent(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1150
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1151
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/GestureSoscController;->addGestureSoscListener(Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;)V

    .line 1152
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->tryRequestTransparentRegionForParent()V

    .line 1154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.fullscreen.statechange"

    .line 1155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1157
    invoke-static {}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->getInstance()Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->registerAssistObserver(Landroid/content/Context;)V

    .line 1158
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isOneHandedModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    invoke-virtual {v0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->registerOneHandModeObserver()V

    .line 1160
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "support one handed mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    if-nez v0, :cond_1

    .line 1164
    new-instance v0, Lcom/miui/home/recents/NavStubView$3;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$3;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    :cond_1
    const-string v0, "NavStubView_Touch"

    const-string v1, "onAttachedToWindow---requestApplyInsets"

    .line 1205
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    .line 1207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1208
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->addCallback(Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    .line 1100
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1101
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    .line 1107
    :goto_3
    sget-object v7, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConfigurationChanged: orientationChange = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " screenSizeChange = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " smallestScreenSizeChange = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " densitySizeChange = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Lcom/miui/home/recents/NavStubView;->mNavBarWidth:I

    .line 1112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070244

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/miui/home/recents/NavStubView;->mNavBarExtraWidth:I

    if-eqz v4, :cond_4

    .line 1114
    sget-object v7, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    iget-object v8, p0, Lcom/miui/home/recents/NavStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/DeviceConfig;

    iget-object v8, p0, Lcom/miui/home/recents/NavStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/DeviceConfig;->updateProfileOnSpecialFDevice(Landroid/content/Context;)V

    .line 1115
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateHorizontalActiveArea()V

    :cond_4
    if-nez v6, :cond_5

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    if-eqz v1, :cond_6

    .line 1118
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/miui/home/recents/NavStubView;->updateViewLayout(I)V

    .line 1120
    :cond_6
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v6, :cond_8

    .line 1122
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v3

    goto :goto_4

    :cond_7
    const/16 v7, 0x8

    .line 1121
    :goto_4
    invoke-virtual {v6, v7}, Lcom/miui/home/recents/AntiMistakeTouchView;->updateVisibilityState(I)V

    :cond_8
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v3

    .line 1126
    :goto_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isInDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 1128
    iget-boolean v6, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    if-eq v6, p1, :cond_a

    .line 1129
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    goto :goto_6

    :cond_a
    move v2, v3

    .line 1132
    :goto_6
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-eqz p0, :cond_c

    if-nez v0, :cond_b

    if-nez v2, :cond_b

    if-nez v1, :cond_b

    if-nez v5, :cond_b

    if-eqz v4, :cond_c

    .line 1133
    :cond_b
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateConfiguration()V

    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1229
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1230
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/GestureSoscController;->removeGestureSoscListener(Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;)V

    const-string v0, "NavStubView_Touch"

    const-string v1, "onDetachedFromWindow"

    .line 1232
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-static {}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->getInstance()Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->unRegisterAssistObserver(Landroid/content/Context;)V

    .line 1234
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isOneHandedModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    invoke-virtual {v0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->unregisterOneHandModeObserver()V

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    if-eqz v0, :cond_1

    .line 1239
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    .line 1241
    :cond_1
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->removeCallback(Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;)V

    return-void
.end method

.method public onDisplayRotationChanged()V
    .locals 2

    .line 1510
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda24;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEnterOrExitSmallWindow(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 396
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    const-string p1, "BLOCKER_ID_FOR_APP_DRAG_AFTER_EXIT_SMALL_WINDOW_MODE"

    invoke-static {p0, v0, v1, p1}, Lcom/miui/home/recents/util/TimeOutBlocker;->startCountDown(Landroid/os/Handler;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNavStubViewWindowRemoved()V
    .locals 0

    .line 3196
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->exitTopWindowCrop()V

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1966
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPointEvent: rawX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   rawY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   mIsInFsMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1966
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v2, v0, :cond_0

    const/4 v0, 0x3

    .line 1974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 1975
    :cond_0
    invoke-direct {p0, v3}, Lcom/miui/home/recents/NavStubView;->setIsInFsMode(Z)V

    :cond_1
    return v3

    .line 1980
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 1981
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1982
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v1, :cond_3

    .line 1983
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/AntiMistakeTouchView;->shouldShowAntiMistakeView(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1984
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    invoke-virtual {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->showMistakeTouchView()V

    .line 1985
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    :cond_3
    return v3

    .line 1993
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    .line 1994
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    .line 1996
    :cond_5
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    if-ne v1, v4, :cond_6

    return v3

    .line 2000
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_f

    .line 2001
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValueAndCheckRunningTaskValidity(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 2004
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "taskSnapshot"

    const-string v5, "gesture"

    invoke-static {v1, v4, v5}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2006
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v4, :cond_8

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_0

    :cond_8
    move v4, v3

    :goto_0
    if-eqz v1, :cond_c

    .line 2008
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v5, :cond_9

    .line 2009
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2011
    :cond_9
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v5, :cond_c

    .line 2013
    invoke-virtual {v5}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2014
    invoke-virtual {v4}, Lcom/miui/home/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2015
    invoke-direct {p0, v4}, Lcom/miui/home/recents/NavStubView;->isOtherHomeActivityOnTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2016
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isNormalMode()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2017
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->checkAndLauncherHome()V

    .line 2019
    :cond_a
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2020
    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/RecentsContainer;->isExitRecentsAnimating()Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v2

    goto :goto_1

    :cond_b
    move v4, v3

    .line 2024
    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->clearSoscState()V

    .line 2025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/miui/home/recents/NavStubView;->initTouchRange(F)V

    .line 2026
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/home/recents/NavStubView;->mSwipeUpStartTimeMs:J

    .line 2027
    sget-object v5, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/StateManager;->isWaitFinishMainAnim()Z

    move-result v6

    .line 2029
    invoke-virtual {v5}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/recents/anim/StateManager;->isReusefulOpeningAnimRunning()Z

    move-result v7

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToApp:Z

    if-nez v7, :cond_d

    if-nez v1, :cond_e

    iget-boolean v7, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    if-nez v7, :cond_e

    iget-boolean v7, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    if-nez v7, :cond_e

    if-eqz v6, :cond_d

    goto :goto_2

    :cond_d
    move v2, v3

    .line 2035
    :cond_e
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isModeLauncher="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isRecentsVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isAnimRunning="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    invoke-virtual {v5}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/home/recents/anim/StateManager;->isReusefulOpeningAnimRunning()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mIsAnimatingToApp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToApp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isHomeStackVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAnimatingToLauncher="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAnimatingToRecents="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWaitFinishMainAnim="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWaitViewDrawCommitWhenAppToRecentAnimEnd="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    invoke-virtual {v5}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->isWaitViewDrawCommitWhenAppToRecentAnimEnd()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2035
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsKeyguardLocked:Z

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/miui/home/recents/NavStubView;->getCurrentWindowMode(Landroid/view/MotionEvent;ZZZ)I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 2051
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->sendMsgDownToStateMachine(I)V

    .line 2053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current window mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (1:home, 2:app, 3:recent-task, 4:keyguard, 5:quick-switch, 6:assistant, 7:one-hand)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_f
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->handleVelocityTracking(Landroid/view/MotionEvent;)V

    .line 2058
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    packed-switch v0, :pswitch_data_0

    .line 2103
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/miui/home/recents/NavStubView;->setIsInFsMode(Z)V

    goto :goto_3

    .line 2084
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->halfQuickSwitchTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2075
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->halfRecentsTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2063
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->halfAppTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2069
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->halfHomeTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2099
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->screenPinTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2096
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->assistantEditTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2093
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->accessibilityTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2090
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->oneHandTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2087
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->assistantTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2081
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->quickSwitchTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2078
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->keyguardTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2072
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->recentsTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2060
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->appTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 2066
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->homeTouchResolution(Landroid/view/MotionEvent;)V

    .line 2107
    :goto_3
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    if-eqz v0, :cond_10

    .line 2109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_10

    .line 2110
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string p1, "fs_gesture"

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow(Ljava/lang/String;)V

    :cond_10
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRecentsAnimationCanceled(Z)V
    .locals 0

    .line 2748
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string p1, "onRecentsAnimationCanceled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 3

    .line 2614
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    .line 2616
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "startControlAppWindow"

    const-string v2, "gesture"

    .line 2615
    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setRequestingAnimation(Z)V

    .line 2621
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-static {v0}, Lcom/miui/home/launcher/util/SoscUtils;->isSoscTouchSingleApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2622
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->onRecentsAnimationStartForSosc(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    goto :goto_0

    .line 2624
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->onRecentsAnimationStartForNormal(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    :goto_0
    return-void
.end method

.method public onSoscStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZI)V
    .locals 0

    .line 1519
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance p5, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda36;

    invoke-direct {p5, p0, p4, p2, p3}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda36;-><init>(Lcom/miui/home/recents/NavStubView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p5}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p1, 0x1

    .line 2788
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot(Z)Landroid/graphics/Bitmap;

    return p1
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 8

    .line 1598
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isImmersive()Z

    move-result v0

    .line 1599
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    .line 1600
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureListener:Lcom/miui/home/recents/gesture/NavStubGestureListener;

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/gesture/NavStubGestureListener;->onSystemUiFlagsChanged(I)V

    .line 1601
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSystemUiStatusBarHiddenFlag()I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 1602
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSystemUiFlagsChanged  mIsShowStatusBar    old= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "   new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "NavStubView_Touch"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    if-eq v4, v1, :cond_2

    .line 1605
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v2

    .line 1608
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSystemUiFlagsChanged  mIsShowNavBar    old= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    const-string v4, "  onSystemUiFlagsChanged---requestApplyInsets"

    if-eq v1, p1, :cond_4

    .line 1611
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    .line 1612
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1613
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isImmersive()Z

    move-result p1

    .line 1616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSystemUiFlagsChanged  isImmersiveNew    old= "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p1, :cond_5

    .line 1619
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v0, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1627
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isHomeDisabled()Z

    move-result p1

    .line 1628
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isOverviewDisabled()Z

    move-result v0

    .line 1629
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsRecentDisabled:Z

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    move v2, v3

    .line 1631
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSystemUiFlagsChanged, mDisableHomeRecents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mDisableHomeRecents:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", disableHomeRecents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHomeDisabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isRecentDisabled = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mDisableHomeRecents:Z

    if-eq p1, v2, :cond_7

    .line 1636
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mDisableHomeRecents:Z

    .line 1637
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->shouldUseEmptyTouchableRegion()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    .line 1638
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1639
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2753
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    iget p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 2754
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 2756
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->onTasksAppearedFinished([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 4

    .line 2761
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->onTasksAppearedFinished([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 2762
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 2763
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    iget v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, v2, :cond_1

    .line 2764
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    invoke-static {v2}, Lcom/miui/home/launcher/util/SoscUtils;->isSoscTouchSingleApp(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2765
    invoke-direct {p0, v3}, Lcom/miui/home/recents/NavStubView;->resetSoscLauncherProperty(Z)V

    goto :goto_1

    .line 2767
    :cond_0
    invoke-direct {p0, v3}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2772
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2773
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->onStartingSplitLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    goto :goto_2

    .line 2775
    :cond_3
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onStartingSplitLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    .line 2777
    :goto_2
    invoke-static {p0}, Lcom/miui/home/recents/TaskViewUtils;->showDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1791
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1791
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1795
    invoke-direct {p0, p1, v1}, Lcom/miui/home/recents/NavStubView;->shouldBlockGesture(Landroid/view/MotionEvent;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 1799
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mMiuiGestureDetector:Landroid/view/MiuiGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/MiuiGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1800
    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    if-eqz v2, :cond_1

    return v3

    .line 1804
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/miui/home/recents/NavStubView;->initCalculatorAndUpdateRecentsOrientation(Landroid/view/MotionEvent;I)V

    .line 1805
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_2

    return v3

    .line 1809
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v2

    const/16 v4, 0x3e8

    invoke-virtual {v2, p1, v4}, Lcom/miui/home/library/utils/CPUBooster;->boostTouch(Landroid/view/MotionEvent;I)V

    .line 1811
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    if-nez v2, :cond_3

    .line 1812
    sget-object v2, Lcom/miui/home/launcher/KeyguardStateListener;->sInstance:Lcom/miui/home/launcher/KeyguardStateListener;

    invoke-virtual {v2}, Lcom/miui/home/launcher/KeyguardStateListener;->isKeyguardLocked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsKeyguardLocked:Z

    .line 1815
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->boostGestureIfNeeded(Landroid/view/MotionEvent;)V

    .line 1816
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    const/16 v4, 0x102

    const-wide/16 v5, 0x12c

    const/4 v7, 0x3

    if-eqz v2, :cond_d

    const/16 v8, 0xff

    if-eq v2, v1, :cond_9

    const/4 v9, 0x2

    if-eq v2, v9, :cond_5

    if-eq v2, v7, :cond_9

    const/4 v0, 0x5

    if-eq v2, v0, :cond_4

    goto/16 :goto_0

    .line 1836
    :cond_4
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsPointerEvent:Z

    goto/16 :goto_0

    .line 1839
    :cond_5
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceY()F

    move-result v2

    .line 1840
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceX()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    .line 1841
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_6

    .line 1842
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v5, Lcom/miui/home/recents/NavStubView;->TOUCH_SLOP:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    if-nez v2, :cond_6

    .line 1846
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "h-slide detected, sendMessage MSG_THROUGH_PASS_CLICK"

    .line 1848
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1851
    :cond_6
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 1852
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceY()F

    move-result v0

    sget v2, Lcom/miui/home/recents/NavStubView;->TOUCH_SLOP:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 1853
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureHomeCalculator;->getDistanceX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v2, Lcom/miui/home/recents/NavStubView;->TOUCH_SLOP:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    if-nez v0, :cond_8

    .line 1854
    :cond_7
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isStartOrStopOneHandMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1855
    :cond_8
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_f

    .line 1856
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    .line 1857
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_START:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 1858
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->exitFreeFormWindowIfNeeded()V

    .line 1859
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->clearMessages()V

    .line 1860
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_f

    .line 1861
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1862
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1864
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1872
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action is"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/NavStubView;->finishRecentsAnimation(Ljava/lang/String;)V

    .line 1873
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_a

    return v1

    .line 1878
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    .line 1881
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    cmp-long v5, v9, v5

    if-gez v5, :cond_b

    iget-boolean v5, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v5, :cond_b

    .line 1883
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->clearMessages()V

    .line 1886
    :cond_b
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float/2addr v5, v6

    .line 1887
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v6}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrY()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    sub-float/2addr v6, v9

    .line 1889
    invoke-direct {p0, v5, v6, v2}, Lcom/miui/home/recents/NavStubView;->isSupportThroughPass(FFLandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1890
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1895
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP: mIsGestureStarted: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", currTime - mDownTime < MSG_CHECK_GESTURE_STUB_TOUCHABLE_TIMEOUT, updateViewLayout UnTouchable, diffX: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " diffY: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    goto :goto_0

    .line 1818
    :cond_d
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2, p1}, Lcom/miui/home/recents/GestureHomeCalculator;->setInitEvent(Landroid/view/MotionEvent;)V

    .line 1819
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initializeDownEvent(Landroid/view/MotionEvent;)V

    .line 1820
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_e

    .line 1821
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsAnimationPre()V

    .line 1825
    :cond_e
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v8, 0x100

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1826
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    .line 1827
    invoke-virtual {v2, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1826
    invoke-virtual {v2, v8, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v2, "onTouch ACTION_DOWN sendMessageDelayed MSG_CHECK_GESTURE_STUB_TOUCHABLE"

    .line 1831
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_f
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    if-eq v0, v1, :cond_10

    if-ne v0, v7, :cond_11

    .line 1907
    :cond_10
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1908
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1910
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v1

    :cond_11
    return v3
.end method

.method public performAppToApp(I)V
    .locals 31

    move-object/from16 v0, p0

    .line 5440
    iget-boolean v1, v0, Lcom/miui/home/recents/NavStubView;->mIsSupportQuickSwitchGesture:Z

    if-nez v1, :cond_0

    .line 5441
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 5443
    :goto_0
    sget-boolean v2, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v2, :cond_1

    .line 5444
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ConnectAnimManager;->handleNonAppToHome()V

    .line 5446
    :cond_1
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TransitionTest performAppToApp, taskIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isNeedStopBecauseRecentsRemoteAnimStartFailed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5448
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v3

    const-string v4, "performAppToApp"

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 5449
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v5}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 5450
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    .line 5451
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    const-string v3, "StopBecauseRecentsRemoteAnimStartFailed"

    invoke-direct {v2, v3}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 5452
    invoke-direct {v0, v4}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void

    .line 5455
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object v3

    sget-object v6, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_APP:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 5457
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v3

    sub-int v3, v1, v3

    .line 5458
    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    if-eqz v3, :cond_3

    const-string v7, "toAnotherApp"

    goto :goto_1

    :cond_3
    const-string v7, "toCurrentApp"

    .line 5460
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "gesture"

    invoke-static {v8, v7, v9}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5461
    sget-object v7, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v8, 0x13a

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    .line 5463
    iget-boolean v7, v0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v7, :cond_8

    if-eqz v3, :cond_8

    .line 5464
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v1, v6, v7}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    .line 5465
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v7

    iget v8, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v7, v8}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v6

    .line 5466
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getAllSmallWindows()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 5468
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 5472
    :cond_4
    invoke-direct {v0, v6, v1, v3}, Lcom/miui/home/recents/NavStubView;->getFirstValidTaskIndex(ILcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)I

    move-result v1

    goto :goto_3

    .line 5470
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    sub-int/2addr v1, v10

    add-int/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3
    sub-int v3, v1, v6

    .line 5475
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v7

    if-nez v7, :cond_7

    if-eq v1, v6, :cond_6

    goto :goto_4

    :cond_6
    move v7, v5

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v10

    :goto_5
    invoke-virtual {v0, v7}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    goto :goto_8

    .line 5477
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v7

    if-nez v7, :cond_a

    if-eq v1, v6, :cond_9

    goto :goto_6

    :cond_9
    move v7, v5

    goto :goto_7

    :cond_a
    :goto_6
    move v7, v10

    :goto_7
    invoke-virtual {v0, v7}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    :goto_8
    const/4 v7, -0x1

    if-le v3, v10, :cond_b

    move v3, v10

    goto :goto_9

    :cond_b
    if-ge v3, v7, :cond_c

    move v3, v7

    .line 5485
    :cond_c
    :goto_9
    invoke-direct {v0, v3, v5}, Lcom/miui/home/recents/NavStubView;->updateTargetRectF(IZ)V

    .line 5487
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TransitionTest performAppToApp, from="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", to="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", runningTaskIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " taskIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5489
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mStartToDragAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5490
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mStartToDragAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 5493
    :cond_d
    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 5494
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_e

    .line 5495
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v2

    goto :goto_a

    :cond_e
    move-object v2, v8

    :goto_a
    iput-object v2, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eq v1, v6, :cond_f

    .line 5500
    sget-object v2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->setAnimEndEnable()V

    .line 5502
    :cond_f
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v2

    .line 5503
    new-instance v7, Lcom/miui/home/recents/anim/RectFParams;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    sget-object v19, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/16 v20, 0x1

    const/16 v21, 0x1

    .line 5508
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v22

    const/16 v23, 0x0

    .line 5509
    invoke-direct {v0, v1, v6}, Lcom/miui/home/recents/NavStubView;->getAppToAppListener(II)Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 5512
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getCurrentDisplayRotation()I

    move-result v27

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v28

    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    if-ne v1, v6, :cond_10

    move/from16 v30, v10

    goto :goto_b

    :cond_10
    move/from16 v30, v5

    :goto_b
    move-object v11, v7

    move v15, v2

    move/from16 v16, v2

    move-object/from16 v29, v9

    invoke-direct/range {v11 .. v30}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;Z)V

    .line 5514
    new-instance v5, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object v11, v5

    iget-object v12, v0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    iget v13, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v14, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 5516
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v17

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 5517
    invoke-virtual {v6}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v23

    .line 5518
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v24

    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v6}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v25

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    move/from16 v26, v6

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v27, v6

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v28, v6

    move/from16 v21, v2

    invoke-direct/range {v11 .. v28}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    .line 5519
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    .line 5520
    sget-object v2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    new-instance v6, Lcom/miui/home/recents/event/AppToAppEvent;

    new-instance v9, Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v11

    new-instance v12, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/4 v13, 0x3

    invoke-direct {v12, v13, v5, v8}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;)V

    invoke-direct {v9, v7, v11, v12}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;-><init>(Lcom/miui/home/recents/anim/RectFParams;ZLcom/miui/home/recents/anim/TaskViewsParams;)V

    invoke-direct {v6, v9, v3}, Lcom/miui/home/recents/event/AppToAppEvent;-><init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;I)V

    invoke-virtual {v2, v6}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 5521
    invoke-virtual {v0, v10}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 5522
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5523
    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;->setQuickSwitchTaskIndex(I)V

    .line 5524
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskIdFromStackIndex(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    .line 5526
    :cond_11
    invoke-direct {v0, v4}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 5528
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performAppToHome()V
    .locals 1

    const/4 v0, 0x0

    .line 4105
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->performAppToHome(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method

.method public performAppToHome(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 6

    .line 4108
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 4109
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAppToHome !isNeedStopBecauseRecentsRemoteAnimStartFailed()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", launcher="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 4112
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 4114
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4116
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager;->getFastLaunchRunningTaskPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/BaseRecentsImpl;->setLastBackCloseApp(Ljava/lang/String;)V

    .line 4119
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 4121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 4122
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v1, :cond_2

    .line 4123
    invoke-virtual {v1, v5}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsMergedAnimation(Z)V

    .line 4124
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v1, v4}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWillFinishToHome(Z)V

    .line 4126
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->commonAnimStartAppToHome(Lcom/miui/home/launcher/Launcher;)V

    .line 4127
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startAppToHomeAnim(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    const-string p1, "performAppToHome"

    .line 4128
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_0

    .line 4130
    :cond_3
    invoke-virtual {p0, v5}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    .line 4131
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    .line 4132
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance v1, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    const-string v2, "StopPerformAppToHome"

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const-string p1, "appTouchResolution2"

    .line 4133
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 4136
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V

    .line 4137
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performAppToRecents()V
    .locals 1

    const/4 v0, 0x1

    .line 4677
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->performAppToRecents(Z)V

    return-void
.end method

.method public performAppToRecents(Z)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 4681
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performAppToRecents isOnTaskHoldState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsDisabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 4683
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4684
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWillFinishToHome(Z)V

    .line 4686
    :cond_0
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4687
    new-instance v3, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda49;

    invoke-direct {v3, v0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda49;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, v0, Lcom/miui/home/recents/NavStubView;->mEventReceiver:Ljava/util/function/Predicate;

    .line 4693
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object v3

    sget-object v5, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_RECENT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 4694
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 4695
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v3

    .line 4697
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 4698
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v5

    .line 4699
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v7

    if-nez v1, :cond_2

    .line 4702
    sget-object v3, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v3

    new-instance v6, Lcom/miui/home/recents/event/GestureEnterAppHoldEvent;

    invoke-direct {v6}, Lcom/miui/home/recents/event/GestureEnterAppHoldEvent;-><init>()V

    invoke-virtual {v3, v6}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 4703
    invoke-virtual {v0, v4}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 4704
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation()V

    .line 4705
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 4706
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v3, v6, v7}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 4707
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v7

    iget v8, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v7, v8}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v6

    .line 4708
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    .line 4709
    invoke-virtual {v5, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    move v3, v6

    goto :goto_0

    .line 4711
    :cond_2
    invoke-virtual {v5, v7, v6}, Lcom/miui/home/recents/views/TaskStackView;->initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 4714
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4715
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/ForegroundTaskHelper;->saveForegroundSmallWinowsAndFullScreen()V

    .line 4717
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "toRecents"

    const-string v7, "gesture"

    invoke-static {v4, v6, v7}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4

    .line 4720
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    :cond_4
    const-string v1, "performAppToRecents"

    .line 4723
    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 4724
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    .line 4725
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v4

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v1, v4, v6, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTargetTaskViewIndex(ZII)I

    move-result v1

    .line 4726
    invoke-virtual {v5, v1}, Lcom/miui/home/recents/views/TaskStackView;->getScrollForTaskView(I)F

    move-result v1

    .line 4729
    invoke-virtual {v5, v3, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object v1

    .line 4730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "homeRotationTargetRectF= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_6

    .line 4731
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v11, v3

    goto :goto_2

    .line 4732
    :cond_6
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 4733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSourceStackBounds= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4734
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    .line 4735
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    int-to-float v5, v5

    .line 4736
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    .line 4737
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v7, v8

    int-to-float v7, v7

    .line 4734
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v4, 0x0

    .line 4739
    sget-object v5, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v6, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v5, v6}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    move v11, v4

    .line 4742
    :goto_2
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    move/from16 v21, v4

    .line 4743
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v5

    move/from16 v20, v5

    .line 4744
    invoke-direct {v0, v4, v5, v1}, Lcom/miui/home/recents/NavStubView;->getRotationRectF(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    move-object v7, v6

    .line 4745
    iget-object v8, v0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v8, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 4746
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "performAppToRecents, mCurRect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", homeRotationTargetRectF="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetRectF="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", homeRotation="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentDisplayRotation="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getQuickSwitchOrRunningTaskId="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4751
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4746
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 4755
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v1

    int-to-float v9, v1

    .line 4756
    new-instance v1, Lcom/miui/home/recents/anim/RectFParams;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 4757
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v8

    const/high16 v10, 0x3f800000    # 1.0f

    sget-object v12, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4758
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v15

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mRecentslistenerAdapter:Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;

    move-object/from16 v17, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    move-object/from16 v22, v2

    invoke-direct/range {v4 .. v22}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;)V

    .line 4760
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    .line 4761
    sget-object v2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    new-instance v4, Lcom/miui/home/recents/event/AppToRecentEvent;

    new-instance v5, Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v6

    sget-object v7, Lcom/miui/home/recents/anim/TaskViewsParams;->Companion:Lcom/miui/home/recents/anim/TaskViewsParams$Companion;

    invoke-virtual {v7}, Lcom/miui/home/recents/anim/TaskViewsParams$Companion;->buildAppToRecentTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;-><init>(Lcom/miui/home/recents/anim/RectFParams;ZLcom/miui/home/recents/anim/TaskViewsParams;)V

    invoke-direct {v4, v5}, Lcom/miui/home/recents/event/AppToRecentEvent;-><init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;)V

    invoke-virtual {v2, v4}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 4762
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    .line 4763
    iget-boolean v1, v0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    .line 4764
    invoke-direct {v0, v3, v1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlagsDirectly(FI)V

    goto :goto_3

    .line 4767
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    .line 4769
    :cond_8
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performHalfAppToHalfApp(I)V
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5621
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performHalfAppToHalfApp, taskIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5623
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v2

    const-string v3, "performHalfAppToHalfApp"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 5624
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 5625
    invoke-direct {v0, v4}, Lcom/miui/home/recents/NavStubView;->resetSoscLauncherProperty(Z)V

    .line 5626
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    const-string v4, "StopBecauseRecentsRemoteAnimStartFailed"

    invoke-direct {v2, v4}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 5627
    invoke-direct {v0, v3}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void

    .line 5630
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object v2

    sget-object v5, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_APP:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 5632
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v2

    sub-int v2, v1, v2

    .line 5633
    iget v5, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    if-eqz v2, :cond_1

    .line 5635
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "toAnotherApp"

    const-string v8, "gesture"

    invoke-static {v6, v7, v8}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5638
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v6, v7, v8}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    .line 5639
    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v8

    iget v9, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v8, v9}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v7

    .line 5640
    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 5641
    iget-boolean v9, v0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    const/4 v10, 0x1

    if-nez v9, :cond_a

    if-eqz v2, :cond_a

    .line 5642
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getAllSmallWindows()Ljava/util/Set;

    move-result-object v1

    .line 5644
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5646
    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    sub-int/2addr v1, v10

    add-int/2addr v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 5648
    :cond_2
    invoke-direct {v0, v8}, Lcom/miui/home/recents/NavStubView;->setTaskIfNeedHide(Ljava/util/ArrayList;)I

    if-lez v2, :cond_4

    add-int/lit8 v1, v7, 0x1

    .line 5652
    :goto_0
    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    if-eqz v8, :cond_3

    .line 5653
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5654
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 5655
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v7, -0x1

    :goto_1
    if-ltz v1, :cond_6

    if-eqz v8, :cond_5

    .line 5664
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5665
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 5666
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    move v1, v7

    :goto_2
    sub-int v2, v1, v7

    if-eqz v2, :cond_7

    .line 5676
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->showRecents()V

    .line 5678
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v5

    if-nez v5, :cond_9

    if-eq v1, v7, :cond_8

    goto :goto_3

    :cond_8
    move v5, v4

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v10

    :goto_4
    invoke-direct {v0, v5}, Lcom/miui/home/recents/NavStubView;->setIsHalfQuickSwitching(Z)V

    move v5, v7

    goto :goto_7

    .line 5680
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v6

    if-nez v6, :cond_c

    if-eq v1, v5, :cond_b

    goto :goto_5

    :cond_b
    move v6, v4

    goto :goto_6

    :cond_c
    :goto_5
    move v6, v10

    :goto_6
    invoke-direct {v0, v6}, Lcom/miui/home/recents/NavStubView;->setIsHalfQuickSwitching(Z)V

    .line 5683
    :goto_7
    invoke-virtual {v0, v8, v1, v2}, Lcom/miui/home/recents/NavStubView;->setTargetSingleAppBounds(Ljava/util/List;II)V

    const/4 v6, -0x1

    if-gt v2, v10, :cond_f

    .line 5686
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isInsidePairQuickSwitch()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getTaskLocation()I

    move-result v7

    if-ne v7, v6, :cond_d

    goto :goto_8

    :cond_d
    if-lt v2, v6, :cond_e

    .line 5688
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isInsidePairQuickSwitch()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getTaskLocation()I

    move-result v7

    if-ne v7, v10, :cond_10

    :cond_e
    move v2, v6

    goto :goto_9

    :cond_f
    :goto_8
    move v2, v10

    .line 5691
    :cond_10
    :goto_9
    invoke-direct {v0, v2, v10}, Lcom/miui/home/recents/NavStubView;->updateTargetRectF(IZ)V

    .line 5695
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->beforeStartHalfAppToHalfAppAnim()V

    .line 5696
    sget-object v6, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v7, 0x13a

    invoke-virtual {v6, v7, v8, v10}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    .line 5699
    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v6}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v6

    .line 5700
    new-instance v7, Lcom/miui/home/recents/anim/RectFParams;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    sget-object v19, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/16 v20, 0x1

    const/16 v21, 0x1

    .line 5705
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v22

    const/16 v23, 0x0

    .line 5706
    invoke-direct {v0, v1, v5}, Lcom/miui/home/recents/NavStubView;->getHalfAppToHalfAppListener(II)Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 5709
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getCurrentDisplayRotation()I

    move-result v27

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v28

    iget-object v8, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    if-ne v1, v5, :cond_11

    move/from16 v30, v10

    goto :goto_a

    :cond_11
    move/from16 v30, v4

    :goto_a
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    iget v4, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v34, v4

    move-object v11, v7

    move v15, v6

    move/from16 v16, v6

    move-object/from16 v29, v8

    invoke-direct/range {v11 .. v34}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZI)V

    .line 5711
    new-instance v4, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object v11, v4

    iget-object v12, v0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    iget v13, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v14, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 5713
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v17

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 5714
    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v23

    .line 5715
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v24

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v25

    iget v5, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    move/from16 v26, v5

    iget v5, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v27, v5

    iget v5, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v28, v5

    move/from16 v21, v6

    invoke-direct/range {v11 .. v28}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    .line 5716
    sget-object v5, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v5

    new-instance v6, Lcom/miui/home/recents/event/AppToAppEvent;

    new-instance v8, Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v9

    new-instance v10, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-direct {v10, v11, v4, v12}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;)V

    invoke-direct {v8, v7, v9, v10}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;-><init>(Lcom/miui/home/recents/anim/RectFParams;ZLcom/miui/home/recents/anim/TaskViewsParams;)V

    invoke-direct {v6, v8, v2}, Lcom/miui/home/recents/event/AppToAppEvent;-><init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;I)V

    invoke-virtual {v5, v6}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 5717
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5718
    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;->setQuickSwitchTaskIndex(I)V

    .line 5719
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskIdFromStackIndex(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    .line 5721
    :cond_12
    invoke-direct {v0, v3}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 5723
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performHalfAppToHome()V
    .locals 5

    .line 4141
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performHalfAppToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 4143
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 4144
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 4145
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->commonAnimStartAppToHome(Lcom/miui/home/launcher/Launcher;)V

    .line 4146
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->startHalfAppToHomeAnim()V

    .line 4147
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_0

    .line 4149
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/NavStubView;->finishHalfAppToHome(Z)V

    .line 4150
    invoke-direct {p0, v3}, Lcom/miui/home/recents/NavStubView;->resetSoscLauncherProperty(Z)V

    .line 4151
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/event/ForceStopTransitionEvent;

    const-string v4, "StopperformHalfAppToHome"

    invoke-direct {v2, v4}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const-string v1, "halfAppTouchResolution2"

    .line 4152
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 4155
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V

    .line 4156
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    .line 4157
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    return-void
.end method

.method public performHalfAppToRecents(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 4851
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    .line 4852
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performHalfAppToRecents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsRecentDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsRecentDisabled:Z

    if-eqz v0, :cond_0

    .line 4854
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    return-void

    .line 4857
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4858
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->performAppToRecentsInHalfSplit(Z)V

    goto :goto_0

    .line 4860
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToRecentsNormal(Z)V

    :goto_0
    return-void
.end method

.method public performHomeToHome()V
    .locals 22

    move-object/from16 v0, p0

    .line 6493
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "performHomeToHome"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6495
    sget-object v2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v3, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda17;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 6505
    sget-boolean v2, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v2, :cond_0

    .line 6506
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ConnectAnimManager;->handleNonAppToHome()V

    .line 6509
    :cond_0
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 6511
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "toHome"

    const-string v4, "gesture"

    invoke-static {v2, v3, v4}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6514
    iput-boolean v2, v0, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    .line 6516
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v3, "startHomeAnimation"

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6526
    iget-boolean v2, v0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v2, :cond_2

    .line 6527
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6528
    new-instance v1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object v4, v1

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    const/4 v6, -0x1

    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 6529
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 6530
    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v14

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v15

    .line 6531
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v16

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    move/from16 v17, v2

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v18

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    move/from16 v19, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    move/from16 v20, v2

    iget v2, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v21, v2

    invoke-direct/range {v4 .. v21}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    .line 6533
    :cond_2
    new-instance v2, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;

    invoke-direct {v2, v1}, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;-><init>(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    .line 6534
    sget-object v1, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 6535
    invoke-direct {v0, v3}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 6536
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureHomeToHomeEvent;

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/GestureHomeToHomeEvent;-><init>(Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void

    :cond_3
    :goto_0
    const-string v2, "mLauncher is null or getShortcutMenuLayer null"

    .line 6517
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6519
    invoke-direct {v0, v1, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    .line 6520
    sget-object v1, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 6521
    invoke-direct {v0, v3}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void
.end method

.method public performHomeToRecents()V
    .locals 3

    .line 6540
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performHomeToRecents mIsRecentDisable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsRecentDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6541
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsRecentDisabled:Z

    if-eqz v0, :cond_0

    .line 6542
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6545
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    .line 6546
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_1

    .line 6547
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->handleNonAppToHome()V

    .line 6549
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->reset9_1TaskViewRatio()V

    .line 6550
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureHomeToRecentEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/GestureHomeToRecentEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6552
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6553
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getNormalSmallWindows()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/ForegroundTaskHelper;->setForegroundSmallWindows(Ljava/util/Set;)V

    .line 6554
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ForegroundTaskHelper;->clearFullScreenTask()V

    .line 6556
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toRecents"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6559
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    const-string v0, "startHomeAnimation"

    .line 6560
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 6562
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performRecentsRest(Z)V
    .locals 3

    .line 6763
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performRecentsRest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6764
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureRecentUpEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/miui/home/recents/event/GestureRecentUpEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6765
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mExitStateEvent:Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6766
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toRecents"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6769
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    :cond_0
    return-void
.end method

.method public performRecentsToHome()V
    .locals 5

    .line 6749
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/GestureRecentUpEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lcom/miui/home/recents/event/GestureRecentUpEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6750
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performRecentsToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6751
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "toHome"

    const-string v4, "gesture"

    invoke-static {v0, v3, v4}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6753
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 6754
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 6756
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 6757
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->setHalfSplitWhenToHome()V

    .line 6759
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method postFinishRunnable()V
    .locals 3

    .line 5874
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5875
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5876
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method postFinishSoscRunnable()V
    .locals 3

    .line 5881
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5882
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mFinishSoscRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5883
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFinishSoscRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method postStartHalfNewTaskRunnable()V
    .locals 3

    .line 5917
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartHalfNewTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5918
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartHalfNewTaskRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method removeFinishRunnable()V
    .locals 1

    .line 5888
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5889
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public resetHomeStackBound()V
    .locals 1

    .line 2825
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getFullScreenSizeHomeStackBoundByOrientation()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    return-void
.end method

.method resetQuickSwitchStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 5775
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setInsidePairQuickSwitch(Z)V

    .line 5776
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTargetSingleAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setStartSingleAppBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 1

    .line 4569
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 4570
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 4571
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 4572
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    :cond_0
    return-void
.end method

.method protected resetSplitRatioBeforeHold()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 7243
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mSplitRatioBeforeHold:F

    return-void
.end method

.method public runningTaskInfoInValid()Z
    .locals 0

    .line 2117
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public screenshotForMultiWindow(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 5968
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTaskForFastLaunch(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5969
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 5973
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTaskForFastLaunch(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5974
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5975
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public sendEvent(III)V
    .locals 6

    .line 6790
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->sendEvent(IIIJ)V

    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 17

    move/from16 v0, p2

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v11, v2

    goto :goto_0

    :cond_0
    move v11, v3

    .line 6795
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    move-object/from16 v15, p0

    iget-object v4, v15, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v4}, Lcom/miui/home/recents/GestureHomeCalculator;->getDownTime()J

    move-result-wide v5

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x40

    const/16 v16, 0x101

    move-object v4, v1

    move-wide/from16 v7, p4

    move/from16 v9, p1

    move/from16 v10, p3

    move v15, v0

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 6799
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    :try_start_0
    const-string v0, "android.hardware.input.InputManager"

    .line 6802
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    .line 6803
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    .line 6804
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6807
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "injectInputEvent"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/view/InputEvent;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v3

    .line 6808
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6810
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setAssistantInEditMode(Z)V
    .locals 3

    .line 272
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAssistantInEditMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAssistantInEditMode:Z

    return-void
.end method

.method public setHideGestureLine(Z)V
    .locals 1

    .line 1645
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    .line 1646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setHideGestureLine   mHideGestureLine="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavStubView_Touch"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mNavStubGestureListener:Lcom/miui/home/recents/gesture/NavStubGestureListener;

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/gesture/NavStubGestureListener;->onGestureLineVisibilityChanged(Z)V

    .line 1648
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateViewLayout(I)V

    .line 1649
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    return-void
.end method

.method public setInsidePairQuickSwitch(Z)V
    .locals 0

    .line 2593
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->isInsidePairQuickSwitch:Z

    return-void
.end method

.method public setIsAnimatingToApp(Z)V
    .locals 0

    .line 4563
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToApp:Z

    return-void
.end method

.method public setIsAnimatingToLauncher(Z)V
    .locals 3

    .line 4551
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsAnimatingToLauncher  isAnimatingToLauncher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    .line 4553
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4554
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsFsAppToHomeAnimating(Z)V

    :cond_0
    return-void
.end method

.method public setIsAnimatingToRecents(Z)V
    .locals 0

    .line 4559
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    return-void
.end method

.method public setIsQuickSwitching(Z)V
    .locals 2

    .line 2968
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    .line 2969
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsQuickSwitching mIsQuickSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2972
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/RecentsContainer;->setSkipTouchWhenQuickSwitching(Z)V

    :cond_0
    return-void
.end method

.method public setIsShowRecents(Z)V
    .locals 0

    .line 3682
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    return-void
.end method

.method public setKeepHidden(Z)V
    .locals 2

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeepHidden    old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavStubView_Touch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    if-eq v0, p1, :cond_0

    .line 1484
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    .line 1485
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTouchable()V

    :cond_0
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7015
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setPipAnimationTypeToAlpha()V
    .locals 0

    .line 7231
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setPipAnimationTypeToAlpha()V

    return-void
.end method

.method public setStartSingleAppBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 2609
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->startSingleAppBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setSyncTransactionApplier()V
    .locals 2

    .line 4603
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4604
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    :cond_0
    return-void
.end method

.method public setTargetSingleAppBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 2601
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->targetSingleAppBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setTargetSingleAppBounds(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;II)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 5780
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 5781
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_1

    .line 5782
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p2

    if-eqz p2, :cond_1

    if-lez p3, :cond_0

    .line 5784
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Bounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setTargetSingleAppBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    if-gez p3, :cond_2

    .line 5786
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Bounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setTargetSingleAppBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5789
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setTargetSingleAppBounds(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1539
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setWindowAnimType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 3

    .line 4537
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowAnimType  type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mWindowAnimType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4540
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    .line 4541
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToRecents(Z)V

    .line 4542
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToApp(Z)V

    goto :goto_3

    .line 4544
    :cond_0
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    .line 4545
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToRecents(Z)V

    .line 4546
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v1, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToApp(Z)V

    :goto_3
    return-void
.end method

.method public skipSmallWindowGestureUpAnim()V
    .locals 4

    .line 4841
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    if-nez v0, :cond_0

    return-void

    .line 4844
    :cond_0
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "not start small window anim "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4846
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/AppToSmallWindowFinishEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/AppToSmallWindowFinishEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 4847
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->resetValue()V

    return-void
.end method

.method public startFirstTask()V
    .locals 28

    move-object/from16 v0, p0

    .line 6062
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFirstTask, mQuickSwitchTaskIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6068
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v1

    const-string v2, "startFirstTask"

    if-eqz v1, :cond_4

    .line 6069
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 6070
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 6079
    :cond_0
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 6080
    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;->setTaskIfNeedHide(Ljava/util/ArrayList;)I

    move-result v3

    .line 6081
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 6082
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 6086
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    .line 6087
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->updateQuickSwitchTaskIndex()V

    .line 6088
    new-instance v3, Landroid/graphics/RectF;

    move-object v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 6089
    iget v5, v0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 6091
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Landroid/graphics/Rect;)V

    .line 6092
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v11

    move v10, v11

    .line 6093
    new-instance v5, Lcom/miui/home/recents/anim/RectFParams;

    move-object v6, v5

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 6095
    invoke-static {v8, v9}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 6096
    invoke-static {v9, v3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    sget-object v14, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 6101
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getStartFirstTaskListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object v19

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-object/from16 v20, v3

    const/16 v21, 0x0

    .line 6104
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getCurrentDisplayRotation()I

    move-result v22

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v23

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    move-object/from16 v24, v3

    const/16 v25, 0x0

    invoke-direct/range {v6 .. v25}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;Z)V

    .line 6107
    new-instance v15, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object v3, v15

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    add-int/lit8 v1, v6, -0x1

    move-object v14, v5

    move v5, v1

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 6110
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 6113
    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v13

    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v1

    move-object/from16 v26, v14

    move v14, v1

    const/4 v1, 0x1

    move-object/from16 v27, v15

    move v15, v1

    iget v1, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    .line 6114
    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v17

    iget v1, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    move/from16 v18, v1

    const/16 v19, -0x1

    iget v1, v0, Lcom/miui/home/recents/NavStubView;->mTouchRange:I

    move/from16 v20, v1

    invoke-direct/range {v3 .. v20}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    .line 6116
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    new-instance v3, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    invoke-direct {v3, v4, v5}, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6118
    invoke-direct {v0, v2}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_2

    .line 6071
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6072
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->performHomeToRecents()V

    goto :goto_1

    .line 6074
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    :goto_1
    return-void

    .line 6120
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    .line 6121
    invoke-direct {v0, v2}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public startFirstTaskOrToHome()V
    .locals 1

    .line 6126
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6127
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    goto :goto_0

    .line 6129
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startFirstTask()V

    :goto_0
    return-void
.end method

.method startNewTask()V
    .locals 3

    const/4 v0, 0x0

    .line 5901
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    .line 5902
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5903
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setIsLaunchingTask(Z)V

    .line 5904
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsStartHalfSplit(Z)V

    .line 5905
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/NavStubView;->startNewTask(IZ)V

    .line 5906
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->postFinishRunnable()V

    goto :goto_0

    .line 5909
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/NavStubView;->finishDirectly(Z)V

    .line 5910
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/NavStubView;->startNewTask(IZ)V

    .line 5911
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    :goto_0
    const-string v0, "mStartNewTaskRunnable"

    .line 5913
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void
.end method

.method public startRecentsAnimation()V
    .locals 3

    .line 3440
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->usePreRecentShell()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3441
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    return-void

    .line 3445
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3446
    new-instance v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-direct {v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    .line 3447
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->createBarFollowAnimationRunnerImplIfNeed()V

    .line 3448
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setRecentsAnimationListener(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    .line 3449
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v1, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V

    .line 3450
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRecentsAnimationForFastLaunch()Lcom/miui/home/recents/RecentsAnimationListenerImpl;
    .locals 5

    .line 3539
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->usePreRecentShell()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3540
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    .line 3541
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    return-object p0

    .line 3544
    :cond_0
    new-instance v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    sget-object v2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager;->getCurRemoteSyncId()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    .line 3545
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->createBarFollowAnimationRunnerImplIfNeed()V

    .line 3546
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recentflow startRecentsAnimationForFastLaunch mRecentsAnimationListenerImpl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    .line 3548
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setRecentsAnimationListener(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    .line 3550
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V

    .line 3551
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 3552
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getFullScreenSizeHomeStackBoundByOrientation()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 3553
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Landroid/graphics/Rect;)V

    .line 3555
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 3556
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->removeMessage(I)V

    .line 3557
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 3558
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 3559
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3560
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    return-object p0
.end method

.method public startRecentsAnimationPre()V
    .locals 4

    .line 3464
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->hasWindowElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3465
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startRecentsAnimationPre hasWindowElement is true"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3468
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isNormalMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3469
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startRecentsAnimationPre isNormalMode is false"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3473
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3474
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startRecentsAnimationPre isMistakeTouch is true"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3478
    :cond_2
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v1, :cond_3

    .line 3479
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startRecentsAnimationPre mHideGestureLine is true"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3482
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->notHasHome()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskForGesture(ZZ)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3484
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startRecentsAnimationPre runningTaskInfo is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3488
    :cond_4
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    .line 3489
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3490
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startRecentsAnimationPre runningTask is Launcher"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3494
    :cond_5
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->calcIsAppHandleGesture(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3495
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startRecentsAnimationPre, app handle gesture, return"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3499
    :cond_6
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->rePreRecentShell()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3500
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentsAnimationPre return mRecentsAnimationListenerImpl.getState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getState()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3504
    :cond_7
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsKeyguardLocked:Z

    if-eqz v1, :cond_8

    .line 3505
    sget-object p0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startRecentsAnimationPre return mIsKeyguardLocked = true"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3509
    :cond_8
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 3510
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3511
    new-instance v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-direct {v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    .line 3512
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->createBarFollowAnimationRunnerImplIfNeed()V

    .line 3513
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setPre(Z)V

    .line 3514
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setRecentsAnimationListener(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    .line 3515
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v1, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V

    .line 3516
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->changeState(I)V

    .line 3517
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTailCatcher()V
    .locals 1

    .line 6774
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public switchToScreenshot(Z)Landroid/graphics/Bitmap;
    .locals 5

    .line 5985
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 5988
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager;->hasValidSurface()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 5991
    :cond_1
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTaskForFastLaunch(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p1

    .line 5992
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/RecentsView;->getAnotherMultiTaskId(I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_4

    .line 5993
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    .line 5995
    :goto_2
    sget-object v3, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v4, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda38;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/miui/home/recents/NavStubView$$ExternalSyntheticLambda38;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/android/systemui/shared/recents/model/ThumbnailData;Lcom/android/systemui/shared/recents/model/ThumbnailData;I)V

    invoke-virtual {v3, v4}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_5

    .line 6005
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 6006
    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object p0

    :cond_5
    return-object v1
.end method

.method public unregisterInputConsumer()V
    .locals 2

    .line 1144
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "unregisterInputConsumer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->unregisterInputConsumer()V

    return-void
.end method

.method public updateCurrentRect(Landroid/graphics/RectF;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 7218
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 7219
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 7221
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 7223
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->calculateRotationRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method protected updateGestureLineProgress(F)V
    .locals 2

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    .line 2990
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    .line 2991
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    .line 2992
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p1}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2993
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateGestureStateToRemote(I)V
    .locals 0

    .line 6181
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mBarFollowAnimationRunnerImpl:Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;

    if-eqz p0, :cond_0

    .line 6182
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BarFollowAnimationRunnerImpl;->updateGestureStateToRemote(I)V

    :cond_0
    return-void
.end method

.method public updateHalfSplitTaskPosition(Landroid/graphics/RectF;FFFII)Landroid/graphics/RectF;
    .locals 12

    move-object v6, p0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    .line 6254
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->setAppTransformParams(Landroid/graphics/RectF;FFFZ)V

    .line 6255
    iget-object v0, v6, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v1, v6, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v7

    iget-object v8, v6, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 v9, 0x0

    move-object v6, v0

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformHalfTask(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;II)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public updatePivotLoc(Landroid/view/MotionEvent;)V
    .locals 1

    .line 6786
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/recents/GestureHomeCalculator;->updatePivotLoc(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTaskCropBySmallWindow()V
    .locals 2

    .line 3795
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "updateTaskCropBySmallWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    const/4 v0, 0x1

    .line 3797
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->sendAppMoveEvent(Z)V

    return-void
.end method

.method public updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 6229
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFFZ)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
