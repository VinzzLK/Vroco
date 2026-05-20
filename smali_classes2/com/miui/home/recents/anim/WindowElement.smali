.class public Lcom/miui/home/recents/anim/WindowElement;
.super Ljava/lang/Object;
.source "WindowElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/WindowElement$Companion;,
        Lcom/miui/home/recents/anim/WindowElement$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowElement.kt\ncom/miui/home/recents/anim/WindowElement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1997:1\n1#2:1998\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/WindowElement$Companion;

.field private static curRectF:Landroid/graphics/RectF;


# instance fields
.field private final CORRECT_NUM_MAX:I

.field private TAG:Ljava/lang/String;

.field private allowEndListener:Z

.field private clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

.field private floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

.field private hasRecentTransition:Z

.field private iconLoc:Landroid/graphics/Rect;

.field private final isHalf:Z

.field private isSplitAnim:Z

.field private volatile isWaitViewDrawCommitWhenAppToRecentAnimEnd:Z

.field private lastOpenFromHomeIsVerticalClip:Ljava/lang/Boolean;

.field private launchPosition:I

.field private launcherTargetView:Landroid/view/View;

.field private mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final mCancelSurfaceRunnable:Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;

.field private mCancelSurfaceTask:Ljava/lang/Runnable;

.field private volatile mCanceled:Z

.field private mCorrectNum:I

.field private final mCurrentRectFCalculator:Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;

.field private mDisableStateManagerListener:Z

.field private volatile mDuringMerge:Z

.field private volatile mEndWaitingMerge:Z

.field private mFastLaunchData:Lcom/miui/home/recents/FastLaunchData;

.field private volatile mFinishComplete:Z

.field private mFinishSurface:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitPackageName:Ljava/lang/String;

.field private mIsInDrawerApps:Z

.field private mNativeHyperRemoteTransition:Lcom/miui/home/recents/anim/HyperRemoteTransition;

.field public mNativeWindowTransitionCompatListener:Lcom/miui/home/recents/anim/WindowTransitionCompatListener;

.field private volatile mNeedRunningBitmap:Z

.field private final mNotHandleAnimRunnable:Ljava/lang/Runnable;

.field private mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

.field private mOnShellAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

.field private final mOnUpdateListener:Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

.field private mOpeningRectFParams:Lcom/miui/home/recents/anim/RectFParams;

.field private final mRectFSpringAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

.field private mRunningBitmap:Landroid/graphics/Bitmap;

.field private mRunningTaskId:I

.field private mShellTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

.field private volatile mSurfaceCanceled:Z

.field private volatile mSurfaceCanceledExecute:Z

.field public mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private mUseShellAnimListener:Z

.field private mUserAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

.field private notifyPackage:Ljava/lang/String;

.field private recentAnimationListener:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final stateManagerListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

.field private taskViewClipHelper:Lcom/miui/home/recents/util/TaskViewClipHelper;

.field private windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;


