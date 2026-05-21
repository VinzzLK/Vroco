.class public Lcom/miui/home/recents/anim/ConnectAnimManager;
.super Ljava/lang/Object;
.source "ConnectAnimManager.java"


# static fields
.field public static final USE_CONNECT_ANIM:Z

.field private static volatile sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;


# instance fields
.field private clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private currentDisplayRotation:I

.field private currentRotation:I

.field private currentRotationIconLoc:Landroid/graphics/Rect;

.field private homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private homeRotation:I

.field private isClipFromLeftOrTop:Z

.field private isConnectingRemote:Z

.field private isIgnoreIconAnim:Z

.field private isUseTranslucentAnim:Z

.field private isVerticalClip:Z

.field private launchPosition:I

.field private mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mBreakAnimStartDimAlpha:F

.field private final mBreakStartRectF:Landroid/graphics/RectF;

.field private mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private mCurrentHomeScaleInGestureThread:F

.field private mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final mFirstStart:Landroid/graphics/RectF;

.field private mFromRecent:Z

.field private mInitDimLayerStartAlpha:Z

.field private mIsAppPairAnim:Z

.field private mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field private mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

.field private mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mRecentAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private mRemoteAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mRemoteAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private mTargetView:Landroid/view/View;

.field private needUpdateDim:Z

.field private openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private radiusScale:F

.field private transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;


