.class public Lcom/miui/home/recents/ThreeGestureSplitController;
.super Ljava/lang/Object;
.source "ThreeGestureSplitController.java"

# interfaces
.implements Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGestureAction:I

.field private final mHomeIntent:Landroid/content/Intent;

.field private mIsInSplitSelectState:Z

.field private mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;


# direct methods
.method public static synthetic $r8$lambda$3owj333sfsGobUwowwNKnbQdgNc(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/miui/home/recents/ThreeGestureSplitController;->lambda$createSplitSelectSpringAnim$0(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mGestureAction:I

    .line 58
    iput-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mContext:Landroid/content/Context;

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 60
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mHomeIntent:Landroid/content/Intent;

    .line 68
    new-instance p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-direct {p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    .line 69
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/ThreeGestureSplitController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->resetFromSplitSelectionState()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/ThreeGestureSplitController;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->isFirstSplitLeftOrTop()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/ThreeGestureSplitController;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/home/recents/ThreeGestureSplitController;->initiateSplitSelect(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/ThreeGestureSplitController;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/ThreeGestureSplitController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/ThreeGestureSplitController;)I
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->getSecondStagePosition()I

    move-result p0

    return p0
.end method

.method private createSplitSelectSpringAnim(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 8

    .line 213
    new-instance v7, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    move-object v1, p4

    move-object v2, p5

    move v3, p6

    move v4, p7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 214
    sget-object p4, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v7, p4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 216
    new-instance p4, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1, p2, p3}, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v7, p4}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 221
    new-instance p1, Lcom/miui/home/recents/ThreeGestureSplitController$2;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/ThreeGestureSplitController$2;-><init>(Lcom/miui/home/recents/ThreeGestureSplitController;)V

    invoke-virtual {v7, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    return-object v7
.end method

.method private fullScreenToSplitSelect()V
    .locals 3

    .line 236
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mHomeIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    const-string p0, "ThreeGestureSplitController"

    const-string v0, "fullScreenToSplitSelect: full screen to split select."

    .line 238
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getActivityLaunchOptionsFromSplitSelectToFullScreen()Landroid/app/ActivityOptions;
    .locals 8

    const-string v0, "ThreeGestureSplitController"

    const-string v1, "getActivityLaunchOptionsFromSplitSelectToFullScreen"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v3, Lcom/miui/home/recents/ThreeGestureSplitController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x1

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/recents/ThreeGestureSplitController$1;-><init>(Lcom/miui/home/recents/ThreeGestureSplitController;Landroid/os/Handler;Z)V

    .line 134
    new-instance p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const-wide/16 v4, 0x15e

    const-wide/16 v6, 0x86

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method private getFullScreenSizeHomeStackBoundByOrientation()Landroid/graphics/Rect;
    .locals 3

    .line 318
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->isLandscape()Z

    move-result p0

    if-nez p0, :cond_0

    .line 319
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 320
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 322
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 323
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 325
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getSecondStagePosition()I
    .locals 1

    .line 342
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->isFirstSplitLeftOrTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->isFirstSplitRightOrBottom()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getSplitSelectToFullScreenAnimator([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 8

    .line 167
    new-instance v1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 169
    new-instance v3, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v0, 0x0

    invoke-direct {v3, p1, v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 171
    iget-object v4, v3, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v4, v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    const/4 v5, 0x1

    .line 176
    invoke-virtual {v4, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 177
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 179
    iget-object v5, v3, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v0, v5, v0

    invoke-virtual {v4, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 180
    invoke-virtual {v4, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 181
    invoke-virtual {v4, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 182
    invoke-virtual {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 184
    iget-object p1, v3, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez p1, :cond_1

    const-string p0, "ThreeGestureSplitController"

    const-string p1, "getSplitSelectWindowAnimatorNew: openingTargets.unfilteredApps == null"

    .line 185
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 188
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskViewRectF()Landroid/graphics/RectF;

    move-result-object p1

    .line 189
    invoke-static {v4, p2}, Lcom/miui/home/recents/TaskViewUtils;->getEndRectF(Lcom/miui/home/recents/util/ClipAnimationHelper;I)Landroid/graphics/RectF;

    move-result-object v5

    const/high16 v6, 0x41b00000    # 22.0f

    .line 192
    invoke-static {v3, p2}, Lcom/miui/home/recents/TaskViewUtils;->getEndRadius(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;I)I

    move-result p2

    int-to-float v7, p2

    move-object v0, p0

    move-object v2, v4

    move-object v4, p1

    .line 194
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/ThreeGestureSplitController;->createSplitSelectSpringAnim(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v2
.end method

.method private initiateSplitSelect(I)V
    .locals 2

    .line 351
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/ThreeGestureSplitController$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/ThreeGestureSplitController$5;-><init>(Lcom/miui/home/recents/ThreeGestureSplitController;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isFirstSplitLeftOrTop()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mIsInSplitSelectState:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mGestureAction:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFirstSplitRightOrBottom()Z
    .locals 2

    .line 338
    iget-boolean v0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mIsInSplitSelectState:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mGestureAction:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLandscape()Z
    .locals 1

    .line 330
    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$createSplitSelectSpringAnim$0(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 0

    .line 217
    invoke-virtual {p0, p6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipFromLeftOrTop(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 218
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformThreeGesture(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    return-void
.end method

.method private resetFromSplitSelectionState()V
    .locals 1

    .line 375
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const-string v0, "ThreeGestureSplitController"

    if-nez p0, :cond_0

    const-string p0, "initiateSplitSelect: launcher is null, return"

    .line 377
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/RecentsView;

    if-nez p0, :cond_1

    const-string p0, "initiateSplitSelect: recentsView is null, return"

    .line 382
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->resetFromSplitSelectionState()V

    return-void
.end method

.method private splitSelectToFullScreen()V
    .locals 9

    .line 87
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mGestureAction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 88
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mGestureAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 89
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getFirstSplitScreenTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const-string v2, "ThreeGestureSplitController"

    if-nez v1, :cond_2

    const-string p0, "splitSelectToFullScreen: launcher is null, return"

    .line 92
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "splitSelectToFullScreen: recentsView is null, return"

    .line 97
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 101
    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->resetFromSplitSelectionState()V

    const-string p0, "splitSelectToFullScreen: firstSplitScreenTask is null, return"

    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->getActivityLaunchOptionsFromSplitSelectToFullScreen()Landroid/app/ActivityOptions;

    move-result-object v5

    .line 106
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;Z)V

    const-string p0, "splitSelectToFullScreen: split select to full screen."

    .line 108
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private updateSplitSelectState()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mIsInSplitSelectState:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->splitSelectToFullScreen()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->fullScreenToSplitSelect()V

    :goto_0
    return-void
.end method


# virtual methods
.method public composeSplitSelectToFullScreenAnimator([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 2

    .line 141
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p2}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .line 149
    invoke-direct {p0, p1, v1}, Lcom/miui/home/recents/ThreeGestureSplitController;->getSplitSelectToFullScreenAnimator([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    if-nez p0, :cond_3

    if-eqz p2, :cond_2

    .line 152
    invoke-virtual {p2}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    :cond_2
    return-void

    .line 156
    :cond_3
    new-instance p1, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    .line 157
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 159
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 161
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    return-void
.end method

.method public notifyGestureChange(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mGestureAction:I

    .line 74
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->updateSplitSelectState()V

    return-void
.end method

.method public onRecentsAnimationCanceled(Z)V
    .locals 0

    const-string p0, "ThreeGestureSplitController"

    const-string p1, "onRecentsAnimationCanceled"

    .line 302
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 13

    .line 244
    new-instance v0, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 245
    new-instance v1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 247
    iget-object v2, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->getFullScreenSizeHomeStackBoundByOrientation()Landroid/graphics/Rect;

    move-result-object v2

    .line 253
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    .line 254
    invoke-virtual {p1, v3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 255
    iget-object v4, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 256
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    .line 257
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 259
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 260
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 262
    iget-object v4, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    .line 263
    invoke-virtual {v4, v5}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 264
    iget-object v4, p0, Lcom/miui/home/recents/ThreeGestureSplitController;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v4}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hideCurrentInputMethod()V

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->getSecondStagePosition()I

    move-result v4

    invoke-static {v4}, Lcom/miui/home/recents/views/FloatingTaskView;->updateFloatingTaskViewRectF(I)Landroid/graphics/RectF;

    move-result-object v7

    .line 268
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v4

    .line 269
    new-instance v12, Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float v8, v4

    const/high16 v9, 0x41b00000    # 22.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 271
    new-instance v2, Lcom/miui/home/recents/ThreeGestureSplitController$3;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/miui/home/recents/ThreeGestureSplitController$3;-><init>(Lcom/miui/home/recents/ThreeGestureSplitController;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    invoke-virtual {v12, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 279
    new-instance p1, Lcom/miui/home/recents/ThreeGestureSplitController$4;

    invoke-direct {p1, p0, v3}, Lcom/miui/home/recents/ThreeGestureSplitController$4;-><init>(Lcom/miui/home/recents/ThreeGestureSplitController;I)V

    invoke-virtual {v12, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    invoke-virtual {v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    return-void
.end method

.method public onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    return-void
.end method
