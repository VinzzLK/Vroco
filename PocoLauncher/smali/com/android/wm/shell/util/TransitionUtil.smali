.class public Lcom/android/wm/shell/util/TransitionUtil;
.super Ljava/lang/Object;
.source "TransitionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;
    }
.end annotation


# static fields
.field public static final FLAG_IS_DIVIDER_BAR:I

.field public static final FLAG_TRANSIT_IN_SOSC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/android/wm/shell/util/TransitionUtil;->getDividerBarFlag()I

    move-result v0

    sput v0, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_IS_DIVIDER_BAR:I

    .line 74
    invoke-static {}, Lcom/android/wm/shell/util/TransitionUtil;->getTransitInSoscFlag()I

    move-result v0

    sput v0, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    return-void
.end method

.method public static checkVisibleRequestValue(Landroid/window/TransitionInfo$Change;Z)Z
    .locals 5

    .line 116
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "isVisibleRequested"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Landroid/view/SurfaceControl;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p3

    move-object/from16 v1, p5

    .line 413
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v2

    .line 414
    invoke-static {p1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v8

    .line 415
    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "TransitionUtil"

    if-eqz p4, :cond_3

    .line 426
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get key :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "get key fail"

    .line 429
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_3

    .line 432
    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->getLeashFromCache(Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 434
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 435
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->containsTaskId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->getOpenLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 437
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "reuse openLeash"

    .line 438
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    :cond_1
    const/high16 v4, -0x80000000

    .line 442
    invoke-virtual {v8, v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->getElementLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 444
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "reuse elementLeash"

    .line 445
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 450
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->getRoot()Landroid/view/SurfaceControl;

    move-result-object v0

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :cond_3
    move-object v0, v4

    :goto_2
    if-nez v4, :cond_4

    .line 454
    invoke-static {v8, v2}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Lcom/android/hideapi/TransitionInfoExpose;)I

    move-result v4

    .line 455
    invoke-virtual {v2, v4}, Lcom/android/hideapi/TransitionInfoExpose;->getRoot(I)Lcom/android/hideapi/TransitionInfoExpose$RootExpose;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 457
    :cond_4
    invoke-virtual {v7, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 458
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rootLeash = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v0, :cond_6

    .line 461
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    .line 481
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get reuse leash = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", key = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    goto :goto_5

    :cond_6
    :goto_3
    const/4 v0, 0x1

    if-eqz v1, :cond_7

    .line 464
    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->removeLeashFromCache(Ljava/lang/String;)Landroid/view/SurfaceControl;

    .line 466
    :cond_7
    new-instance v5, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TL_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v9}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_transition-leash"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 466
    invoke-static {v5}, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;->box(Landroid/view/SurfaceControl$Builder;)Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;

    move-result-object v5

    .line 468
    invoke-virtual {v5}, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;->setContainerLayer()Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;->unbox()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 470
    invoke-virtual {v5, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 471
    invoke-static {v4, v10}, Lcom/android/wm/shell/util/TransitionUtil;->setHidden(Landroid/view/SurfaceControl$Builder;Z)Landroid/view/SurfaceControl$Builder;

    .line 472
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v1, :cond_9

    if-eqz p4, :cond_8

    .line 475
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->saveLeash(Ljava/lang/String;Landroid/view/SurfaceControl;)V

    goto :goto_4

    .line 477
    :cond_8
    invoke-virtual {v1, v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->tempSaveLeash(Landroid/view/SurfaceControl;)V

    :cond_9
    :goto_4
    move v6, v0

    move-object v0, v4

    .line 484
    :goto_5
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v3, v1, p2

    move-object v1, v0

    move-object v2, p1

    move-object v4, p0

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/util/TransitionUtil;->setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 485
    invoke-virtual {v7, v9, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 486
    invoke-virtual {v7, v9, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 487
    invoke-virtual {v7, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 488
    invoke-static {v8}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    .line 491
    invoke-virtual {v7, v9, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 493
    :cond_a
    invoke-virtual {v7, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method private static getCornerRadius(Landroid/window/TransitionInfo$Change;)F
    .locals 6

    .line 384
    const-class v0, Landroid/window/TransitionInfo$Change;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v2, "getCornerRadius"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static getDividerBarFlag()I
    .locals 3

    const-string v0, "android.window.TransitionInfo"

    .line 137
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "FLAG_FIRST_CUSTOM"

    .line 136
    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "TransitionUtil"

    const-string v1, "getDividerBarFlag: return null from reflection, use default value 0"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static getDividerTarget(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;
    .locals 19

    move-object/from16 v18, p0

    move-object/from16 v2, p1

    .line 617
    invoke-static/range {p0 .. p0}, Lcom/android/wm/shell/util/TransitionUtil;->newModeToLegacyMode(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)I

    move-result v1

    new-instance v0, Landroid/graphics/Point;

    move-object v7, v0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v0, Landroid/app/WindowConfiguration;

    move-object v10, v0

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7f2

    const-string v17, ""

    .line 617
    invoke-static/range {v0 .. v18}, Lcom/android/wm/shell/util/TransitionUtil;->newTargetObject(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZILjava/lang/String;Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private static getTransitInSoscFlag()I
    .locals 3

    const-string v0, "android.window.TransitionInfo"

    .line 150
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "FLAG_TRANSIT_IN_SOSC"

    .line 149
    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "TransitionUtil"

    const-string v1, "getTransitInSoscFlag: return null from reflection, use default value 0"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static hasDisplayChange(Lcom/android/hideapi/TransitionInfoExpose;)Z
    .locals 5

    .line 169
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 171
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static hasElementCloseByApp(Lcom/android/hideapi/TransitionInfoExpose;)Z
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasHorizontalChange(Lcom/android/hideapi/TransitionInfoExpose;)Z
    .locals 4

    .line 834
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 836
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 837
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v3, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isAppOpening(Landroid/window/TransitionInfo;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v0

    move v4, v3

    move v5, v4

    .line 783
    :goto_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ge v3, v6, :cond_6

    .line 784
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 785
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    .line 786
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    const/4 v11, 0x2

    if-eqz v10, :cond_0

    .line 788
    invoke-static {v10}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v10

    if-ne v10, v11, :cond_0

    move-object v2, v6

    move v1, v9

    goto :goto_4

    :cond_0
    const/4 v10, 0x4

    if-nez v4, :cond_3

    if-eq v9, v8, :cond_1

    if-ne v9, v7, :cond_2

    .line 794
    :cond_1
    invoke-virtual {v6, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v8

    :goto_2
    if-nez v5, :cond_5

    if-ne v9, v11, :cond_4

    .line 796
    invoke-virtual {v6, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v0

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v8

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    if-ne v1, v7, :cond_7

    return v8

    :cond_7
    if-eqz v2, :cond_8

    .line 807
    invoke-static {v1, v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(ILandroid/window/TransitionInfo$Change;)Z

    move-result p0

    xor-int/2addr p0, v8

    return p0

    .line 810
    :cond_8
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 811
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 812
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    xor-int/2addr p0, v8

    return p0

    .line 814
    :cond_9
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    return p0
.end method

.method public static isChangeModeClosing(Landroid/window/TransitionInfo$Change;)Z
    .locals 2

    .line 112
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isNotVisibleRequestAndNotHasMoveToTopFlag(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChangeModeOpening(Landroid/window/TransitionInfo$Change;)Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isVisibleRequestOrHasMoveToTopFlag(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChangeOpen(Landroid/window/TransitionInfo$Change;)Z
    .locals 3

    .line 129
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 130
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 131
    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeModeOpening(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isClosingType(Landroid/window/TransitionInfo$Change;)Z
    .locals 2

    .line 95
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 96
    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeModeClosing(Landroid/window/TransitionInfo$Change;)Z

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

.method public static isDividerBar(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_IS_DIVIDER_BAR:I

    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isElementType(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    const/high16 v0, -0x80000000

    .line 90
    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    return p0
.end method

.method public static isHome(Landroid/window/TransitionInfo$Change;)Z
    .locals 2

    .line 218
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isHome(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isNonApp(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    .line 188
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x200

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNotVisibleRequestAndNotHasMoveToTopFlag(Landroid/window/TransitionInfo$Change;)Z
    .locals 2

    const/high16 v0, 0x100000

    .line 125
    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Lcom/android/wm/shell/util/TransitionUtil;->checkVisibleRequestValue(Landroid/window/TransitionInfo$Change;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isOpeningType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const v1, 0x7ffffffc

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x14

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isOpeningType(ILandroid/window/TransitionInfo$Change;)Z
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeModeOpening(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method

.method public static isOrderOnly(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVisibleRequestOrHasMoveToTopFlag(Landroid/window/TransitionInfo$Change;)Z
    .locals 2

    const/high16 v0, 0x100000

    .line 121
    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/android/wm/shell/util/TransitionUtil;->checkVisibleRequestValue(Landroid/window/TransitionInfo$Change;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isWallpaper(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    .line 180
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mapSplitRationToSnapPosition(F)I
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpg-double p0, v0, v2

    if-gez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double p0, v0, v2

    if-lez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static newModeToLegacyMode(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)I
    .locals 5

    .line 265
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_0

    return v3

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isVisibleRequestOrHasMoveToTopFlag(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isNotVisibleRequestAndNotHasMoveToTopFlag(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;
    .locals 1

    const/4 v0, 0x0

    .line 519
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;
    .locals 23

    .line 529
    invoke-static/range {p0 .. p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v14

    .line 530
    invoke-static {v14}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p2

    .line 531
    invoke-static {v14, v2}, Lcom/android/wm/shell/util/TransitionUtil;->getDividerTarget(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v2, p2

    .line 539
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    const/4 v10, 0x1

    const/4 v8, 0x0

    if-eqz v11, :cond_1

    .line 541
    iget v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 542
    iget-boolean v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    xor-int/2addr v1, v10

    .line 544
    :try_start_0
    iget-object v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v3}, Lmiui/content/res/ConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/ConfigurationExpose;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/content/res/ConfigurationExpose;->getWindowConfiguration()Lmiui/content/res/WindowConfigurationExpose;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/content/res/WindowConfigurationExpose;->unbox()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WindowConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "TransitionUtil"

    const-string/jumbo v4, "unbox get windowConfiguration fail"

    .line 546
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v3, Landroid/app/WindowConfiguration;

    invoke-direct {v3}, Landroid/app/WindowConfiguration;-><init>()V

    .line 548
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    sget-object v18, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v4, v10, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    new-array v5, v10, [Ljava/lang/Object;

    .line 550
    invoke-static {v11}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v17, "setActivityType"

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 548
    invoke-static/range {v15 .. v20}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getPackageNameFromTaskInfo(Landroid/app/TaskInfo;)Ljava/lang/String;

    move-result-object v4

    move/from16 v18, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 556
    new-instance v1, Landroid/app/WindowConfiguration;

    invoke-direct {v1}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    move/from16 v18, v10

    .line 560
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 561
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 565
    invoke-static {v14}, Lcom/android/wm/shell/util/TransitionUtil;->newModeToLegacyMode(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)I

    move-result v1

    if-nez p3, :cond_3

    .line 569
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v10

    :goto_3
    const/4 v4, 0x0

    new-instance v7, Landroid/graphics/Rect;

    move-object v5, v7

    invoke-direct {v7, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    new-instance v12, Landroid/graphics/Rect;

    move-object v9, v12

    .line 576
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v12, 0x0

    new-instance v15, Landroid/graphics/Rect;

    move-object v13, v15

    .line 580
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v15, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 582
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getAllowEnterPip()Z

    move-result v15

    const/16 v16, -0x1

    move-object/from16 v2, p2

    move-object v8, v6

    move/from16 v6, p1

    const/16 v20, 0x0

    move/from16 v21, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v11

    move/from16 v11, v18

    move-object/from16 v22, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v22

    .line 563
    invoke-static/range {v0 .. v18}, Lcom/android/wm/shell/util/TransitionUtil;->newTargetObject(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZILjava/lang/String;Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 587
    invoke-virtual/range {v22 .. v22}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_4

    move/from16 v10, v21

    goto :goto_4

    :cond_4
    move/from16 v10, v20

    :goto_4
    invoke-static {v0, v10}, Lcom/android/wm/shell/util/TransitionUtil;->setWillShowImeOnTarget(Landroid/view/RemoteAnimationTarget;Z)V

    .line 588
    invoke-virtual/range {v22 .. v22}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v1

    invoke-virtual/range {v22 .. v22}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartRotation()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/wm/shell/util/TransitionUtil;->setRotationChange(Landroid/view/RemoteAnimationTarget;I)V

    .line 589
    invoke-virtual/range {v22 .. v22}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getBackgroundColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/wm/shell/util/TransitionUtil;->setBackgroundColor(Landroid/view/RemoteAnimationTarget;I)V

    return-object v0
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Landroid/view/RemoteAnimationTarget;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo$Change;",
            "I",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;Z",
            "Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;",
            ")",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    .line 506
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/util/TransitionUtil;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p4, :cond_0

    .line 508
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p3

    invoke-virtual {p4, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method private static newTargetObject(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZILjava/lang/String;Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Landroid/view/RemoteAnimationTarget;
    .locals 26

    .line 659
    const-class v0, Ljava/lang/String;

    const/high16 v1, -0x80000000

    move-object/from16 v2, p18

    invoke-virtual {v2, v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v1

    const/16 v5, 0xf

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-eqz v1, :cond_0

    .line 661
    const-class v1, Landroid/view/RemoteAnimationTarget;

    const/16 v3, 0x14

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v4, v20

    aput-object v23, v4, v19

    const-class v24, Landroid/view/SurfaceControl;

    aput-object v24, v4, v18

    sget-object v24, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v24, v4, v17

    const-class v25, Landroid/graphics/Rect;

    aput-object v25, v4, v16

    const-class v25, Landroid/graphics/Rect;

    aput-object v25, v4, v15

    aput-object v23, v4, v14

    const-class v25, Landroid/graphics/Point;

    aput-object v25, v4, v13

    const-class v25, Landroid/graphics/Rect;

    aput-object v25, v4, v12

    const-class v25, Landroid/graphics/Rect;

    aput-object v25, v4, v11

    const-class v25, Landroid/app/WindowConfiguration;

    aput-object v25, v4, v10

    aput-object v24, v4, v9

    const-class v25, Landroid/view/SurfaceControl;

    aput-object v25, v4, v8

    const-class v25, Landroid/graphics/Rect;

    aput-object v25, v4, v7

    const-class v25, Landroid/app/ActivityManager$RunningTaskInfo;

    aput-object v25, v4, v6

    aput-object v24, v4, v5

    const/16 v22, 0x10

    aput-object v23, v4, v22

    const/16 v21, 0x11

    aput-object v0, v4, v21

    const/16 v0, 0x12

    aput-object v24, v4, v0

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x13

    aput-object v0, v4, v23

    new-array v0, v3, [Ljava/lang/Object;

    .line 684
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v20

    .line 685
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v19

    aput-object p2, v0, v18

    .line 687
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v17

    aput-object p4, v0, v16

    aput-object p5, v0, v15

    .line 690
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v14

    aput-object p7, v0, v13

    aput-object p8, v0, v12

    aput-object p9, v0, v11

    aput-object p10, v0, v10

    .line 695
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v9

    aput-object p12, v0, v8

    aput-object p13, v0, v7

    aput-object p14, v0, v6

    .line 699
    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v5

    .line 700
    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x10

    aput-object v3, v0, v5

    const/16 v3, 0x11

    aput-object p17, v0, v3

    .line 702
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x12

    aput-object v3, v0, v5

    .line 703
    invoke-virtual/range {p18 .. p18}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getCornerRadius()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v23

    .line 661
    invoke-static {v1, v4, v0}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    return-object v0

    :cond_0
    const/16 v1, 0x12

    .line 705
    const-class v2, Landroid/view/RemoteAnimationTarget;

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v3, v20

    aput-object v1, v3, v19

    const-class v4, Landroid/view/SurfaceControl;

    aput-object v4, v3, v18

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v17

    const-class v23, Landroid/graphics/Rect;

    aput-object v23, v3, v16

    const-class v23, Landroid/graphics/Rect;

    aput-object v23, v3, v15

    aput-object v1, v3, v14

    const-class v23, Landroid/graphics/Point;

    aput-object v23, v3, v13

    const-class v23, Landroid/graphics/Rect;

    aput-object v23, v3, v12

    const-class v23, Landroid/graphics/Rect;

    aput-object v23, v3, v11

    const-class v23, Landroid/app/WindowConfiguration;

    aput-object v23, v3, v10

    aput-object v4, v3, v9

    const-class v23, Landroid/view/SurfaceControl;

    aput-object v23, v3, v8

    const-class v23, Landroid/graphics/Rect;

    aput-object v23, v3, v7

    const-class v23, Landroid/app/ActivityManager$RunningTaskInfo;

    aput-object v23, v3, v6

    aput-object v4, v3, v5

    const/16 v4, 0x10

    aput-object v1, v3, v4

    const/16 v1, 0x11

    aput-object v0, v3, v1

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    .line 726
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v20

    .line 727
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v19

    aput-object p2, v0, v18

    .line 729
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v17

    aput-object p4, v0, v16

    aput-object p5, v0, v15

    .line 732
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v14

    aput-object p7, v0, v13

    aput-object p8, v0, v12

    aput-object p9, v0, v11

    aput-object p10, v0, v10

    .line 737
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v9

    aput-object p12, v0, v8

    aput-object p13, v0, v7

    aput-object p14, v0, v6

    .line 741
    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    .line 742
    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const/16 v1, 0x11

    aput-object p17, v0, v1

    .line 705
    invoke-static {v2, v3, v0}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public static reorderWindow(Landroid/window/TransitionInfo$Change;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    const-string v0, "TransitionUtil"

    if-nez p1, :cond_0

    return-void

    .line 760
    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 762
    :try_start_0
    const-class v1, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 763
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerToken;

    .line 764
    invoke-virtual {p1, v1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 765
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get WindowContainerToken success wct = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wct as binder = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", container = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", container as binder = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 765
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "get WindowContainerToken fail"

    .line 770
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static rootIndexFor(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Lcom/android/hideapi/TransitionInfoExpose;)I
    .locals 1

    .line 633
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/hideapi/TransitionInfoExpose;->findRootIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/hideapi/TransitionInfoExpose;->findRootIndex(I)I

    move-result p0

    if-ltz p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static setBackgroundColor(Landroid/view/RemoteAnimationTarget;I)V
    .locals 2

    .line 612
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "backgroundColor"

    invoke-static {p0, v1, v0, p1}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private static setCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 8

    .line 401
    const-class v0, Landroid/view/SurfaceControl$Transaction;

    const-class v3, Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-class v2, Landroid/graphics/Rect;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    const-string/jumbo v2, "setCrop"

    move-object v1, p0

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method private static setHidden(Landroid/view/SurfaceControl$Builder;Z)Landroid/view/SurfaceControl$Builder;
    .locals 7

    .line 748
    const-class v0, Landroid/view/SurfaceControl$Builder;

    const-class v3, Landroid/view/SurfaceControl$Builder;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 753
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v5

    const-string/jumbo v2, "setHidden"

    move-object v1, p0

    move-object v5, v6

    .line 748
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Builder;

    return-object p0
.end method

.method private static setRotationChange(Landroid/view/RemoteAnimationTarget;I)V
    .locals 7

    .line 603
    const-class v0, Landroid/view/RemoteAnimationTarget;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 608
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    const-string/jumbo v2, "setRotationChange"

    move-object v1, p0

    move-object v5, v6

    .line 603
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static setScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .locals 9

    .line 392
    const-class v0, Landroid/view/SurfaceControl$Transaction;

    const-class v3, Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const/4 v7, 0x2

    aput-object v2, v4, v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object p1, v8, v5

    .line 397
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v8, v6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v8, v7

    const-string/jumbo v2, "setScale"

    move-object v1, p0

    move-object v5, v8

    .line 392
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method private static setWillShowImeOnTarget(Landroid/view/RemoteAnimationTarget;Z)V
    .locals 7

    .line 594
    const-class v0, Landroid/view/RemoteAnimationTarget;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 599
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v5

    const-string/jumbo v2, "setWillShowImeOnTarget"

    move-object v1, p0

    move-object v5, v6

    .line 594
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static setupElementLeash(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 7

    .line 370
    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isElementType(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 373
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/2addr v2, v3

    .line 374
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, v1

    div-float/2addr v3, v5

    .line 375
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, p2, v5}, Lcom/android/wm/shell/util/TransitionUtil;->setCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 376
    invoke-static {p1, p2, v3, v3}, Lcom/android/wm/shell/util/TransitionUtil;->setScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 377
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 378
    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->getCornerRadius(Landroid/window/TransitionInfo$Change;)F

    move-result p0

    div-float/2addr p0, v3

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 379
    invoke-virtual {p1, p2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method private static setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 296
    invoke-static {p3}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v0

    .line 297
    invoke-static {p1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v1

    .line 298
    invoke-static {p3}, Lcom/android/wm/shell/util/TransitionUtil;->isAppOpening(Landroid/window/TransitionInfo;)Z

    move-result p3

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupLeash isAppOpening = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransitionUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 303
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v4

    .line 305
    invoke-static {v1, v0}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Lcom/android/hideapi/TransitionInfoExpose;)I

    move-result v5

    const/4 v6, 0x1

    if-eqz p5, :cond_1

    if-ne v4, v6, :cond_0

    .line 308
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p5

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p5

    .line 309
    :goto_0
    iget v7, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v5}, Lcom/android/hideapi/TransitionInfoExpose;->getRoot(I)Lcom/android/hideapi/TransitionInfoExpose$RootExpose;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->getOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget p5, p5, Landroid/graphics/Rect;->top:I

    .line 310
    invoke-virtual {v0, v5}, Lcom/android/hideapi/TransitionInfoExpose;->getRoot(I)Lcom/android/hideapi/TransitionInfoExpose$RootExpose;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->getOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr p5, v5

    int-to-float p5, p5

    .line 309
    invoke-virtual {p4, p0, v7, p5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 314
    :cond_1
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result p5

    const/4 v5, 0x0

    const-string v7, ", layer = "

    if-eqz p5, :cond_3

    .line 315
    invoke-static {v4, p1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(ILandroid/window/TransitionInfo$Change;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 316
    invoke-virtual {p4, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 320
    :cond_2
    invoke-virtual {p4, p0, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setLayer leash1 = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p4, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 327
    :cond_3
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result p5

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_6

    if-eq v4, v6, :cond_5

    const/4 p1, 0x3

    if-ne v4, p1, :cond_4

    goto :goto_1

    .line 333
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setLayer leash3 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p3, v2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p4, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_2

    .line 330
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setLayer leash2 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p3, v2

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    add-int/2addr p5, p3

    sub-int/2addr p5, p2

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p3, p1

    sub-int/2addr p3, p2

    invoke-virtual {p4, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_2

    .line 336
    :cond_6
    invoke-static {v4, p1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(ILandroid/window/TransitionInfo$Change;)Z

    move-result p5

    if-eqz p5, :cond_9

    if-eqz p3, :cond_8

    .line 338
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "setLayer leash4 = "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    add-int/2addr p5, v2

    sub-int/2addr p5, p2

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr v2, p3

    sub-int/2addr v2, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 340
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_7

    .line 342
    invoke-virtual {p4, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 344
    :cond_7
    invoke-static {p1, p4, p0}, Lcom/android/wm/shell/util/TransitionUtil;->setupElementLeash(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto/16 :goto_2

    .line 347
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setLayer leash5 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, p2

    sub-int/2addr v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_2

    .line 350
    :cond_9
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(Landroid/window/TransitionInfo$Change;)Z

    move-result p5

    if-eqz p5, :cond_c

    if-eqz p3, :cond_a

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setLayer leash6 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 357
    :cond_a
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isElementType(Landroid/window/TransitionInfo$Change;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 358
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 360
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setLayer leash7 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, v2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 364
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setLayer leash8 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, v2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_2
    return-void
.end method