# direct methods
.method public static synthetic $r8$lambda$5cvcK_YYMeagb0etcuF9VgJiWhM(Lcom/miui/home/recents/anim/ConnectAnimManager;Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/home/recents/anim/ConnectAnimManager;->lambda$connectRemoteAnim$0(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakStartRectF:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isConnectingRemote:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mCurrentHomeScaleInGestureThread:F

    .line 63
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    .line 64
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/anim/ConnectAnimManager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/home/recents/anim/ConnectAnimManager;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isConnectingRemote:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-object p0
.end method

.method private connectRecentAnimForOpening(Landroid/graphics/RectF;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isOpenAnim()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedRecycle(Z)V

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setNavAnimToLauncherFalse()V

    .line 213
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setInitDimLayerStartAlpha(Z)V

    .line 214
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    .line 215
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 216
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isFromRecent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    .line 217
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getStartRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 218
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearRectFSpringAnimListener()V

    .line 219
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/ConnectAnimManager$2;-><init>(Lcom/miui/home/recents/anim/ConnectAnimManager;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 257
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    return-void

    .line 206
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectAnim return, anim = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "ConnectAnimManager"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;
    .locals 0

    .line 68
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;
    .locals 2

    .line 72
    sget-object v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/miui/home/recents/anim/ConnectAnimManager;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/anim/ConnectAnimManager;->sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-direct {v1}, Lcom/miui/home/recents/anim/ConnectAnimManager;-><init>()V

    sput-object v1, Lcom/miui/home/recents/anim/ConnectAnimManager;->sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;

    return-object v0
.end method

.method private synthetic lambda$connectRemoteAnim$0(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isInitDimLayerStartAlpha()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 345
    iget-object v6, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getProgressCalculateType()I

    move-result v6

    .line 346
    iget-object v7, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakStartRectF:Landroid/graphics/RectF;

    invoke-static {v4, v7, v2, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v7

    .line 347
    iget-object v8, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    invoke-static {v4, v8, v2, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v2

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/NavStubView;->getDimAlpha()F

    move-result v6

    .line 350
    iget v8, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakAnimStartDimAlpha:F

    sub-float/2addr v6, v8

    mul-float/2addr v6, v7

    add-float/2addr v8, v6

    .line 351
    iget-boolean v6, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v15, p4

    .line 353
    invoke-virtual {v1, v4, v6, v15, v7}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 354
    invoke-virtual/range {p1 .. p2}, Lcom/miui/home/recents/NavStubView;->updateCurrentRect(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_0
    move/from16 v15, p4

    .line 356
    invoke-virtual/range {p1 .. p2}, Lcom/miui/home/recents/NavStubView;->updateCurrentRect(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    move/from16 v15, p4

    move v8, v2

    :goto_0
    move v3, v5

    :goto_1
    move/from16 v20, v2

    move v14, v5

    move v13, v8

    goto :goto_2

    :cond_2
    move/from16 v15, p4

    .line 363
    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getFirstTargetRect()Landroid/graphics/RectF;

    move-result-object v6

    iget-object v7, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 364
    invoke-virtual {v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->getProgressCalculateType()I

    move-result v7

    .line 363
    invoke-static {v4, v2, v6, v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v2

    move v13, v2

    move/from16 v20, v13

    move v14, v3

    move v3, v5

    .line 367
    :goto_2
    iget-boolean v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    .line 368
    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v3, :cond_3

    .line 369
    iget-boolean v6, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isVerticalClip:Z

    iget-boolean v7, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isClipFromLeftOrTop:Z

    iget v8, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->launchPosition:I

    move-object/from16 v4, p2

    move/from16 v5, p4

    invoke-static/range {v1 .. v8}, Lcom/miui/home/recents/TaskViewUtils;->updateOpenAnimRecent(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FZZI)V

    .line 373
    :cond_3
    iget-boolean v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->needUpdateDim:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v1, :cond_6

    .line 374
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    invoke-virtual {v1, v13, v0, v14}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    goto :goto_4

    .line 377
    :cond_4
    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/NavStubView;->isShowRecents()Z

    move-result v1

    move/from16 v24, v1

    goto :goto_3

    :cond_5
    move/from16 v24, v5

    .line 379
    :goto_3
    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mTargetView:Landroid/view/View;

    iget-boolean v6, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isUseTranslucentAnim:Z

    iget-object v7, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget v8, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->currentRotation:I

    iget-object v9, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v10, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v11, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v12, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    move/from16 v21, v13

    move-object v13, v1

    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    move/from16 v25, v14

    move-object v14, v1

    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->currentRotationIconLoc:Landroid/graphics/Rect;

    move-object v15, v1

    iget v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->currentDisplayRotation:I

    move/from16 v16, v1

    iget v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->homeRotation:I

    move/from16 v17, v1

    iget v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->radiusScale:F

    move/from16 v18, v1

    iget-boolean v0, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isIgnoreIconAnim:Z

    move/from16 v19, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v1, p2

    move/from16 v3, v20

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v20, v25

    invoke-static/range {v1 .. v24}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->openAnimUpdate(Landroid/graphics/RectF;Landroid/view/View;FFFZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/FloatingIconView;Lcom/miui/home/recents/FloatingIconLayer;Landroid/graphics/Rect;IIFZZFIZZ)V

    :cond_6
    :goto_4
    return-void
.end method

.method private setNavAnimToLauncherFalse()V
    .locals 1

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelClosingAnim()Z
    .locals 3

    .line 644
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRecentAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 648
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isExitAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getExitAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public cancelEndDetector()V
    .locals 1

    .line 554
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz p0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->cancel()V

    :cond_0
    return-void
.end method

.method public connectOpeningAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectOpeningAnim isRecentAnimRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectAnimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, p2}, Lcom/miui/home/recents/anim/ConnectAnimManager;->connectRecentAnimForOpening(Landroid/graphics/RectF;)V

    if-eqz p3, :cond_1

    const/16 p0, 0xb

    .line 144
    invoke-virtual {p3, p0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->connectRemoteAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public connectRemoteAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 6

    const-string v0, "ConnectAnimManager"

    const-string v1, "connectRemoteAnim"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string p1, "set anim == null || !anim.isRunning()"

    .line 269
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    :cond_1
    if-eqz p1, :cond_5

    .line 272
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isOpenAnim()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isConnectingRemote:Z

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 280
    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 281
    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    .line 285
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setInitDimLayerStartAlpha(Z)V

    .line 286
    iget-object v4, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v4, :cond_4

    .line 287
    invoke-virtual {v4, v3}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedRecycle(Z)V

    .line 288
    iget-object v4, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v4, v3}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedResetShortcutIcon(Z)V

    .line 290
    :cond_4
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIsConnectRemote(Z)V

    .line 291
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isFromRecent()Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    .line 292
    iget-object v4, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getStartRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 293
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->copyCurrentAnimNextState()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 294
    new-instance v4, Lcom/miui/home/recents/anim/ConnectAnimManager$3;

    invoke-direct {v4, p0, v1}, Lcom/miui/home/recents/anim/ConnectAnimManager$3;-><init>(Lcom/miui/home/recents/anim/ConnectAnimManager;Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 338
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v4, Lcom/miui/home/recents/anim/ConnectAnimManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/miui/home/recents/anim/ConnectAnimManager$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/ConnectAnimManager;Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 388
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    .line 389
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1, v0, v2, v3}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 390
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    return-void

    .line 273
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAnim return, anim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mAnim = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getExitAnim()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method public getRecentAnim()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    return-object p0
.end method

.method public getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method public handleNonAppToHome()V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz p0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->resetShortcutIcon()V

    :cond_0
    return-void
.end method

.method public isAnimRunning()Z
    .locals 0

    .line 431
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isConnectAnimRunning()Z

    move-result p0

    return p0
.end method

.method public isExitAnimRunning()Z
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

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

.method public isInitDimLayerStartAlpha()Z
    .locals 0

    .line 443
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mInitDimLayerStartAlpha:Z

    return p0
.end method

.method public isRecentAnimRunning()Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

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

.method public isRecentBreakOpenAnimRunning()Z
    .locals 1

    .line 583
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentOpenAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentClosingAnimRunning()Z
    .locals 1

    .line 579
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isOpenAnim()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentOpenAnimRunning()Z
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isOpenAnim()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRemoteOpenBreakAnimRunning()Z
    .locals 1

    .line 435
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

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

.method public resetManager()V
    .locals 1

    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 626
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 627
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 628
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 629
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 630
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 631
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 632
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 633
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 634
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 635
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 636
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 637
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mTargetView:Landroid/view/View;

    .line 638
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 639
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    return-void
.end method

.method public setControl(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZZIZ)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 510
    iput-object p2, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 511
    iput-object p3, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 512
    iput-boolean p4, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isVerticalClip:Z

    .line 513
    iput-boolean p5, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isClipFromLeftOrTop:Z

    .line 514
    iput p6, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->launchPosition:I

    .line 515
    iput-boolean p7, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->needUpdateDim:Z

    return-void
.end method

.method public setCurrentHomeScale(F)V
    .locals 0

    .line 617
    iput p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mCurrentHomeScaleInGestureThread:F

    return-void
.end method

.method public setInitDimLayerStartAlpha(Z)V
    .locals 0

    .line 447
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mInitDimLayerStartAlpha:Z

    return-void
.end method

.method public setIsAppPairAnim(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mIsAppPairAnim:Z

    return-void
.end method

.method public setRecentAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 89
    iput-object p2, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-void
.end method

.method public setRemoteAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 83
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRemoteAnim = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConnectAnimManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateEndRectF(Landroid/graphics/RectF;)V
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRemoteOpenBreakAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method
