.class public Lcom/miui/home/recents/util/ClipAnimationHelper;
.super Ljava/lang/Object;
.source "ClipAnimationHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;,
        Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    }
.end annotation


# instance fields
.field private mBoostModeTargetLayers:I

.field private mClipRectF:Landroid/graphics/RectF;

.field private mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentRectWithInsets:Landroid/graphics/RectF;

.field public final mHomeStackBounds:Landroid/graphics/Rect;

.field private mIsUseForHomeGesture:Z

.field private final mSourceInsets:Landroid/graphics/Rect;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mSourceStackBounds:Landroid/graphics/Rect;

.field private final mSourceWindowClipInsets:Landroid/graphics/RectF;

.field private final mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mIsUseForHomeGesture:Z

    return-void
.end method

.method private applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_4

    .line 714
    :cond_0
    new-instance p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    const/4 p1, 0x0

    move v0, p1

    .line 715
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 716
    aget-object v1, p2, v0

    .line 717
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 719
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 720
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/AppPairController;->beginAppPairAnimation(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p1

    .line 723
    :goto_1
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    .line 727
    :cond_2
    invoke-static {p0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_3

    :cond_3
    :goto_2
    const-string v1, "ClipAnimationHelper"

    const-string v2, "Error! param.surface is not valid"

    .line 724
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    :goto_4
    return-void
.end method

.method private calculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;ZZ)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    .line 435
    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 436
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v7, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->initCropFromCalculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ILcom/miui/home/recents/util/RemoteAnimationTargetSet;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 437
    iget-object v11, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v11

    if-nez v11, :cond_0

    move v11, v12

    goto :goto_0

    :cond_0
    move v11, v13

    :goto_0
    const/4 v14, 0x2

    if-nez v11, :cond_1

    .line 440
    iget-object v4, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-eqz v4, :cond_1

    array-length v15, v4

    if-lt v15, v14, :cond_1

    aget-object v15, v4, v13

    iget-object v15, v15, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    if-nez v15, :cond_1

    aget-object v4, v4, v12

    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-nez v4, :cond_1

    move v4, v12

    goto :goto_1

    :cond_1
    move v4, v13

    .line 445
    :goto_1
    iget v15, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    invoke-static {v1, v15}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->getLayer(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)I

    move-result v15

    .line 446
    iget v12, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v13, p5

    if-ne v12, v13, :cond_d

    .line 447
    iget v6, v5, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 448
    iget v12, v5, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    .line 449
    iget v13, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    if-eq v13, v14, :cond_c

    .line 450
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 452
    new-instance v9, Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-direct {v9, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 453
    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    invoke-virtual {v9, v14, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 454
    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    move/from16 p5, v6

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v13, v14, v9, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move/from16 p7, v12

    goto/16 :goto_3

    :cond_2
    move/from16 p5, v6

    .line 460
    iget-boolean v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isElement:Z

    if-eqz v6, :cond_4

    .line 461
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 462
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 463
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v12, v9, Landroid/graphics/RectF;->left:F

    .line 464
    iget v9, v9, Landroid/graphics/RectF;->top:F

    mul-float v9, v9, v16

    .line 465
    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v12, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 466
    invoke-direct {v0, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyTranslateIfNeeded(F)V

    .line 467
    iget-boolean v6, v5, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isElementHidden:Z

    if-eqz v6, :cond_3

    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    move/from16 v13, v16

    :goto_2
    move/from16 v16, v13

    goto/16 :goto_4

    .line 468
    :cond_4
    invoke-direct {v0, v7, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isNeedMatrixScaleAndTranslate(IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 469
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float v6, v6, v16

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 470
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 471
    iget-object v9, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v9, v13

    .line 472
    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->left:F

    mul-float v14, v14, v16

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float/2addr v9, v13

    add-float/2addr v14, v9

    .line 473
    iget-object v9, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v9, v13

    .line 474
    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    move/from16 p7, v12

    iget v12, v13, Landroid/graphics/RectF;->top:F

    mul-float v12, v12, v16

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v9, v13

    add-float/2addr v12, v9

    .line 475
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v14, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 478
    invoke-direct {v0, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyTranslateIfNeeded(F)V

    goto :goto_3

    :cond_5
    move/from16 p7, v12

    .line 479
    invoke-direct {v0, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isRightSplitSelect(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 480
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    .line 481
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 v12, 0x0

    invoke-virtual {v9, v6, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    .line 482
    :cond_6
    invoke-direct {v0, v7, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isSoscSingleTask(IZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 483
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float v6, v6, v16

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 484
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 485
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/RectF;->left:F

    mul-float v9, v9, v16

    .line 486
    iget v6, v6, Landroid/graphics/RectF;->top:F

    mul-float v6, v6, v16

    .line 487
    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v9, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_7
    :goto_3
    move/from16 v16, p7

    :goto_4
    if-eqz v11, :cond_8

    .line 492
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v10}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 493
    invoke-direct {v0, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isRightSplitSelect(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 494
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-static {v10, v4, v6}, Lcom/miui/home/launcher/common/Utilities;->offsetTo(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    .line 497
    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-lez v4, :cond_a

    .line 498
    :cond_9
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 501
    :cond_a
    :goto_5
    invoke-direct {v0, v8, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isNeedUpdateCurrentRect(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    .line 502
    invoke-virtual {v8, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setFirst(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    .line 503
    invoke-virtual {v6, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setX(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 504
    invoke-virtual {v6, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setY(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move/from16 v6, p11

    .line 505
    invoke-virtual {v0, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateCurrentRectWithInsets(Z)V

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    move/from16 v13, p5

    goto :goto_7

    :cond_c
    move/from16 p5, v6

    move/from16 p7, v12

    const/4 v4, 0x0

    move/from16 v13, p5

    move/from16 v7, p7

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 508
    iget v7, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    if-ne v7, v14, :cond_f

    if-eqz v6, :cond_f

    .line 509
    iget v7, v6, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    .line 510
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v8

    if-nez v8, :cond_e

    .line 511
    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v6, v6, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    iget-object v11, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v6, v6, v9, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :cond_e
    move v13, v12

    goto :goto_8

    :cond_f
    move v13, v12

    :goto_7
    move/from16 v7, v16

    .line 517
    :goto_8
    new-instance v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v6, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 519
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 520
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {v0, v10}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    .line 522
    invoke-virtual {v0, v15}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withLayer(I)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {v0, v13}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    iget-object v1, v5, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    if-nez v1, :cond_10

    const/4 v13, 0x1

    goto :goto_9

    :cond_10
    move v13, v4

    .line 524
    :goto_9
    invoke-virtual {v0, v13}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withDeferAnimation(Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 525
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withShow(Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    if-eqz v2, :cond_11

    .line 527
    iget-object v1, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withRelativeLayerTo(Landroid/view/SurfaceControl;I)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    :cond_11
    if-eqz v3, :cond_12

    .line 530
    iget-object v1, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withHomeLayer(Landroid/view/SurfaceControl;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 533
    :cond_12
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v0

    return-object v0
.end method

.method private initCropFromCalculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ILcom/miui/home/recents/util/RemoteAnimationTargetSet;)Landroid/graphics/Rect;
    .locals 3

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 175
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 178
    :cond_2
    iget-object p0, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->cropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 179
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    goto :goto_3

    .line 176
    :cond_3
    :goto_1
    iget-object p0, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    move p0, v1

    .line 184
    :goto_3
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0
.end method

.method private initCurrentRect(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)Landroid/graphics/RectF;
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 551
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 552
    iget v1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 555
    iget-boolean v0, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isHorizontalClipBySmallWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 557
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 566
    iget-boolean v0, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    if-nez v0, :cond_2

    iget v0, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget p1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    div-float/2addr p2, p1

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 569
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 572
    :goto_1
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private isHorizontalClipBySmallWindow()Z
    .locals 0

    .line 669
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 670
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 671
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isHorizontalClip()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isIgnoreTranslateSurface()Z
    .locals 1

    .line 679
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mIsUseForHomeGesture:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedMatrixScaleAndTranslate(IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 351
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 354
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 357
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isSoscSingleTask(IZ)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isNeedUpdateCurrentRect(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 2

    .line 543
    iget-boolean p0, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isElement:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 546
    :cond_0
    iget-boolean p0, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mFirst:Z

    if-nez p0, :cond_1

    iget-object p0, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p2, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mX:I

    if-lt p2, v1, :cond_1

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mY:I

    if-ge p0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isRightSplitSelect(I)Z
    .locals 0

    .line 344
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSoscSingleTask(IZ)Z
    .locals 0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private modifyTranslateIfNeeded(F)V
    .locals 1

    .line 537
    invoke-direct {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isHorizontalClipBySmallWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr p0, p1

    neg-float p0, p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    return-void
.end method

.method private updateClipRectF(Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)V
    .locals 6

    .line 648
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 650
    iget-boolean v0, p2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isClipFromLeftOrTop:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isHorizontalClipBySmallWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 652
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, p3

    sub-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 653
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->right:F

    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float v1, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float v2, p0

    iget-boolean v3, p2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isClipFromLeftOrTop:Z

    iget-boolean v4, p2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/util/Utilities;->handleClipRect(Landroid/graphics/RectF;FFZZF)V

    return-void
.end method

.method private updateStackBoundsToMultiWindowTaskSize(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public applyTransformHalfTask(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;II)Landroid/graphics/RectF;
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v4, p1

    move-object/from16 v13, p2

    move/from16 v0, p4

    const/4 v1, 0x0

    if-nez v4, :cond_0

    return-object v1

    .line 377
    :cond_0
    iget v2, v13, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 378
    iget v3, v13, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    mul-float/2addr v3, v2

    .line 380
    iget-object v5, v12, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 381
    invoke-direct {v12, v5, v13, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateClipRectF(Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)V

    .line 383
    invoke-direct {v12, v13, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->initCurrentRect(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, v12, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 385
    iget-object v3, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    const/4 v2, 0x1

    new-array v14, v2, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 392
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    invoke-direct {v3, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper;)V

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setFirst(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setX(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setY(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v9

    move-object v2, v1

    move-object v3, v2

    move v5, v15

    .line 397
    :goto_0
    iget-object v6, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v7, v6

    if-ge v5, v7, :cond_5

    .line 398
    aget-object v7, v6, v5

    iget v7, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v7, v0, :cond_2

    aget-object v7, v6, v5

    iget v7, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    iget v8, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    if-ne v7, v8, :cond_2

    .line 400
    aget-object v1, v6, v5

    .line 402
    :cond_2
    aget-object v7, v6, v5

    iget v7, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-eq v7, v0, :cond_3

    aget-object v7, v6, v5

    iget v7, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    iget v8, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    if-ne v7, v8, :cond_3

    aget-object v7, v6, v5

    iget v7, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v8, 0x7f2

    if-eq v7, v8, :cond_3

    .line 405
    aget-object v2, v6, v5

    .line 407
    :cond_3
    aget-object v7, v6, v5

    iget v7, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 408
    aget-object v3, v6, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    .line 413
    iget-object v0, v12, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object v0

    .line 418
    :cond_6
    iget v5, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p5

    invoke-direct/range {v0 .. v11}, Lcom/miui/home/recents/util/ClipAnimationHelper;->calculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;ZZ)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v0

    aput-object v0, v14, v15

    .line 420
    iget-object v0, v13, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v12, v0, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 421
    iget-object v0, v12, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    return-object v0
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;I)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;I)Landroid/graphics/RectF;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;IZ)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;IZ)Landroid/graphics/RectF;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    if-nez v13, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    iget v1, v14, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 249
    iget v2, v14, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    mul-float/2addr v2, v1

    move/from16 v15, p4

    .line 251
    invoke-virtual {v0, v15}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 252
    invoke-direct {v0, v3, v14, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateClipRectF(Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)V

    .line 254
    invoke-direct {v0, v14, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->initCurrentRect(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 262
    iget-object v2, v13, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v2, :cond_1

    return-object v1

    .line 267
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyTransformNew::mCurrentRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 268
    iget-object v1, v13, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    new-array v12, v1, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 271
    new-instance v1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setFirst(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setX(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setY(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v16

    move v11, v2

    .line 273
    :goto_0
    iget-object v1, v13, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v2, v1

    if-ge v11, v2, :cond_2

    .line 276
    aget-object v2, v1, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 277
    iget v6, v13, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, v16

    move/from16 v18, v11

    move/from16 v11, p5

    move-object v13, v12

    move/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Lcom/miui/home/recents/util/ClipAnimationHelper;->calculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;ZZ)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v1

    aput-object v1, v13, v18

    add-int/lit8 v11, v18, 0x1

    move-object v12, v13

    move-object/from16 v13, p1

    goto :goto_0

    :cond_2
    move-object v13, v12

    .line 290
    iget-object v1, v14, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, v1, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 295
    iget-object v0, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    return-object v0

    :catchall_0
    move-exception v0

    .line 292
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 293
    throw v0
.end method

.method public applyTransformThreeGesture(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 586
    :cond_0
    iget v3, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 587
    iget v4, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    mul-float/2addr v4, v3

    .line 589
    iget-object v5, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v5, v2, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateClipRectF(Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)V

    .line 591
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 592
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 593
    iget v6, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    iput v6, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v4

    .line 594
    iput v6, v3, Landroid/graphics/RectF;->bottom:F

    .line 595
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 597
    iget-object v3, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v3, :cond_1

    .line 598
    iget-object v0, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object v0

    .line 601
    :cond_1
    array-length v3, v3

    new-array v3, v3, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    const/4 v5, 0x0

    move v6, v5

    move v8, v6

    move v9, v8

    const/4 v7, 0x1

    .line 606
    :goto_0
    iget-object v10, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v10, v10

    if-ge v6, v10, :cond_6

    .line 607
    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 608
    iget-object v10, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v10, v10, v6

    .line 609
    iget-object v11, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 610
    invoke-virtual {v11, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v13, 0x0

    .line 613
    iget v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    invoke-static {v10, v14}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->getLayer(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)I

    move-result v14

    .line 614
    iget v15, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    iget v12, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    if-ne v15, v12, :cond_3

    .line 615
    iget v13, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 616
    iget v12, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    .line 617
    iget v15, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v4, 0x2

    if-eq v15, v4, :cond_4

    .line 618
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v11}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    if-nez v7, :cond_2

    .line 620
    iget-object v4, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v15, v4, Landroid/graphics/Point;->x:I

    if-lt v15, v8, :cond_2

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ge v4, v9, :cond_4

    .line 622
    :cond_2
    iget-object v4, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v8, v4, Landroid/graphics/Point;->x:I

    .line 623
    iget v9, v4, Landroid/graphics/Point;->y:I

    .line 624
    invoke-virtual {v0, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateCurrentRectWithInsets(Z)V

    move v7, v5

    goto :goto_1

    :cond_3
    const/high16 v12, 0x3f800000    # 1.0f

    .line 630
    :cond_4
    :goto_1
    new-instance v4, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v10, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v10, v10, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v4, v10}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 631
    invoke-virtual {v4, v12}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 632
    invoke-virtual {v4, v10}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    .line 633
    invoke-virtual {v4, v11}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    iget-object v10, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    if-nez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    move v10, v5

    .line 634
    :goto_2
    invoke-virtual {v4, v10}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withDeferAnimation(Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    .line 635
    invoke-virtual {v4, v14}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withLayer(I)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    .line 636
    invoke-virtual {v4, v13}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    const/4 v10, 0x1

    .line 637
    invoke-virtual {v4, v10}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withShow(Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    .line 638
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v4

    aput-object v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 642
    :cond_6
    iget-object v1, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, v1, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 644
    iget-object v0, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    return-object v0
.end method

.method public fromTaskThumbnailView(Lcom/miui/home/recents/views/TaskViewThumbnail;Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 6

    .line 735
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 739
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 740
    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p3, :cond_0

    .line 743
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    .line 744
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->shouldUseMultiWindowTaskSizeStrategy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    invoke-direct {p0, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateStackBoundsToMultiWindowTaskSize(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 748
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-array v0, v2, [F

    .line 752
    invoke-static {p1, p2, v0, v5, v5}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 753
    new-instance p2, Landroid/graphics/Rect;

    aget v1, v0, v5

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    aget v4, v0, v5

    .line 754
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p2, v1, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 756
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    if-nez p3, :cond_2

    .line 762
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    .line 763
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->left:F

    .line 764
    iget p2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 765
    iget p2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->right:F

    .line 766
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method public getScaleBySmallWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;)F
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 664
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isHorizontalClipBySmallWindow()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    :goto_0
    div-float/2addr p0, p1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSourceRect()Landroid/graphics/RectF;
    .locals 0

    .line 779
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getSourceStackBounds()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSourceStackBounds(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    return-object p0

    .line 145
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSplitSingleSourceStackBounds()Landroid/graphics/Rect;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTargetRect()Landroid/graphics/RectF;
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public modifyRectFToHome(Landroid/graphics/RectF;)V
    .locals 3

    .line 705
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-virtual {p1, v1, p0}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public modifyRectFToSource(Landroid/graphics/RectF;)V
    .locals 3

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performAppToRecents modifyRectFToSource rectF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mHomeStackBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sourceBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClipAnimationHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 696
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    .line 701
    invoke-virtual {p1, v1, p0}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public prepareAnimation(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 230
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    return-void
.end method

.method public setIsUseForHomeGesture(Z)V
    .locals 0

    .line 675
    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mIsUseForHomeGesture:Z

    return-void
.end method

.method public shouldVerticalClip(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    const/4 p0, 0x1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 365
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 366
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr v0, p2

    .line 367
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p2, p3

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float p1, p2, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, p3

    :cond_2
    :goto_0
    return p0
.end method

.method public updateCurrentRectWithInsets(Z)V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 684
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isIgnoreTranslateSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 687
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isSplitRadio1_9Mode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isSplitRadio9_1Mode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_2

    .line 688
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_2
    return-void
.end method

.method public updateHomeStack(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateHomeStack  mSourceInsets="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mHomeStackBounds="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClipAnimationHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 4

    const-string v0, "ClipAnimationHelper"

    if-nez p1, :cond_0

    const-string p0, "updateSourceStack, target=null"

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 97
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->cropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 98
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_3

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    :cond_3
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 109
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSourceStack  mSourceInsets="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceStackBounds="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSourceStackBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSourceStackBounds  sourceBounds="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClipAnimationHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)V

    return-void
.end method

.method public updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)V
    .locals 6

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 119
    iget-object p1, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 120
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isDockDivider()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 123
    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    :goto_1
    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    const-string p2, "ClipAnimationHelper"

    if-lez p1, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_4

    .line 133
    :cond_4
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isNormalMode()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v2, 0x1

    .line 134
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->cropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSourceStackBounds, mSourceStackBounds="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_4
    const-string p0, "updateSourceStackBounds, rect is invalid"

    .line 129
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSplitSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "ClipAnimationHelper"

    const-string p1, "updateSplitSourceStackBounds: splitSingleOpenTarget is null, return"

    .line 161
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public updateTargetRect(Landroid/graphics/Rect;)V
    .locals 8

    .line 201
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 202
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 203
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 201
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 204
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 211
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 212
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 211
    invoke-static {v0, v1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 213
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 214
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 216
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 217
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 218
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 214
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTargetRect  mSourceRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   mTargetRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   mSourceWindowClipInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   mHomeStackBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "   targetRect="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClipAnimationHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