# direct methods
.method public static synthetic $r8$lambda$42G9m2--m7QRGzvc3Y3uHNgfwsg(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowElement;->hideTaskViewByQuickSwitch$lambda-20(Lcom/miui/home/recents/anim/WindowElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$80bMq2ywRu-cnHXGIfYz-C_GQx4(Lcom/miui/home/recents/anim/WindowElement;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/miui/home/recents/anim/WindowElement;->mOnUpdateListener$lambda-1(Lcom/miui/home/recents/anim/WindowElement;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A-2s7iBe72LwDlAcTS5sO9cG2OI(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowElement;->mNotHandleAnimRunnable$lambda-0(Lcom/miui/home/recents/anim/WindowElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ObmWYWflMOKTaRr0LxKF4vjlbMU(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/anim/WindowElement;->onClosingWindowTransitionExecute$lambda-8(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q1BQnn5doKUiLdKO4r05zlKFeA8(Lcom/miui/home/recents/anim/WindowElement;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon$lambda-15(Lcom/miui/home/recents/anim/WindowElement;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UKwbMepaYIBsS46URj3kGOk2lKE(Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/WindowElement;->openingWindowTransitionStart$lambda-18(Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UaQOCw2yCCowTKxI3nfOFxiYawE(Lcom/miui/home/recents/anim/WindowElement;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$lambda-12(Lcom/miui/home/recents/anim/WindowElement;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_sBHHWz2kZQ9zT12wyEqqG2UU3w(Lcom/miui/home/recents/anim/WindowElement;Landroid/graphics/RectF;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/WindowElement;->handleQuickSwitchCloseToHomeTaskView$lambda-3(Lcom/miui/home/recents/anim/WindowElement;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$byGzmn2jZTZf12lqxWk_NDn4Lng(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/WindowElement;->forceStop$lambda-11(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dBSC2-KQAXO-DbuYbsN-GqH7NLo()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/anim/WindowElement;->strokeSwitch$lambda-19()V

    return-void
.end method

.method public static synthetic $r8$lambda$dLachCjdyaIOOFEdHEo2Ged5Xv8()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/anim/WindowElement;->startRemoteAnimation$lambda-7()V

    return-void
.end method

.method public static synthetic $r8$lambda$gFP5X1_v10Va7xEd-ZqPNnBKE9A(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowElement;->injectRecentTransition$lambda-13(Lcom/miui/home/recents/anim/WindowElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gscgixFpee-aZaSNbZMj1WUGwvs(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowElement;->onAnimCancelByShellFinishedExecute$lambda-10(Lcom/miui/home/recents/anim/WindowElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nITIeelf3zIQSaay1C06pxHXl8c(Lcom/miui/home/recents/anim/WindowElement;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$lambda-4(Lcom/miui/home/recents/anim/WindowElement;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sVy5zMRagG5dsyvmMfWdEKLcB8U(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/anim/WindowElement;->onPairTaskOpeningWindowTransitionExecute$lambda-9(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/WindowElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/WindowElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/WindowElement;->Companion:Lcom/miui/home/recents/anim/WindowElement$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;Z)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->stateManagerListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    iput-boolean p2, p0, Lcom/miui/home/recents/anim/WindowElement;->isHalf:Z

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mNeedRunningBitmap:Z

    const-string v0, "WindowElement"

    .line 69
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    .line 85
    iput p1, p0, Lcom/miui/home/recents/anim/WindowElement;->launchPosition:I

    .line 92
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->allowEndListener:Z

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningTaskId:I

    .line 125
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mUseShellAnimListener:Z

    const-string p1, ""

    .line 127
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mInitPackageName:Ljava/lang/String;

    const/4 p1, 0x3

    .line 130
    iput p1, p0, Lcom/miui/home/recents/anim/WindowElement;->CORRECT_NUM_MAX:I

    .line 132
    new-instance p1, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mNotHandleAnimRunnable:Ljava/lang/Runnable;

    .line 171
    new-instance p1, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mOnUpdateListener:Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

    .line 244
    new-instance p1, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/WindowElement$mRectFSpringAnimListener$1;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mRectFSpringAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 301
    new-instance p1, Lcom/miui/home/recents/anim/WindowElement$mCurrentRectFCalculator$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/WindowElement$mCurrentRectFCalculator$1;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mCurrentRectFCalculator:Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;

    .line 552
    new-instance p1, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mOnShellAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 626
    new-instance p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    .line 627
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->addListener(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 626
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    .line 632
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->init()V

    .line 633
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 634
    new-instance v0, Lcom/miui/home/recents/views/FloatingIconView2;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "it.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " window init isHalf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", floatingIconView = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mAnim = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    new-instance p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {p1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->setMTransformParams(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)V

    .line 973
    new-instance p1, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mCancelSurfaceRunnable:Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 57
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;Z)V

    return-void
.end method

.method public static final synthetic access$getAllowEndListener$p(Lcom/miui/home/recents/anim/WindowElement;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->allowEndListener:Z

    return p0
.end method

.method public static final synthetic access$getMOnShellAnimListener$p(Lcom/miui/home/recents/anim/WindowElement;)Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mOnShellAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$hideTaskViewByQuickSwitch(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowElement;->hideTaskViewByQuickSwitch()V

    return-void
.end method

.method public static final synthetic access$notifyStateManagerEndAndReleaseSelf(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->notifyStateManagerEndAndReleaseSelf(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public static final synthetic access$setScenarioState(Lcom/miui/home/recents/anim/WindowElement;Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->setScenarioState(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    return-void
.end method

.method public static synthetic cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x0

    if-eqz p2, :cond_1

    move-object v3, p7

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v4, p7

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v5, p7

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 920
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim(Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancelAnim"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final cancelAnim$lambda-12(Lcom/miui/home/recents/anim/WindowElement;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 956
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->isWaitViewDrawCommitWhenAppToRecentAnimEnd:Z

    .line 957
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v1, :cond_0

    .line 958
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 959
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    .line 957
    invoke-virtual {v1, v2, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 961
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition(ZZ)V

    if-eqz p2, :cond_1

    .line 962
    invoke-interface {p2}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    :cond_1
    return-void
.end method

.method public static synthetic cancelSurfaceAnimOnly$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V
    .locals 7

    if-nez p8, :cond_5

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x0

    if-eqz p2, :cond_1

    move-object v3, p8

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move-object v4, p8

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    move-object v5, p8

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    move-object v6, p8

    goto :goto_3

    :cond_4
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move-object v1, p1

    .line 997
    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/recents/anim/WindowElement;->cancelSurfaceAnimOnly(Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancelSurfaceAnimOnly"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final checkVerticalClip()Ljava/lang/Boolean;
    .locals 7

    .line 345
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v2, :cond_1

    .line 346
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/miui/home/recents/anim/WindowElement$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_2
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 377
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->lastOpenFromHomeIsVerticalClip:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    return-object v0

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getCurrentDisplayRotation()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->getHomeRotation()I

    move-result p0

    if-ne v0, p0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 359
    :cond_7
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v0, :cond_c

    .line 360
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowElement;->isCurrentDisplayRotation0()Z

    move-result v2

    .line 361
    iget-object v5, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 362
    :cond_8
    iget-object v5, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/RectFParams;->getStartRect()Landroid/graphics/RectF;

    move-result-object v5

    if-nez v5, :cond_b

    :cond_9
    sget-object v5, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    .line 363
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->getHomeRotation()I

    move-result p0

    goto :goto_4

    :cond_a
    move p0, v4

    .line 362
    :goto_4
    invoke-virtual {v5, p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getScreenRectF(I)Landroid/graphics/RectF;

    move-result-object v5

    .line 359
    :cond_b
    invoke-virtual {v0, v2, v1, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->shouldVerticalClip(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    if-ne p0, v3, :cond_c

    goto :goto_5

    :cond_c
    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 351
    :cond_d
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v0, :cond_10

    .line 352
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowElement;->isCurrentDisplayRotation0()Z

    move-result v2

    .line 353
    iget-object v5, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/RectFParams;->getStartRect()Landroid/graphics/RectF;

    move-result-object v5

    goto :goto_6

    :cond_e
    move-object v5, v1

    .line 354
    :goto_6
    iget-object v6, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 351
    :cond_f
    invoke-virtual {v0, v2, v5, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->shouldVerticalClip(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-ne v0, v3, :cond_10

    goto :goto_7

    :cond_10
    move v3, v4

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->lastOpenFromHomeIsVerticalClip:Ljava/lang/Boolean;

    return-object v0
.end method

.method private final correctTargetView(Lcom/miui/home/recents/anim/RectFParams;)Z
    .locals 9

    .line 1955
    iget v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mCorrectNum:I

    iget v1, p0, Lcom/miui/home/recents/anim/WindowElement;->CORRECT_NUM_MAX:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 1959
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mIsInDrawerApps:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mInitPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1963
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/miui/home/launcher/ShortcutIcon;

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v0

    .line 1965
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    .line 1970
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/miui/home/recents/anim/WindowElement;->mInitPackageName:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1971
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-nez v3, :cond_6

    return v1

    .line 1972
    :cond_6
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    if-eqz v3, :cond_7

    const v4, 0x7f0a00de

    .line 1974
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    goto :goto_3

    :cond_7
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_8

    .line 1975
    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    goto :goto_4

    :cond_8
    move-object v3, v0

    :goto_4
    if-eqz v3, :cond_9

    .line 1976
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    goto :goto_5

    :cond_9
    move v4, v2

    :goto_5
    move v5, v2

    :goto_6
    if-ge v5, v4, :cond_f

    if-eqz v3, :cond_a

    .line 1977
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    goto :goto_7

    :cond_a
    move-object v6, v0

    :goto_7
    if-eqz v6, :cond_b

    .line 1978
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_8

    :cond_b
    move-object v7, v0

    :goto_8
    instance-of v7, v7, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v7, :cond_e

    .line 1979
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lcom/miui/home/launcher/ShortcutIcon;

    .line 1980
    invoke-virtual {v7}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1981
    iget-object v8, p0, Lcom/miui/home/recents/anim/WindowElement;->mInitPackageName:Ljava/lang/String;

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-nez p1, :cond_c

    goto :goto_9

    .line 1982
    :cond_c
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/RectFParams;->setTargetView(Landroid/view/View;)V

    .line 1983
    :goto_9
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    if-eqz p1, :cond_d

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->updateDescendantRef(Landroid/view/View;)V

    :cond_d
    return v1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1988
    :cond_f
    iget p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mCorrectNum:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mCorrectNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 1993
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v0, "Failed to correctDescendantRef"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_a
    return v1
.end method

.method public static synthetic finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 594
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition(ZZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: finishTransition"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final finishTransition$lambda-4(Lcom/miui/home/recents/anim/WindowElement;ZZ)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->setAnimEndEnable()V

    .line 599
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isRecentTransitionRequested()Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    xor-int/lit8 v0, p1, 0x1

    .line 600
    invoke-static {v0}, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->unSetPauseAdvanced(Z)V

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getRunningTaskId()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 603
    :goto_1
    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 604
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mShellTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    if-nez v2, :cond_3

    .line 605
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz v1, :cond_5

    .line 608
    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowElement;->isHalf:Z

    .line 605
    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->finishTransition(ZZZI)V

    goto :goto_2

    .line 612
    :cond_3
    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz p2, :cond_4

    .line 614
    iget-boolean v4, p0, Lcom/miui/home/recents/anim/WindowElement;->isHalf:Z

    .line 612
    invoke-virtual {p2, p1, v4, v0, v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->finishRemoteTransitionForCallback(ZZILcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    .line 618
    :cond_4
    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mShellTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    .line 620
    :cond_5
    :goto_2
    iput-boolean v3, p0, Lcom/miui/home/recents/anim/WindowElement;->hasRecentTransition:Z

    return-void
.end method

.method public static synthetic forceStop$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 805
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/WindowElement;->forceStop(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: forceStop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final forceStop$lambda-11(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$weakFinishCallBack"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_0

    return-void

    .line 814
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    .line 815
    iget-object p1, p1, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceStop shellTransitionCallback callback forceStop toHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", callback="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 818
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private final getActivityOptions(Landroid/view/View;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .locals 9

    const/4 v0, 0x0

    .line 1255
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/anim/WindowElement;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v1

    .line 1256
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->startOpenBlock()V

    .line 1257
    invoke-static {p1}, Lcom/miui/home/recents/TaskViewUtils;->getSoscLaunchPosition(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/anim/WindowElement;->launchPosition:I

    .line 1258
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    .line 1260
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->getIconRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->iconLoc:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x15e

    :goto_0
    move-wide v5, v1

    goto :goto_1

    .line 1265
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xe6

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x258

    goto :goto_0

    :goto_1
    const/16 p1, 0x78

    int-to-long v1, p1

    sub-long v1, v5, v1

    const/16 p1, 0x60

    int-to-long v3, p1

    sub-long/2addr v1, v3

    .line 1268
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportBarFollow()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x0

    :cond_2
    move-wide v7, v1

    .line 1270
    new-instance p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    .line 1273
    new-instance v1, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->getOpenRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v0

    :cond_4
    :goto_2
    invoke-direct {v1, p2}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Landroid/window/RemoteTransition;)V

    .line 1271
    invoke-static {p1, v1}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)Landroid/app/ActivityOptions;

    move-result-object p0

    const-string p1, "activityOptions"

    .line 1276
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method static synthetic getActivityOptions$default(Lcom/miui/home/recents/anim/WindowElement;Landroid/view/View;Landroid/window/RemoteTransition;ILjava/lang/Object;)Landroid/app/ActivityOptions;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1254
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->getActivityOptions(Landroid/view/View;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getActivityOptions"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getPairRemoteTransition()Landroid/window/RemoteTransition;
    .locals 0

    .line 1280
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->getPairRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getTaskViewRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getCurrentDisplayRotation()I

    move-result v0

    .line 401
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->getHomeRotation()I

    move-result p0

    .line 399
    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const-string p1, "transformCoordinate2(\n  \u2026      rectF\n            )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method private final handleQuickSwitchCloseToHomeTaskView(Landroid/graphics/RectF;FF)V
    .locals 2

    .line 518
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/recents/anim/WindowElement;Landroid/graphics/RectF;FF)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final handleQuickSwitchCloseToHomeTaskView$lambda-3(Lcom/miui/home/recents/anim/WindowElement;Landroid/graphics/RectF;FF)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowElement;->isQuickSwitchCloseToHome()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    sget-object v0, Lcom/miui/home/recents/anim/TaskViewsElement;->Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;->getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->getQuickModeTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->taskViewClipHelper:Lcom/miui/home/recents/util/TaskViewClipHelper;

    if-nez v1, :cond_1

    .line 522
    new-instance v1, Lcom/miui/home/recents/util/TaskViewClipHelper;

    invoke-direct {v1}, Lcom/miui/home/recents/util/TaskViewClipHelper;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->taskViewClipHelper:Lcom/miui/home/recents/util/TaskViewClipHelper;

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->taskViewClipHelper:Lcom/miui/home/recents/util/TaskViewClipHelper;

    if-eqz v1, :cond_3

    .line 529
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->isCloseAppToDefaultCenter()Z

    move-result p0

    if-ne p0, v2, :cond_2

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 524
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/TaskViewClipHelper;->updateTaskViewFromQuickSwitchCloseToHome(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;FFZ)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    .line 531
    :goto_1
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/TaskView;->update(Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;)V

    .line 535
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p0

    .line 536
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    :cond_4
    return-void
.end method

.method private final hasShared()Z
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->notifyPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_3

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/miui/home/recents/FloatingIconInterface;->isDrawIcon()Z

    move-result p0

    if-ne p0, v2, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :cond_5
    :goto_3
    return v2
.end method

.method private final hideTaskViewByQuickSwitch()V
    .locals 2

    .line 1937
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final hideTaskViewByQuickSwitch$lambda-20(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1938
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowElement;->isQuickSwitchCloseToHome()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1939
    sget-object p0, Lcom/miui/home/recents/anim/TaskViewsElement;->Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;->getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->finishHideTaskView()V

    :cond_1
    return-void
.end method

.method private static final injectRecentTransition$lambda-13(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->screenshotForMultiWindow(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1144
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mNeedRunningBitmap:Z

    if-eqz v1, :cond_0

    .line 1145
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningBitmap:Landroid/graphics/Bitmap;

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " screenshotTask injectRecentTransition taskId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningTaskId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", bitmap="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final isCloseAnim(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)Z
    .locals 0

    .line 869
    sget-object p0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p1, p0, :cond_1

    .line 870
    sget-object p0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p1, p0, :cond_1

    .line 871
    sget-object p0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p1, p0, :cond_1

    .line 872
    sget-object p0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME_CENTER:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, p0, :cond_0

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

.method private final isCurrentDisplayRotation0()Z
    .locals 1

    .line 381
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 382
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->getCurrentDisplayRotation()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final isQuickSwitchCloseToHome()Z
    .locals 3

    .line 1933
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private static final mNotHandleAnimRunnable$lambda-0(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v1, "anim has no element execute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 134
    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    return-void
.end method

.method private static final mOnUpdateListener$lambda-1(Lcom/miui/home/recents/anim/WindowElement;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p4

    const-string v1, "this$0"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "currentRect"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "valueCallBack"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v1, v8, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update currentRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " currentAlpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", currentRadius = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", currentRectFParams?.showTask = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v5, v8, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/RectFParams;->getShowTask()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 174
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ,animType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v5, v8, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v5

    .line 174
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ,finishSurface="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-boolean v5, v8, Lcom/miui/home/recents/anim/WindowElement;->mFinishSurface:Z

    .line 174
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p2}, Lcom/miui/home/recents/anim/WindowElement;->updateTaskView(Landroid/graphics/RectF;F)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->hasValidSurface()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_2

    iget-object v1, v8, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v1

    if-ne v1, v5, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v8, v1}, Lcom/miui/home/recents/anim/WindowElement;->isHomeGestureQuickSwitch(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 181
    iget-object v1, v8, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    sget-object v7, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v1, v7, :cond_b

    iget-boolean v1, v8, Lcom/miui/home/recents/anim/WindowElement;->mFinishSurface:Z

    if-ne v1, v5, :cond_b

    .line 182
    :cond_2
    invoke-virtual {v8, v0}, Lcom/miui/home/recents/anim/WindowElement;->mapAlpha(F)F

    move-result v1

    .line 183
    iget-object v0, v8, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "targetAlpha = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, v8, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v0

    if-ne v0, v5, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_8

    .line 185
    iget-object v10, v8, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz v10, :cond_7

    .line 186
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIconRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    .line 190
    iget-object v0, v8, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v7, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v7, :cond_4

    move v15, v5

    goto :goto_3

    :cond_4
    move v15, v2

    .line 191
    :goto_3
    iget-object v0, v8, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v7, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v7, :cond_5

    move/from16 v16, v5

    goto :goto_4

    :cond_5
    move/from16 v16, v2

    .line 192
    :goto_4
    iget-object v0, v8, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    if-eq v0, v7, :cond_6

    move/from16 v17, v5

    goto :goto_5

    :cond_6
    move/from16 v17, v2

    :goto_5
    move/from16 v13, p2

    move/from16 v14, p3

    .line 185
    invoke-interface/range {v10 .. v17}, Lcom/miui/home/recents/FloatingIconInterface;->update(Landroid/graphics/RectF;FFFZZZ)V

    .line 195
    :cond_7
    invoke-virtual {v8, v1}, Lcom/miui/home/recents/anim/WindowElement;->updateLauncherTargetView(F)V

    .line 197
    :cond_8
    iget-object v0, v8, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, v1}, Lcom/miui/home/recents/FloatingIconInterface;->setSurfaceAlpha(F)V

    .line 200
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/recents/anim/WindowElement;->getSurfaceRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v5, 0x1

    .line 204
    iget-object v0, v8, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object v6, v0

    .line 205
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/recents/anim/WindowElement;->getSurfaceRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, p2

    .line 198
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/recents/anim/WindowElement;->updateElementValue(FLandroid/graphics/RectF;FFZLandroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 206
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/recents/anim/WindowElement;->getSurfaceRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/home/recents/anim/WindowElement;->updateCurRecet(Landroid/graphics/RectF;)V

    :cond_b
    return-void
.end method

.method private final map(FFFFFZ)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    sub-float p0, p5, p4

    mul-float/2addr p1, p0

    add-float/2addr p1, p4

    if-eqz p6, :cond_0

    .line 140
    invoke-static {p1, p4, p5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    :cond_0
    return p1
.end method

.method private final notifyStateManagerEndAndReleaseSelf(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 1921
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->stateManagerListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 1922
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1923
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    return-void
.end method

.method private static final onAnimCancelByShellFinishedExecute$lambda-10(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onAnimCancelByShellFinished"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    .line 724
    invoke-static/range {v1 .. v6}, Lcom/miui/home/recents/anim/WindowElement;->forceStop$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic onClosingWindowTransitionExecute$default(Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;ZILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 672
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/anim/WindowElement;->onClosingWindowTransitionExecute([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onClosingWindowTransitionExecute"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final onClosingWindowTransitionExecute$lambda-8(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$targets"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$nonApps"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    .line 676
    iget-object v1, v0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v2, "onClosingWindowTransitionStart end,already canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {v0, v4, v3, v5, v6}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    return-void

    .line 680
    :cond_0
    iget-object v7, v0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v8, "MAIN_THREAD:onClosingWindowTransitionStart "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget-object v7, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    iget-object v8, v0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    move-object/from16 v9, p4

    invoke-virtual {v7, v1, v2, v9, v8}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getClosingAnimParams([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Landroid/view/View;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 682
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v6

    :goto_0
    if-nez v2, :cond_2

    .line 683
    invoke-static {v0, v4, v3, v5, v6}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishTransition, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClosingWindowTransitionExecute"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v10

    .line 686
    sget-object v1, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v12

    .line 687
    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v16

    .line 688
    sget-object v14, Lcom/miui/home/recents/anim/StateType;->STATE_IDLE:Lcom/miui/home/recents/anim/StateType;

    .line 685
    new-instance v1, Lcom/miui/home/recents/anim/AllElementParams;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2ab

    const/16 v19, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v19}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1, v6, v5, v6}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReady$default(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;ILjava/lang/Object;)V

    goto :goto_1

    .line 690
    :cond_2
    iget-object v0, v0, Lcom/miui/home/recents/anim/WindowElement;->mNotHandleAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/AllElementParams;->setWindowEmptyRunnable(Ljava/lang/Runnable;)V

    .line 691
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-static {v0, v1, v6, v5, v6}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReady$default(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static final onPairTaskOpeningWindowTransitionExecute$lambda-9(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$wallpapers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nonApps"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 702
    iget-object p0, p1, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string p2, "onPairTaskOpeningWindowTransitionStart end,already canceled"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 703
    invoke-static {p1, p3, p3, p0, p2}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 704
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "finishTransition, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPairTaskOpeningWindowTransitionExecute"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 707
    :cond_0
    iget-object p0, p1, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v0, "MAIN_THREAD:onPairTaskOpeningWindowTransitionStart"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 711
    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/home/recents/anim/WindowElement;->launchSecondSplit([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    .line 713
    :cond_1
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->LaunchPairForSosc([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    :goto_0
    return-void
.end method

.method private static final openingWindowTransitionStart$lambda-18(Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v1, "MAIN_THREAD:onOpeningWindowTransitionStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->refreshTransitionCallbackHelper([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p2

    .line 1720
    invoke-virtual {p2, p3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->setAppTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1721
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->startRemoteAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    return-void
.end method

.method private static final resetFloatingIcon$lambda-15(Lcom/miui/home/recents/anim/WindowElement;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz v1, :cond_1

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.anim.LaunchAppAndBackHomeAnimTarget"

    .line 1318
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-interface {v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->showIcon()V

    .line 1320
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/miui/home/recents/FloatingIconInterface;->recycle(Z)V

    :cond_2
    return-void
.end method

.method private final resetLauncherPropertyIfNeeded(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 1

    .line 1761
    sget-object p0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    .line 1762
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/ResetLauncherPropertyEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/event/ResetLauncherPropertyEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_1
    return-void
.end method

.method private final setScenarioState(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 326
    :cond_0
    sget-object p0, Lcom/miui/home/recents/anim/WindowElement$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_0
    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    .line 328
    sget-object p0, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x104

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    :cond_1
    return-void
.end method

.method private final setSmallWindowSyncTransactionApplierIfNeeded()V
    .locals 3

    .line 1809
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isInHoldState()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 1810
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->getSyncTransactionApplier()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1812
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p0

    .line 1813
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    .line 1812
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    :cond_2
    return-void
.end method

.method private static final startRemoteAnimation$lambda-7()V
    .locals 1

    .line 663
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->stopOpenBlock()V

    return-void
.end method

.method private static final strokeSwitch$lambda-19()V
    .locals 1

    .line 1782
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->finish()V

    return-void
.end method

.method private final updateCurrentDisplayRotation(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 0

    .line 1310
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1311
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/anim/RectFParams;->setCurrentDisplayRotation(I)V

    :cond_0
    return-void
.end method

.method private final updateSmallWindow(FLandroid/graphics/RectF;F)V
    .locals 0

    .line 1542
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/SmallWindowCrop;->updateParams(FLandroid/graphics/RectF;F)V

    :cond_0
    return-void
.end method

.method private final updateTransformParams(Landroid/graphics/Rect;Landroid/graphics/RectF;F)F
    .locals 4

    .line 1793
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual {v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isExitInHold()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 1795
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getScaleBySmallWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;)F

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    .line 1798
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 1799
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    .line 1800
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 1801
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    iget-boolean v3, v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    .line 1797
    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/home/recents/util/RectUtil;->calculateRadiusScale(FFFFZ)F

    move-result p1

    :goto_2
    mul-float/2addr p3, p1

    .line 1804
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    return p3
.end method


# virtual methods
.method public final LaunchPairForSosc([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 3

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    sget-object v0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentLaunchPairAnimParams([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 789
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 790
    invoke-static {p0, p1, p1, v2, v0}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 791
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "finishTransition, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 791
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LaunchPairForSosc"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 795
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->isSplitAnim:Z

    .line 796
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mNotHandleAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/anim/AllElementParams;->setWindowEmptyRunnable(Ljava/lang/Runnable;)V

    .line 797
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    invoke-static {p0, p1, v0, v2, v0}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReady$default(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public addListener(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1564
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mRectFSpringAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    return-void
.end method

.method public final animClear(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1335
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/WindowElement;->initTargetView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1337
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getClearLastListener()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1338
    iput-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mUserAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    .line 1341
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v1

    if-nez v1, :cond_2

    move v4, v3

    :cond_2
    if-eqz v4, :cond_3

    .line 1342
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnimWithoutEndListener()V

    .line 1343
    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 1345
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getNeedFinishOnAnimEnd()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1346
    iput-boolean v3, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    .line 1349
    :cond_4
    iput-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    .line 1350
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    sget-object v4, Lcom/miui/home/recents/anim/WindowElement$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x7

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v0, 0x4

    if-eq v1, v0, :cond_5

    goto :goto_0

    .line 1365
    :cond_5
    new-instance v0, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    sget-object v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->getMRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    goto :goto_0

    .line 1352
    :cond_6
    iput-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->notifyPackage:Ljava/lang/String;

    .line 1353
    new-instance v1, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    goto :goto_0

    .line 1361
    :cond_7
    iput-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->notifyPackage:Ljava/lang/String;

    goto :goto_0

    .line 1357
    :cond_8
    iput-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->notifyPackage:Ljava/lang/String;

    .line 1358
    new-instance v1, Lcom/miui/home/recents/anim/CloseToRecentWindowElementOffsetHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/home/recents/anim/CloseToRecentWindowElementOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    .line 1369
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1370
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mUserAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    .line 1371
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1372
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-interface {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    :cond_9
    return-void
.end method

.method public final animResetReady(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "params"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1387
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetApps()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1388
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetApps()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 1390
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getStartRect()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_6

    .line 1391
    iget-object v1, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_2

    .line 1392
    :cond_1
    iget-object v1, v0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/miui/home/recents/anim/WindowElement;->isHalf:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 1395
    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    .line 1396
    sget-object v5, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    .line 1397
    iget-object v6, v0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 1398
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getRunningTaskId()I

    move-result v7

    .line 1396
    invoke-virtual {v5, v6, v7, v4}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getWindowTargetBoundsForStartRect(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;IZ)Landroid/graphics/Rect;

    move-result-object v5

    .line 1395
    invoke-direct {v1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1402
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getCurrentDisplayRotation()I

    move-result v5

    invoke-static {v5, v3, v1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0

    .line 1393
    :cond_3
    :goto_1
    sget-object v1, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getHomeRotation()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getScreenRectF(I)Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0

    .line 1405
    :goto_2
    iget-object v1, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RectFParams;->getEndRadius()F

    move-result v1

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v1

    int-to-float v1, v1

    :goto_3
    move v8, v1

    .line 1406
    iget-object v1, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RectFParams;->getEndAlpha()F

    move-result v1

    goto :goto_4

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_4
    move v10, v1

    .line 1407
    iget-object v5, v0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndRadius()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndAlpha()F

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    goto :goto_5

    .line 1409
    :cond_6
    iget-object v12, v0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getStartRect()Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getStartRadius()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndRadius()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getStartAlpha()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndAlpha()F

    move-result v18

    invoke-virtual/range {v12 .. v18}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 1411
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    sget-object v5, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v1, v5, :cond_8

    .line 1412
    iget-object v6, v0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x3a860000    # -4000.0f

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFFF)V

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v1

    .line 1414
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    if-eqz v5, :cond_7

    sget-object v6, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v5

    goto :goto_6

    :cond_7
    move v5, v4

    .line 1413
    :goto_6
    iput-boolean v5, v1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 1416
    :cond_8
    iget-object v1, v0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animResetReady, reset mAnim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getAnimParamsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->updateAnimTypeForNavStub(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 1418
    iget-object v1, v0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 1419
    iget-object v1, v0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v0, v0, Lcom/miui/home/recents/anim/WindowElement;->launchPosition:I

    if-eq v0, v4, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIsSplitLaunchAnimation(Z)V

    return-void
.end method

.method public animTo(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.RectFParams"

    .line 1436
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/RectFParams;

    .line 1437
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animTo, params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRunning()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1438
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->updateCurrentDisplayRotation(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1439
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->checkTypeValid(Lcom/miui/home/recents/anim/RectFParams;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1442
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->initShortcutData(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1443
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->changeLayers(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1444
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->animClear(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1445
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->getPendingIconViewWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1446
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1447
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->setPendingIconViewWeakRef(Ljava/lang/ref/WeakReference;)V

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1451
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->runningAnimUpdate(Lcom/miui/home/recents/anim/RectFParams;)V

    goto :goto_0

    .line 1453
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->animResetReady(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1454
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mOnUpdateListener:Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1455
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mCurrentRectFCalculator:Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setCurrentRectCalculator(Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;)V

    .line 1456
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->addListener(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 1457
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 1458
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->isHomeGestureQuickSwitch(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1459
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    .line 1462
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->undateCurrentRect(Lcom/miui/home/recents/anim/RectFParams;)V

    return-void
.end method

.method public final cancelAnim(Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 4

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 924
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mCanceled:Z

    .line 925
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mNativeHyperRemoteTransition:Lcom/miui/home/recents/anim/HyperRemoteTransition;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/HyperRemoteTransition;->setCancel(Z)V

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMNativeWindowTransitionCompatListener()Lcom/miui/home/recents/anim/WindowTransitionCompatListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->setCancel(Z)V

    const/4 v1, 0x0

    .line 927
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    if-eqz p3, :cond_1

    .line 929
    iput-object p3, p0, Lcom/miui/home/recents/anim/WindowElement;->mShellTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    .line 932
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mUseShellAnimListener:Z

    .line 933
    iget-object p3, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cancelAnim, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p3, p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isStart()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 935
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel(Z)V

    goto :goto_0

    .line 937
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    :goto_0
    const/4 p1, 0x0

    if-nez p4, :cond_6

    .line 941
    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, p1

    .line 943
    :goto_1
    sget-object p3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p2, p3, :cond_5

    sget-object p3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p2, p3, :cond_5

    .line 944
    sget-object p3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p2, p3, :cond_5

    sget-object p3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p2, p3, :cond_5

    .line 945
    sget-object p3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_WORLD_CIRCLE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p2, p3, :cond_5

    sget-object p3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_SMALL_WINDOW:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p2, p3, :cond_5

    .line 946
    sget-object p3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_SMALL_WINDOW_ROTATE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p2, p3, :cond_4

    goto :goto_2

    :cond_4
    move p2, v1

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v0

    goto :goto_3

    .line 949
    :cond_6
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 952
    :goto_3
    iget-object p3, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p3

    sget-object p4, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p3, p4, :cond_8

    .line 953
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->isWaitViewDrawCommitWhenAppToRecentAnimEnd:Z

    .line 955
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    :cond_7
    new-instance p3, Lcom/android/systemui/shared/recents/system/TimeOutTask;

    sget-object p4, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 954
    new-instance v0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p5}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda9;-><init>(Lcom/miui/home/recents/anim/WindowElement;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    .line 955
    invoke-direct {p3, p4, v0}, Lcom/android/systemui/shared/recents/system/TimeOutTask;-><init>(Lcom/miui/home/library/utils/LooperExecutor;Ljava/lang/Runnable;)V

    .line 954
    invoke-static {p1, p3}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->execRunnableWhenViewTransactionCommit(Landroid/view/View;Lcom/android/systemui/shared/recents/system/TimeOutTask;)V

    goto :goto_4

    :cond_8
    const/4 p3, 0x2

    .line 966
    invoke-static {p0, p2, v1, p3, p1}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    if-eqz p5, :cond_9

    .line 967
    invoke-interface {p5}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    .line 969
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->clearRunningBitmap()V

    .line 970
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "finishTransition, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cancelAnim"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final cancelAnimWithoutEndAndEndListener()V
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v1, "TransitionTest cancelAnimWithoutEndAndEndListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1054
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->allowEndListener:Z

    .line 1055
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancelWithoutEnd()V

    :cond_0
    return-void
.end method

.method public final cancelAnimWithoutEndListener()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v1, "TransitionTest cancelAnimWithoutEndListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1046
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->allowEndListener:Z

    .line 1047
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel(Z)V

    :cond_0
    return-void
.end method

.method public final cancelSurfaceAnimOnly(Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 1

    const-string p2, "reason"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1002
    iget-boolean p2, p0, Lcom/miui/home/recents/anim/WindowElement;->mSurfaceCanceled:Z

    if-nez p2, :cond_1

    .line 1003
    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->mCancelSurfaceRunnable:Lcom/miui/home/recents/anim/WindowElement$mCancelSurfaceRunnable$1;

    iput-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->mCancelSurfaceTask:Ljava/lang/Runnable;

    .line 1005
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1006
    :goto_0
    new-instance p4, Lcom/android/systemui/shared/recents/system/TimeOutTask;

    sget-object p5, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mCancelSurfaceTask:Ljava/lang/Runnable;

    invoke-direct {p4, p5, v0}, Lcom/android/systemui/shared/recents/system/TimeOutTask;-><init>(Lcom/miui/home/library/utils/LooperExecutor;Ljava/lang/Runnable;)V

    .line 1004
    invoke-static {p2, p4}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->execRunnableWhenViewTransactionCommit(Landroid/view/View;Lcom/android/systemui/shared/recents/system/TimeOutTask;)V

    :cond_1
    const/4 p2, 0x1

    .line 1009
    iput-boolean p2, p0, Lcom/miui/home/recents/anim/WindowElement;->mSurfaceCanceled:Z

    .line 1010
    iput-boolean p2, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    .line 1013
    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 1014
    iget-object p4, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz p4, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p4, p2}, Lcom/miui/home/recents/FloatingIconInterface;->setAppScreenShotBitmap(Landroid/graphics/Bitmap;)V

    .line 1016
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "cancelSurfaceAnimOnly reason= "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", finishSurface="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    iget-boolean p5, p0, Lcom/miui/home/recents/anim/WindowElement;->mFinishSurface:Z

    .line 1016
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, ",  screenshotTaskForU, bitmap="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    iget-object p5, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningBitmap:Landroid/graphics/Bitmap;

    .line 1016
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    .line 1023
    iput-object p3, p0, Lcom/miui/home/recents/anim/WindowElement;->mShellTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    :cond_3
    if-eqz p6, :cond_4

    .line 1026
    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p6}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->setFinishTransitionCallback(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    .line 1030
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "finishTransition, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3}, Ljava/lang/Throwable;-><init>()V

    .line 1030
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "cancelSurfaceAnimOnly"

    invoke-static {p3, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cancelSurfaceAnimOnly, "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final changeLayers(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 1

    const-string p0, "params"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1430
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    .line 1431
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->getReadyToChangeLayer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v0, :cond_0

    .line 1432
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->changeWindowElementLayers()V

    :cond_0
    return-void
.end method

.method public final changeToAboveBlurView()V
    .locals 1

    .line 547
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 548
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/miui/home/recents/FloatingIconInterface;->changeToAboveBlurView(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public final changeToBelowBlurView()V
    .locals 1

    .line 542
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 543
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/miui/home/recents/FloatingIconInterface;->changeToBelowBlurView(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public final checkTypeValid(Lcom/miui/home/recents/anim/RectFParams;)Z
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getNeedFinishOnAnimEnd()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v0, :cond_2

    .line 1327
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string p1, "Illegal Anim Params,Abort."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v2
.end method

.method public final clearRunningBitmap()V
    .locals 2

    .line 1903
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/miui/home/recents/FloatingIconInterface;->setAppScreenShotBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x0

    .line 1904
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mNeedRunningBitmap:Z

    .line 1905
    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final clearSurfaceData()V
    .locals 1

    const/4 v0, 0x0

    .line 1038
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 1039
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-void
.end method

.method public final clickPairTask(Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowElement;->getPairRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object p0

    .line 1175
    invoke-virtual {p1}, Lcom/miui/home/recents/event/PairTaskClickEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/PairTaskClickEventInfo;->getFreezeTaskList()Z

    move-result p1

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/recents/views/TaskView;->onLaunchPairTask(ZLandroid/window/RemoteTransition;)V

    return-void
.end method

.method public finishTransition(ZZ)V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  finishTransition toHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isHalf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowElement;->isHalf:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " runningTaskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RectFParams;->getRunningTaskId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda10;-><init>(Lcom/miui/home/recents/anim/WindowElement;ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final forceStop(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 8

    const-string v1, "reason"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceStop toHome="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", finishCallBack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 810
    new-instance v3, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p0, p2, p1}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/Boolean;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 822
    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 824
    :goto_0
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/StateManager;->cancelOldList(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 826
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    return-void
.end method

.method public final getAnim()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 1554
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method public final getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    return-object p0
.end method

.method public final getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-object p0
.end method

.method public final getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    return-object p0
.end method

.method public final getFloatingIconRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    new-instance v0, Landroid/graphics/RectF;

    .line 389
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RectFParams;->getHomeRotation()I

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->getRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 388
    :cond_0
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public final getIconRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 1243
    instance-of p0, p1, Lcom/miui/home/launcher/LauncherAble;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/LauncherAble;

    invoke-interface {p1}, Lcom/miui/home/launcher/LauncherAble;->getIconLocation()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    .line 1244
    :cond_0
    instance-of p0, p1, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz p0, :cond_1

    .line 1245
    check-cast p1, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    .line 1248
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final getLauncherTargetView()Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    return-object p0
.end method

.method public final getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method public final getMCanceled()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mCanceled:Z

    return p0
.end method

.method public final getMCurrentRectFCalculator()Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mCurrentRectFCalculator:Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;

    return-object p0
.end method

.method public final getMDisableStateManagerListener()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    return p0
.end method

.method public final getMDuringMerge()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mDuringMerge:Z

    return p0
.end method

.method public final getMEndWaitingMerge()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mEndWaitingMerge:Z

    return p0
.end method

.method public final getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mFastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    return-object p0
.end method

.method public final getMFinishSurface()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mFinishSurface:Z

    return p0
.end method

.method public final getMHandler()Landroid/os/Handler;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getMNativeHyperRemoteTransition()Lcom/miui/home/recents/anim/HyperRemoteTransition;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mNativeHyperRemoteTransition:Lcom/miui/home/recents/anim/HyperRemoteTransition;

    return-object p0
.end method

.method public final getMNativeWindowTransitionCompatListener()Lcom/miui/home/recents/anim/WindowTransitionCompatListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mNativeWindowTransitionCompatListener:Lcom/miui/home/recents/anim/WindowTransitionCompatListener;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mNativeWindowTransitionCompatListener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMNeedRunningBitmap()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mNeedRunningBitmap:Z

    return p0
.end method

.method public final getMNotHandleAnimRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mNotHandleAnimRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getMOpeningRectFParams()Lcom/miui/home/recents/anim/RectFParams;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mOpeningRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-object p0
.end method

.method public final getMRectFSpringAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mRectFSpringAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    return-object p0
.end method

.method public final getMRunningTaskId()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningTaskId:I

    return p0
.end method

.method public final getMSurfaceCanceled()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mSurfaceCanceled:Z

    return p0
.end method

.method public final getMSurfaceCanceledExecute()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mSurfaceCanceledExecute:Z

    return p0
.end method

.method public final getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mTransformParams"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMUseShellAnimListener()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mUseShellAnimListener:Z

    return p0
.end method

.method public final getMUserAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mUserAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    return-object p0
.end method

.method public final getNotifyPackage()Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->notifyPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getRemoteAnimationTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-object p0
.end method

.method public final getRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 410
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->getCurrentDisplayRotation()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const-string p1, "{\n            Coordinate\u2026otation, rectF)\n        }"

    .line 409
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-static {v0, v0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const-string p1, "{\n            Coordinate\u2026ATION_0, rectF)\n        }"

    .line 411
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public getSourceStackBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1577
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getStateManagerListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->stateManagerListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    return-object p0
.end method

.method public final getSurfaceRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v0, :cond_1

    .line 212
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getCurrentDisplayRotation()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getHomeRotation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v1, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getHomeRotation()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->getCurrentDisplayRotation()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const-string p1, "{\n            // \u6298\u53e0\u5c4f\u5185\u5c4f\u6a2a\u5c4f\u2026otation, rectF)\n        }"

    .line 214
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->getRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getWindowTransitionCompat()Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    return-object p0
.end method

.method public handleFloatingIconViewWhenNewTargetViewNull(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    const-string p2, "params"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1503
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string p2, "handleFloatingIconViewWhenNewTargetViewNull, reset"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1504
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    return-void
.end method

.method public handleFloatingIconViewWhenNotHomeAnimTarget(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1507
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v0, "handleFloatingIconViewWhenNotHomeAnimTarget, reset"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1508
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    return-void
.end method

.method public final hasMainTransition()Z
    .locals 2

    .line 1757
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->hasMainCallback()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final hasMergeCallback()Z
    .locals 2

    .line 830
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->hasMergeCallback()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public hasRecentInit()Z
    .locals 3

    .line 1162
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasRecentInit isRecentTransitionRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isRecentTransitionRequested()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isRecentTransitionRequested()Z

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public hasRecentTransition()Z
    .locals 0

    .line 1153
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->hasRecentTransition:Z

    return p0
.end method

.method public hasValidSurface()Z
    .locals 0

    .line 901
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final init()V
    .locals 3

    .line 1581
    new-instance v0, Lcom/miui/home/recents/anim/WindowElement$init$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/WindowElement$init$1;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->setMNativeWindowTransitionCompatListener(Lcom/miui/home/recents/anim/WindowTransitionCompatListener;)V

    .line 1711
    new-instance v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMNativeWindowTransitionCompatListener()Lcom/miui/home/recents/anim/WindowTransitionCompatListener;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;-><init>(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    .line 1712
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  window init mNativeWindowTransitionCompatListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMNativeWindowTransitionCompatListener()Lcom/miui/home/recents/anim/WindowTransitionCompatListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", windowTransitionCompat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final initFloatingIconIfNeeded(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/WindowElement;->isUpdate(Lcom/miui/home/recents/anim/RectFParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1529
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz p0, :cond_2

    .line 1531
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.miui.home.launcher.anim.LaunchAppAndBackHomeAnimTarget"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 1532
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p2

    sget-object v3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1529
    :goto_1
    invoke-interface {p0, p1, v0, v1}, Lcom/miui/home/recents/FloatingIconInterface;->init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)V

    :cond_2
    return-void
.end method

.method public final initShortcutData(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1945
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v1, v2, :cond_1

    return-void

    .line 1948
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mIsInDrawerApps:Z

    .line 1950
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1949
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mInitPackageName:Ljava/lang/String;

    .line 1951
    iput v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mCorrectNum:I

    return-void
.end method

.method public final initTargetView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->updateFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1468
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    return-void
.end method

.method public injectOpenWidgetFromElementTransition(Lcom/miui/home/recents/event/OpenWidgetFromElementTransitionInfo;)V
    .locals 8

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz v1, :cond_0

    .line 1121
    invoke-virtual {p1}, Lcom/miui/home/recents/event/OpenWidgetFromElementTransitionInfo;->getToken()Landroid/os/IBinder;

    move-result-object v2

    .line 1122
    invoke-virtual {p1}, Lcom/miui/home/recents/event/OpenWidgetFromElementTransitionInfo;->getInfo()Landroid/window/TransitionInfo;

    move-result-object v3

    .line 1123
    invoke-virtual {p1}, Lcom/miui/home/recents/event/OpenWidgetFromElementTransitionInfo;->getT()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 1124
    invoke-virtual {p1}, Lcom/miui/home/recents/event/OpenWidgetFromElementTransitionInfo;->getFinishCallback()Landroid/window/IRemoteTransitionFinishedCallback;

    move-result-object v5

    .line 1125
    invoke-virtual {p1}, Lcom/miui/home/recents/event/OpenWidgetFromElementTransitionInfo;->isMerge()Z

    move-result v6

    .line 1126
    invoke-virtual {p1}, Lcom/miui/home/recents/event/OpenWidgetFromElementTransitionInfo;->getMergeTarget()Landroid/os/IBinder;

    move-result-object v7

    .line 1120
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->wrapOpenWidgetFromAssistantTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;ZLandroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public injectRecentTransition(Lcom/miui/home/recents/event/RecentTransitionInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " injectRecentTransition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-virtual {p1}, Lcom/miui/home/recents/event/RecentTransitionInfo;->getRecentsAnimationListenerImpl()Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->recentAnimationListener:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    .line 1134
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/RecentTransitionInfo;->getController()Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->wrapRecentTransition(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/miui/home/recents/event/RecentTransitionInfo;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1136
    new-instance v0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/RecentTransitionInfo;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-direct {v0, p1, v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_4

    .line 1138
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/recents/event/RecentTransitionInfo;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v0

    .line 1135
    :goto_4
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 1140
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object v1

    :cond_6
    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    const/4 p1, 0x1

    .line 1141
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->hasRecentTransition:Z

    .line 1142
    new-instance p1, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public injectRemoteTransition(Lcom/miui/home/recents/event/RemoteTransitionInfo;)V
    .locals 9

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectRemoteTransition params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz v2, :cond_0

    .line 1109
    invoke-virtual {p1}, Lcom/miui/home/recents/event/RemoteTransitionInfo;->getToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1110
    invoke-virtual {p1}, Lcom/miui/home/recents/event/RemoteTransitionInfo;->getInfo()Landroid/window/TransitionInfo;

    move-result-object v4

    .line 1111
    invoke-virtual {p1}, Lcom/miui/home/recents/event/RemoteTransitionInfo;->getT()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    .line 1112
    invoke-virtual {p1}, Lcom/miui/home/recents/event/RemoteTransitionInfo;->getFinishCallback()Landroid/window/IRemoteTransitionFinishedCallback;

    move-result-object v6

    .line 1113
    invoke-virtual {p1}, Lcom/miui/home/recents/event/RemoteTransitionInfo;->isMerge()Z

    move-result v7

    .line 1114
    invoke-virtual {p1}, Lcom/miui/home/recents/event/RemoteTransitionInfo;->getMergeTarget()Landroid/os/IBinder;

    move-result-object v8

    .line 1108
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->wrapRemoteTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;ZLandroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public final isClosingAnimRunning()Z
    .locals 1

    .line 884
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isClosingToRecentsAnimRunning()Z
    .locals 1

    .line 896
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentAnimLessThanTargetRectApparent()Z
    .locals 7

    .line 1909
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_4

    .line 1910
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    goto :goto_1

    .line 1914
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    .line 1915
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    .line 1916
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCurrentAnimLessThanTargetRectApparent, width scale= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", height scale= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v3, v0

    const-wide v5, 0x3fed70a3d70a3d71L    # 0.92

    cmpg-double p0, v3, v5

    if-gez p0, :cond_3

    float-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpg-double p0, v2, v4

    if-gez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 1911
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v0, "isCurrentAnimLessThanTargetRectApparent, data invalid return false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isFastOpeningAnimRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isFinishCalled()Z
    .locals 2

    .line 1753
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isFinishCalled()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isFinishComplete()Z
    .locals 0

    .line 1749
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mFinishComplete:Z

    return p0
.end method

.method public final isHalf()Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->isHalf:Z

    return p0
.end method

.method public final isHomeGestureQuickSwitch(Z)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1727
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isRecentTransitionRequested()Z

    move-result p0

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public final isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 2

    .line 1284
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    .line 1285
    instance-of v0, p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v0, v1, :cond_0

    .line 1288
    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/TaskViewUtils;->findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOpenAnim()Z
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_1

    .line 864
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_1

    .line 865
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

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

.method public final isOpenAnimRunning()Z
    .locals 1

    .line 892
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isOpenAnim()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOpenFromHomeAnimRunning()Z
    .locals 1

    .line 888
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPairCloseToHomeAnimRunning()Z
    .locals 4

    .line 845
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v3, :cond_2

    .line 847
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final isRecentOpenAnimRunning()Z
    .locals 1

    .line 880
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRecentTransitionRequested()Z
    .locals 2

    .line 1731
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isRecentTransitionRequested()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public isReusefulAnimRunning()Z
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isReusefulAnimRunning hasRecentTransition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowElement;->hasRecentTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRunning() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->hasRecentTransition:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReusefulOpeningAnimRunning()Z
    .locals 1

    .line 859
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isOpenAnim()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->hasValidSurface()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->isHomeGestureQuickSwitch(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final isSameElement(Landroid/view/View;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isSameElement view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " launcherTargetView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mAllowStateManagerListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result p0

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public final isSameElement(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isSameElement view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " launcherTargetView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mAllowStateManagerListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitScreenRunning()Z
    .locals 2

    .line 841
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isOpenAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/anim/WindowElement;->launchPosition:I

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->isSplitAnim:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isUpdate(Lcom/miui/home/recents/anim/RectFParams;)Z
    .locals 0

    const-string p0, "params"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getIgnoreIcon()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWaitFinishMainAnim()Z
    .locals 2

    .line 876
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isWaitFinishMainAnim()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final isWaitViewDrawCommitWhenAppToRecentAnimEnd()Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement;->isWaitViewDrawCommitWhenAppToRecentAnimEnd:Z

    return p0
.end method

.method public final launchPairTask(Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->launchTask(I)V

    :cond_1
    const/4 v0, 0x0

    .line 1181
    invoke-virtual {p1}, Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;->getFreezeTaskList()Z

    move-result p1

    invoke-virtual {v2, p1, v0}, Lcom/miui/home/recents/views/TaskView;->onLaunchPairTask(ZLandroid/window/RemoteTransition;)V

    .line 1182
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->hasRecentTransition()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1183
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    .line 1184
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->notifyStateManagerEndAndReleaseSelf(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 1185
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->clearSurfaceData()V

    :cond_2
    return-void
.end method

.method public final launchSecondSplit([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const-string v1, "targets"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "wallpapers"

    move-object/from16 v12, p2

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nonApps"

    move-object/from16 v13, p3

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v14

    if-nez v14, :cond_0

    return-void

    .line 742
    :cond_0
    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/miui/home/recents/views/RecentsView;

    const/4 v10, 0x0

    .line 743
    invoke-static {v14, v10, v11}, Lcom/miui/home/recents/TaskViewUtils;->findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v9

    .line 744
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v16

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v8, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v1, v9

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v15

    move-object/from16 v19, v9

    move/from16 v9, v17

    move-object v11, v10

    move/from16 v10, v18

    .line 745
    invoke-static/range {v1 .. v10}, Lcom/miui/home/recents/TaskViewUtils;->getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;IIZ)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v17

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object/from16 v1, v19

    move/from16 v2, v16

    .line 750
    invoke-static/range {v1 .. v10}, Lcom/miui/home/recents/TaskViewUtils;->getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;IIZ)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v17, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 760
    :cond_1
    sget-object v3, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    const-string v4, "taskView"

    move-object/from16 v5, v19

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getLaunchSecondSplitTaskAnimParams(Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object v3

    .line 761
    iget-object v4, v0, Lcom/miui/home/recents/anim/WindowElement;->mNotHandleAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/AllElementParams;->setWindowEmptyRunnable(Ljava/lang/Runnable;)V

    .line 762
    sget-object v4, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v4

    invoke-static {v4, v3, v11, v2, v11}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReady$default(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;ILjava/lang/Object;)V

    .line 763
    new-instance v2, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;

    invoke-direct {v2, v15, v14, v0}, Lcom/miui/home/recents/anim/WindowElement$launchSecondSplit$1;-><init>(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/WindowElement;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 780
    invoke-virtual/range {v17 .. v17}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    .line 781
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    return-void

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 756
    invoke-static {v0, v1, v1, v2, v11}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishTransition, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launchSecondSplit"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final launchTask(Lcom/miui/home/recents/event/TaskLaunchEventInfo;)V
    .locals 7

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->getTaskKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->launchTask(I)V

    .line 1206
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->getInBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    .line 1208
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->getTaskKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-result-object v2

    .line 1209
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->getOpts()Landroid/app/ActivityOptions;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1207
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;Z)V

    goto :goto_0

    .line 1212
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->getTaskKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->getOpts()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)V

    .line 1214
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->isHomeGestureQuickSwitch(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1215
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    .line 1216
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->onFinishCompleted()V

    :cond_3
    return-void
.end method

.method public final launchTaskForHalfQuickSwitch(Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;)V
    .locals 5

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    .line 1197
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->getTouchRange()I

    move-result v1

    .line 1198
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->getCurrentPairLoadTaskPosition()I

    move-result v2

    .line 1199
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, p1, v3, v4, v3}, Lcom/miui/home/recents/anim/WindowElement;->getActivityOptions$default(Lcom/miui/home/recents/anim/WindowElement;Landroid/view/View;Landroid/window/RemoteTransition;ILjava/lang/Object;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 1196
    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/recents/views/TaskView;->onLaunchTaskForHalfQuickSwitch(IILandroid/os/Bundle;)V

    return-void
.end method

.method public final launchTaskForSplitMode(Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessStart()V

    .line 1192
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->isUserClick()Z

    move-result v1

    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v2, v3}, Lcom/miui/home/recents/anim/WindowElement;->getActivityOptions$default(Lcom/miui/home/recents/anim/WindowElement;Landroid/view/View;Landroid/window/RemoteTransition;ILjava/lang/Object;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/views/TaskView;->onLaunchTaskForSplitMode(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public final mainAnimNoFinishClear()Z
    .locals 2

    .line 802
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mainAnimNoFinishClear()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final mapAlpha(F)F
    .locals 8

    .line 147
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowElement;->hasShared()Z

    move-result v0

    if-eqz v0, :cond_0

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    .line 148
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/anim/WindowElement;->map(FFFFFZ)F

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    .line 150
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/anim/WindowElement;->map(FFFFFZ)F

    move-result p0

    return p0
.end method

.method public final onAnimCancelByShellFinishedExecute(Z)V
    .locals 7

    .line 719
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimCancelByShellFinished needComplete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "onAnimCancelByShellFinished"

    move-object v1, p0

    .line 721
    invoke-static/range {v1 .. v6}, Lcom/miui/home/recents/anim/WindowElement;->forceStop$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;ILjava/lang/Object;)V

    goto :goto_0

    .line 723
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/recents/anim/WindowElement;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 727
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 728
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 729
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v2, Lcom/miui/home/recents/event/ResetLauncherPropertyEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/event/ResetLauncherPropertyEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 732
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    .line 733
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->notifyStateManagerEndAndReleaseSelf(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 734
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->clearSurfaceData()V

    :cond_3
    return-void
.end method

.method public final onAppToTopWindow()V
    .locals 2

    .line 1568
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    .line 1569
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/miui/home/recents/FloatingIconInterface;->recycle(Z)V

    :cond_1
    return-void
.end method

.method public final onClosingWindowTransitionExecute([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Z)V
    .locals 8

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonApps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    .line 674
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v7, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda12;

    move-object v1, v7

    move v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda12;-><init>(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;)V

    invoke-virtual {v0, v7}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFinishCompleted()V
    .locals 3

    .line 1735
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishCompleted mDisableStateManagerListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1736
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mFinishComplete:Z

    .line 1737
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->recentAnimationListener:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->recentAnimationListener:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsMergedAnimation(Z)V

    .line 1739
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->setAnimEndEnable()V

    .line 1741
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    if-nez v0, :cond_2

    .line 1742
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    .line 1743
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->notifyStateManagerEndAndReleaseSelf(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 1744
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->clearSurfaceData()V

    :cond_2
    return-void
.end method

.method public final onGestureAppDown()V
    .locals 1

    .line 1558
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    :cond_0
    return-void
.end method

.method public final onPairTaskOpeningWindowTransitionExecute([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Z)V
    .locals 8

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wallpapers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonApps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v1, "onPairTaskOpeningWindowTransitionStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v7, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;

    move-object v1, v7

    move v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;-><init>(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v0, v7}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRecentAnimToFullScreen()V
    .locals 1

    .line 1546
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->disableInputProxy()V

    .line 1547
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->recentAnimationListener:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWillFinishToHome(Z)V

    :cond_1
    return-void
.end method

.method public onTaskLaunched()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1167
    invoke-static {p0, v0, v0, v1, v2}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishTransition, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTaskLaunched"

    invoke-static {v2, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    .line 1170
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->notifyStateManagerEndAndReleaseSelf(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public openingWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openingWindowTransitionStart windowElement taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;-><init>(Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final refreshTransitionCallbackHelper([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 1

    const-string p0, "targets"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "helper"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    new-instance p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 643
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->tempSaveOpenLeash(ILandroid/view/SurfaceControl;)V

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getElementTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getElementTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->tempSaveElementLeash(Landroid/view/SurfaceControl;)V

    :cond_1
    return-object p0
.end method

.method public final replaceFloatingIconViewContent(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1515
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v0, "replaceFloatingIconViewContent, reset oldTargetView"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/anim/WindowElement;->isUpdate(Lcom/miui/home/recents/anim/RectFParams;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    .line 1518
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v0, "replaceFloatingIconViewContent, init floatingIconView if needed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/recents/anim/WindowElement;->initFloatingIconIfNeeded(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/RectFParams;)V

    return-void
.end method

.method public requestRemoteTransition(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRemoteTransition package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1063
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessStart()V

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 1064
    invoke-static {p0, p3, v3, v1, v3}, Lcom/miui/home/recents/anim/WindowElement;->getActivityOptions$default(Lcom/miui/home/recents/anim/WindowElement;Landroid/view/View;Landroid/window/RemoteTransition;ILjava/lang/Object;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/app/ActivityOptions;)V

    :cond_2
    return-void
.end method

.method public requestRemoteTransition(Lcom/miui/home/recents/event/WidgetClickEventInfo;)V
    .locals 9

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRemoteTransition WidgetClickEventInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1070
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessStart()V

    .line 1071
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getIntent()Landroid/content/IntentSender;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1072
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getOptions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v4, v3, v1, v3}, Lcom/miui/home/recents/anim/WindowElement;->getActivityOptions$default(Lcom/miui/home/recents/anim/WindowElement;Landroid/view/View;Landroid/window/RemoteTransition;ILjava/lang/Object;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    if-eqz v2, :cond_3

    .line 1074
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getIntent()Landroid/content/IntentSender;

    move-result-object v3

    .line 1075
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getFillInIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1076
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getFlagsMask()I

    move-result v5

    .line 1077
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getFlagsValues()I

    move-result v6

    .line 1078
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getExtraFlags()I

    move-result v7

    .line 1079
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getOptions()Landroid/os/Bundle;

    move-result-object v8

    .line 1073
    invoke-virtual/range {v2 .. v8}, Lcom/miui/home/launcher/Launcher;->superStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1083
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getFillInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1084
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1, v3, v1, v3}, Lcom/miui/home/recents/anim/WindowElement;->getActivityOptions$default(Lcom/miui/home/recents/anim/WindowElement;Landroid/view/View;Landroid/window/RemoteTransition;ILjava/lang/Object;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x1

    .line 1082
    invoke-virtual {v2, v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->superStartActivity(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final resetData(Lcom/miui/home/recents/util/RectFSpringAnim;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1853
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1854
    :goto_0
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetData lastAnimType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v1, v2, :cond_c

    .line 1856
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setPipAnimationTypeToAlpha(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 1857
    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mDuringMerge:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1858
    iput-boolean v3, p0, Lcom/miui/home/recents/anim/WindowElement;->mEndWaitingMerge:Z

    .line 1860
    :cond_1
    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowElement;->allowEndListener:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mDuringMerge:Z

    if-nez v2, :cond_b

    .line 1861
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowElement;->hideTaskViewByQuickSwitch()V

    .line 1862
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mOnShellAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    :cond_2
    if-eqz p2, :cond_7

    .line 1864
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mUserAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 1865
    :cond_3
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mUserAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onIconAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 1866
    :cond_4
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mUserAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    .line 1867
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/RectFParams;->setTargetView(Landroid/view/View;)V

    .line 1868
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/RectFParams;->setAnimListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;)V

    goto :goto_2

    .line 1870
    :cond_7
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mUserAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    if-eqz v2, :cond_8

    invoke-interface {v2, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;->onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 1872
    :cond_8
    :goto_2
    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/WindowElement;->resetLauncherPropertyIfNeeded(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_9

    .line 1875
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v2, "resetData: resetFloatingIcon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    .line 1877
    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    .line 1879
    :cond_9
    iput-boolean v3, p0, Lcom/miui/home/recents/anim/WindowElement;->allowEndListener:Z

    .line 1880
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->isSplitAnim:Z

    .line 1881
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1882
    :goto_3
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->updateAnimTypeForNavStub(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    if-eqz p2, :cond_c

    .line 1883
    iget-object p2, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz p2, :cond_c

    .line 1884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MHWAnimation# "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    goto :goto_4

    .line 1896
    :cond_b
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->updateAnimTypeForNavStub(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 1897
    iput-boolean v3, p0, Lcom/miui/home/recents/anim/WindowElement;->allowEndListener:Z

    :cond_c
    :goto_4
    return-void
.end method

.method public final resetFloatingIcon(Z)V
    .locals 2

    .line 1316
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/recents/anim/WindowElement;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetIsDrawIconIfNeed(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 0

    const-string p0, "params"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public resetWindowElement()V
    .locals 4

    .line 1818
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v1, "resetWindowElement"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->init()V

    const/4 v0, 0x1

    .line 1820
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mUseShellAnimListener:Z

    const/4 v1, 0x0

    .line 1821
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mCanceled:Z

    .line 1822
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mFinishSurface:Z

    .line 1823
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mSurfaceCanceled:Z

    .line 1824
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mSurfaceCanceledExecute:Z

    .line 1825
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    .line 1826
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2, v3}, Lcom/miui/home/recents/FloatingIconInterface;->setAppScreenShotBitmap(Landroid/graphics/Bitmap;)V

    .line 1828
    :cond_1
    iput-object v3, p0, Lcom/miui/home/recents/anim/WindowElement;->recentAnimationListener:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    .line 1829
    iput-object v3, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 1830
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->hasRecentTransition:Z

    .line 1831
    iput-object v3, p0, Lcom/miui/home/recents/anim/WindowElement;->notifyPackage:Ljava/lang/String;

    .line 1832
    iput-object v3, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 1833
    new-instance v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/anim/WindowElement;->setMTransformParams(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)V

    .line 1836
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    .line 1838
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement;->allowEndListener:Z

    .line 1839
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->isSplitAnim:Z

    .line 1840
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mFinishComplete:Z

    .line 1841
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->mDuringMerge:Z

    .line 1842
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/WindowElement;->isWaitViewDrawCommitWhenAppToRecentAnimEnd:Z

    .line 1844
    iput-object v3, p0, Lcom/miui/home/recents/anim/WindowElement;->mShellTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    const/4 v0, -0x1

    .line 1845
    iput v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningTaskId:I

    .line 1846
    iput-object v3, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningBitmap:Landroid/graphics/Bitmap;

    .line 1848
    iput-object v3, p0, Lcom/miui/home/recents/anim/WindowElement;->mNativeHyperRemoteTransition:Lcom/miui/home/recents/anim/HyperRemoteTransition;

    .line 1849
    iput-object v3, p0, Lcom/miui/home/recents/anim/WindowElement;->recentAnimationListener:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    return-void
.end method

.method public final runningAnimUpdate(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 8

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MHWAnimation# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 1379
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    .line 1380
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndRadius()F

    move-result v4

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getStartAlpha()F

    move-result v5

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndAlpha()F

    move-result v6

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAllAnimValues(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    if-eqz v1, :cond_1

    .line 1382
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->updateAnimTypeForNavStub(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    :cond_1
    return-void
.end method

.method public final setAnimEndEnable()V
    .locals 1

    .line 1573
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setEndEnable(Z)V

    :cond_0
    return-void
.end method

.method public final setClipAnimationHelper(Lcom/miui/home/recents/util/ClipAnimationHelper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    return-void
.end method

.method public final setIconLoc(Landroid/graphics/Rect;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->iconLoc:Landroid/graphics/Rect;

    return-void
.end method

.method public final setLaunchPosition(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/miui/home/recents/anim/WindowElement;->launchPosition:I

    return-void
.end method

.method public final setLauncherTargetView(Landroid/view/View;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    return-void
.end method

.method public final setMCancelSurfaceTask(Ljava/lang/Runnable;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mCancelSurfaceTask:Ljava/lang/Runnable;

    return-void
.end method

.method public final setMCanceled(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mCanceled:Z

    return-void
.end method

.method public final setMDisableStateManagerListener(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mDisableStateManagerListener:Z

    return-void
.end method

.method public final setMDuringMerge(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mDuringMerge:Z

    return-void
.end method

.method public final setMEndWaitingMerge(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mEndWaitingMerge:Z

    return-void
.end method

.method public final setMFastLaunchData(Lcom/miui/home/recents/FastLaunchData;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mFastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    return-void
.end method

.method public final setMFinishSurface(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mFinishSurface:Z

    return-void
.end method

.method public final setMNativeHyperRemoteTransition(Lcom/miui/home/recents/anim/HyperRemoteTransition;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mNativeHyperRemoteTransition:Lcom/miui/home/recents/anim/HyperRemoteTransition;

    return-void
.end method

.method public final setMNativeWindowTransitionCompatListener(Lcom/miui/home/recents/anim/WindowTransitionCompatListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mNativeWindowTransitionCompatListener:Lcom/miui/home/recents/anim/WindowTransitionCompatListener;

    return-void
.end method

.method public final setMOffsetHelper(Lcom/miui/home/recents/anim/WindowElementOffsetHelper;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    return-void
.end method

.method public final setMOpeningRectFParams(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mOpeningRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-void
.end method

.method public final setMRunningBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setMRunningTaskId(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mRunningTaskId:I

    return-void
.end method

.method public final setMSurfaceCanceledExecute(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mSurfaceCanceledExecute:Z

    return-void
.end method

.method public final setMTransformParams(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    return-void
.end method

.method public final setMUseShellAnimListener(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mUseShellAnimListener:Z

    return-void
.end method

.method public final setMUserAnimListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mUserAnimListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    return-void
.end method

.method public final setNotifyPackage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->notifyPackage:Ljava/lang/String;

    return-void
.end method

.method public final setPipAnimationTypeToAlpha(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 0

    .line 1927
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->isCloseAnim(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1928
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->setPipAnimationTypeToAlpha()V

    :cond_0
    return-void
.end method

.method public final setRemoteAnimationTargetSet(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-void
.end method

.method public final setSplitAnim(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->isSplitAnim:Z

    return-void
.end method

.method public setTo(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.RectFParams"

    .line 1292
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/RectFParams;

    .line 1293
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->updateCurrentDisplayRotation(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1295
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    .line 1296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setTo params.ignoreIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getIgnoreIcon()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " floatingIcon.isInit() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  needFinish="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getNeedFinishOnAnimEnd()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1297
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 1294
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1299
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->setToReset(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1300
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndAlpha()F

    move-result v5

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndRadius()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    :cond_1
    move-object v10, v3

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->getRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v11

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/miui/home/recents/anim/WindowElement;->updateElementValue(FLandroid/graphics/RectF;FFZLandroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setToReset(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnimWithoutEndAndEndListener()V

    const/4 v0, 0x0

    .line 1304
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->resetFloatingIcon(Z)V

    .line 1305
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1306
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-void
.end method

.method public final setWaitViewDrawCommitWhenAppToRecentAnimEnd(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement;->isWaitViewDrawCommitWhenAppToRecentAnimEnd:Z

    return-void
.end method

.method public final startActivityFromRecents(ZLcom/miui/home/recents/views/TaskView;)V
    .locals 9

    const-string v0, "taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionTest startActivityFromRecents isInBackground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", taskView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1094
    invoke-static {p0, p2, v1, v2, v1}, Lcom/miui/home/recents/anim/WindowElement;->getActivityOptions$default(Lcom/miui/home/recents/anim/WindowElement;Landroid/view/View;Landroid/window/RemoteTransition;ILjava/lang/Object;)Landroid/app/ActivityOptions;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 1096
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v3

    .line 1097
    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1096
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;Z)V

    goto :goto_0

    .line 1101
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)V

    :goto_0
    return-void
.end method

.method public startRecentAnimation()V
    .locals 3

    .line 1227
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v1, "startRecentAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1229
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1230
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->windowTransitionCompat:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->onRecentsTransitionRequest()V

    .line 1231
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->startRecentsAnimation()V

    .line 1233
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1234
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1235
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v2, "startRecentAnimation init FloatingIconView2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    new-instance v1, Lcom/miui/home/recents/views/FloatingIconView2;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "it.applicationContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/miui/home/recents/views/FloatingIconView2;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    :cond_3
    return-void
.end method

.method public startRecentsActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1221
    invoke-static {p0, v0, v0, v1, v0}, Lcom/miui/home/recents/anim/WindowElement;->getActivityOptions$default(Lcom/miui/home/recents/anim/WindowElement;Landroid/view/View;Landroid/window/RemoteTransition;ILjava/lang/Object;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 1222
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public final startRemoteAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "targets"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "openingTargets"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    sget-object v2, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    iget-object v5, v0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    iget v6, v0, Lcom/miui/home/recents/anim/WindowElement;->launchPosition:I

    iget-object v7, v0, Lcom/miui/home/recents/anim/WindowElement;->iconLoc:Landroid/graphics/Rect;

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getOpeningAnimParams([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/view/View;ILandroid/graphics/Rect;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/StateManager;->getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 661
    :cond_1
    iget-object v0, v0, Lcom/miui/home/recents/anim/WindowElement;->mNotHandleAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/AllElementParams;->setWindowEmptyRunnable(Ljava/lang/Runnable;)V

    .line 662
    invoke-virtual {v3}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    sget-object v2, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda14;->INSTANCE:Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda14;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReady(Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 656
    invoke-static {v0, v3, v4, v5, v2}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishTransition, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "startRemoteAnimation"

    invoke-static {v3, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishTransition, allElementParams?.windowParams="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/AllElementParams;->getWindowParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/StateManager;->getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/anim/AllElementParams;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/miui/home/recents/anim/StateType;->STATE_IDLE:Lcom/miui/home/recents/anim/StateType;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3bf

    const/16 v18, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v18}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1, v2, v5, v2}, Lcom/miui/home/recents/anim/StateManager;->onAnimParamsReady$default(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public final strokeSwitch(Lcom/miui/home/recents/views/SmallWindowCrop;Landroid/view/SurfaceControl;[FFF)Z
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "color"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1778
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->getSyncTransactionApplier()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1781
    :cond_0
    new-instance v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;

    sget-object v5, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;-><init>(Landroid/view/SurfaceControl;[FFFLcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowListener;)V

    .line 1784
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->getSyncTransactionApplier()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    move-result-object p0

    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->strokeSwitch(Landroid/view/View;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;)Z

    move-result p0

    return p0
.end method

.method public final undateCurrentRect(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v0, v1, :cond_0

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MHWAnimation# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 1426
    :cond_0
    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-void
.end method

.method public final updateAnimTypeForNavStub(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 0

    .line 1538
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setWindowAnimType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    :cond_0
    return-void
.end method

.method public final updateCurRecet(Landroid/graphics/RectF;)V
    .locals 0

    const-string p0, "currentRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sput-object p1, Lcom/miui/home/recents/anim/WindowElement;->curRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final updateElementValue(FLandroid/graphics/RectF;FFZLandroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v6, p3

    move/from16 v4, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    const-string v3, "rectF"

    move-object/from16 v5, p2

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rotationRectF"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->getSyncTransactionApplier()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_1

    .line 420
    iget-object v3, v0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    instance-of v9, v3, Lcom/miui/home/recents/views/FloatingIconView2;

    if-eqz v9, :cond_1

    if-eqz v3, :cond_0

    .line 421
    invoke-interface {v3}, Lcom/miui/home/recents/FloatingIconInterface;->isInit()Z

    move-result v3

    if-ne v3, v8, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    if-eqz v3, :cond_1

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    new-instance v9, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iget-object v10, v0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    const-string v11, "null cannot be cast to non-null type com.miui.home.recents.views.FloatingIconView2"

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Lcom/miui/home/recents/views/FloatingIconView2;

    invoke-direct {v9, v10}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 424
    :cond_1
    iget-boolean v3, v0, Lcom/miui/home/recents/anim/WindowElement;->mFinishSurface:Z

    if-eqz v3, :cond_2

    .line 425
    iget-object v0, v0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string v1, "updateElementValue: return, because finishSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 428
    :cond_2
    iget-object v3, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v3

    if-ne v3, v8, :cond_3

    move v3, v8

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    if-nez v3, :cond_5

    iget-boolean v3, v0, Lcom/miui/home/recents/anim/WindowElement;->mSurfaceCanceled:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v3, p1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 429
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 430
    iget-object v9, v0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateElementValue isSurfaceCanceled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/miui/home/recents/anim/WindowElement;->mSurfaceCanceled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", currentRectFParams?.isQuickSwitchMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v11, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_4

    :cond_6
    move-object v11, v12

    .line 430
    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", surfaceAlpha="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", clipAnimationHelper="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v3, v0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 430
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bounds="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isHalf="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-boolean v3, v0, Lcom/miui/home/recents/anim/WindowElement;->isHalf:Z

    .line 430
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->checkVerticalClip()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    iget-object v9, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v9

    if-ne v9, v8, :cond_7

    move v9, v8

    goto :goto_5

    :cond_7
    move v9, v7

    :goto_5
    invoke-virtual {v3, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setElementHidden(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 440
    iget-object v3, v0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v3, :cond_c

    if-eqz v1, :cond_c

    .line 441
    iget-object v3, v0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rotationRectF= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " bounds= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-direct {v0, v1, v2, v6}, Lcom/miui/home/recents/anim/WindowElement;->updateTransformParams(Landroid/graphics/Rect;Landroid/graphics/RectF;F)F

    move-result v1

    .line 443
    invoke-direct {v0, v1, v2, v4}, Lcom/miui/home/recents/anim/WindowElement;->updateSmallWindow(FLandroid/graphics/RectF;F)V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->setSmallWindowSyncTransactionApplierIfNeeded()V

    .line 445
    iget-boolean v3, v0, Lcom/miui/home/recents/anim/WindowElement;->isHalf:Z

    if-nez v3, :cond_9

    .line 446
    iget-object v13, v0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v13, :cond_8

    .line 447
    iget-object v14, v0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v15

    const/16 v16, 0x0

    .line 450
    iget v3, v0, Lcom/miui/home/recents/anim/WindowElement;->launchPosition:I

    .line 451
    iget-object v9, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/miui/home/recents/anim/RectFParams;->isSplitModeBack()Z

    move-result v18

    move/from16 v17, v3

    .line 446
    invoke-virtual/range {v13 .. v18}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;IZ)Landroid/graphics/RectF;

    move-result-object v3

    goto :goto_7

    :cond_8
    move-object v3, v12

    goto :goto_7

    .line 454
    :cond_9
    iget-object v13, v0, Lcom/miui/home/recents/anim/WindowElement;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v13, :cond_8

    .line 455
    iget-object v14, v0, Lcom/miui/home/recents/anim/WindowElement;->remoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->getMTransformParams()Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v15

    const/16 v16, 0x0

    .line 458
    iget-object v3, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/RectFParams;->getRunningTaskId()I

    move-result v3

    move/from16 v17, v3

    goto :goto_6

    :cond_a
    move/from16 v17, v7

    .line 459
    :goto_6
    iget v3, v0, Lcom/miui/home/recents/anim/WindowElement;->launchPosition:I

    move/from16 v18, v3

    .line 454
    invoke-virtual/range {v13 .. v18}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformHalfTask(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;II)Landroid/graphics/RectF;

    move-result-object v3

    :goto_7
    if-nez v3, :cond_b

    move-object v3, v2

    .line 465
    :cond_b
    invoke-direct {v0, v3}, Lcom/miui/home/recents/anim/WindowElement;->getTaskViewRotationRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    move/from16 v9, p1

    .line 466
    invoke-direct {v0, v3, v9, v6}, Lcom/miui/home/recents/anim/WindowElement;->handleQuickSwitchCloseToHomeTaskView(Landroid/graphics/RectF;FF)V

    goto :goto_8

    :cond_c
    move v1, v6

    move-object v3, v12

    .line 468
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowElement;->isQuickSwitchCloseToHome()Z

    move-result v9

    xor-int/2addr v9, v8

    .line 472
    iget-object v10, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/miui/home/recents/anim/RectFParams;->getShowTask()Z

    move-result v10

    if-ne v10, v8, :cond_d

    move v10, v8

    goto :goto_9

    :cond_d
    move v10, v7

    :goto_9
    if-eqz v10, :cond_19

    .line 473
    iget-object v10, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v10

    goto :goto_a

    :cond_e
    move-object v10, v12

    :goto_a
    if-nez v10, :cond_f

    const/4 v10, -0x1

    goto :goto_b

    :cond_f
    sget-object v11, Lcom/miui/home/recents/anim/WindowElement$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v11, v10

    :goto_b
    if-eq v10, v8, :cond_17

    const/4 v5, 0x6

    if-eq v10, v5, :cond_15

    if-eqz v9, :cond_19

    .line 495
    sget-object v2, Lcom/miui/home/recents/anim/TaskViewsElement;->Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;->getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/TaskViewsElement;->notUpdateTaskElement()Z

    move-result v4

    if-nez v4, :cond_19

    if-eqz v3, :cond_19

    .line 496
    iget-object v4, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/RectFParams;->getGestureHomeCalculator()Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object v12

    :cond_10
    if-eqz v12, :cond_12

    .line 498
    invoke-virtual {v12, v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getRotateTaskViewRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_c

    :cond_11
    move-object v3, v4

    .line 499
    :cond_12
    :goto_c
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;->getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v2

    if-eqz p5, :cond_14

    .line 502
    iget-object v0, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v8

    goto :goto_d

    :cond_13
    move v0, v7

    :goto_d
    if-eqz v0, :cond_14

    move v7, v8

    .line 499
    :cond_14
    invoke-virtual {v2, v3, v1, v7}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskViewNew(Landroid/graphics/RectF;FZ)V

    goto :goto_e

    .line 475
    :cond_15
    iget-boolean v1, v0, Lcom/miui/home/recents/anim/WindowElement;->mCanceled:Z

    if-nez v1, :cond_19

    .line 476
    sget-object v1, Lcom/miui/home/recents/anim/TaskViewsElement;->Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;->getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    .line 477
    iget-object v3, v0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    instance-of v5, v3, Lcom/miui/home/recents/views/TaskView;

    if-eqz v5, :cond_16

    move-object v12, v3

    check-cast v12, Lcom/miui/home/recents/views/TaskView;

    .line 479
    :cond_16
    iget-object v0, v0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getStartRect()Landroid/graphics/RectF;

    move-result-object v0

    const-string v3, "mAnim.startRect"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1, v12, v4, v0, v2}, Lcom/miui/home/recents/anim/TaskViewsElement;->onTaskOpeningUpdateTaskView(Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_e

    .line 485
    :cond_17
    sget-object v1, Lcom/miui/home/recents/anim/TaskViewsElement;->Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;->getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    .line 486
    iget-object v2, v0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    instance-of v3, v2, Lcom/miui/home/recents/views/TaskView;

    if-eqz v3, :cond_18

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    move-object v12, v2

    .line 490
    :cond_18
    iget-object v0, v0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->getCurrentTaskIndex()I

    move-result v7

    move-object v0, v1

    move-object v1, v12

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p4

    move v5, v7

    move/from16 v6, p3

    .line 485
    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/recents/anim/TaskViewsElement;->onTaskCloseToRecentUpdateTaskView(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;FFIF)V

    :cond_19
    :goto_e
    return-void
.end method

.method public final updateFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFloatingIconView, animType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/WindowElement;->resetIsDrawIconIfNeed(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1474
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v1, :cond_0

    return-void

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->floatingIcon:Lcom/miui/home/recents/FloatingIconInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/home/recents/FloatingIconInterface;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1478
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFloatingIconView, oldTargetView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", params.targetView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object v3

    .line 1478
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1482
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string p1, "updateFloatingIconView, targetView is same"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1485
    :cond_2
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1486
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/recents/anim/WindowElement;->handleFloatingIconViewWhenNewTargetViewNull(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 1487
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string p1, "updateFloatingIconView, handleFloatingIconViewWhenNewTargetViewNull handled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1490
    :cond_3
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-nez v1, :cond_4

    .line 1491
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/WindowElement;->handleFloatingIconViewWhenNotHomeAnimTarget(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 1492
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->TAG:Ljava/lang/String;

    const-string p1, "updateFloatingIconView, handleFloatingIconViewClass handled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1495
    :cond_4
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement;->replaceFloatingIconViewContent(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/anim/RectFParams;)V

    return-void
.end method

.method public final updateLaunchPosition(I)V
    .locals 0

    .line 1767
    invoke-static {p1}, Lcom/miui/home/launcher/util/SoscUtils;->getHalfSplitLaunchPosition(I)I

    move-result p1

    .line 1768
    iput p1, p0, Lcom/miui/home/recents/anim/WindowElement;->launchPosition:I

    return-void
.end method

.method public final updateLauncherTargetView(F)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v0, v1, :cond_0

    .line 224
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 225
    instance-of v0, p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type com.miui.home.launcher.anim.LaunchAppAndBackHomeAnimTarget"

    .line 226
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 227
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->needChangeIconAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppWindowAlphaChange(F)V

    :cond_0
    return-void
.end method

.method public final updateTaskView(Landroid/graphics/RectF;F)V
    .locals 1

    const-string v0, "currentRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->currentRectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->correctTargetView(Lcom/miui/home/recents/anim/RectFParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->mOffsetHelper:Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p1

    const-string v0, "mAnim.lastAminType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement;->launcherTargetView:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/recents/anim/WindowElement;->updateTaskViewIfNeeded(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;Landroid/view/View;F)V

    return-void
.end method

.method public final updateTaskViewIfNeeded(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;Landroid/view/View;F)V
    .locals 0

    const-string p0, "animType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    sget-object p0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    instance-of p0, p2, Lcom/miui/home/recents/views/TaskView;

    if-eqz p0, :cond_0

    .line 340
    check-cast p2, Lcom/miui/home/recents/views/TaskView;

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p0, p3}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_0
    return-void
.end method

.method public useFastLaunch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
