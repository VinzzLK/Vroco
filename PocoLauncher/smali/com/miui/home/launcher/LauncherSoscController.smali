.class public Lcom/miui/home/launcher/LauncherSoscController;
.super Ljava/lang/Object;
.source "LauncherSoscController.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;
.implements Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;
    }
.end annotation


# static fields
.field public static SOSC_LOG_ENABLE:Z

.field private static final sInstance:Lcom/miui/home/launcher/LauncherSoscController;


# instance fields
.field private isInit:Z

.field private mIsSoscChangeByFoldingOnHalfSplit:Z

.field private final mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/launcher/sosc/interfaces/SoscingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

.field private final mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

.field private mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/miui/home/launcher/LauncherSoscController;

    invoke-direct {v0}, Lcom/miui/home/launcher/LauncherSoscController;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherSoscController;->sInstance:Lcom/miui/home/launcher/LauncherSoscController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->isInit:Z

    .line 51
    new-instance v0, Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-direct {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    .line 57
    new-instance v0, Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-direct {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->addSoscSplitScreenListener()V

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherSoscController;->addGestureProgressListener()V

    const/4 p0, 0x1

    .line 70
    sput-boolean p0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherSoscController;)Lcom/miui/launcher/sosc/module/SoscEvent;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;)Lcom/miui/launcher/sosc/module/SoscEvent;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherSoscController;->onSoscChange(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method private addGestureProgressListener()V
    .locals 1

    .line 185
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/GestureSoscController;->addGestureProgressListener(Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;)V

    return-void
.end method

.method private filterAndExecuteSoscEvent(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 424
    invoke-direct/range {v0 .. v9}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V

    return-void
.end method

.method private filterAndExecuteSoscEvent(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 428
    invoke-direct/range {v0 .. v11}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private filterAndExecuteSoscEvent(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 20

    move-object/from16 v8, p0

    move/from16 v15, p5

    move/from16 v14, p6

    move/from16 v13, p7

    move/from16 v12, p8

    move-object/from16 v0, p2

    .line 432
    invoke-direct {v8, v0, v15}, Lcom/miui/home/launcher/LauncherSoscController;->fixRootBounds(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 434
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherSoscController;->isValidHomeSoscBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)Z

    move-result v0

    const-string v1, "LauncherSoscController"

    if-nez v0, :cond_1

    .line 435
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bound, rootBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lotBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", robBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isMinimized: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedPosition: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lotTopTaskInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", robTopTaskInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherSoscController;->clearSkippedEvent()V

    .line 450
    new-instance v0, Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-direct {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;-><init>()V

    .line 451
    iget-object v6, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v6, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v11

    goto :goto_0

    :cond_2
    iget-object v6, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v6, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    :goto_0
    move-object v9, v0

    move v7, v10

    move-object v10, v6

    move v6, v12

    move-object/from16 v12, p3

    move v2, v13

    move-object/from16 v13, p4

    move v3, v14

    move/from16 v14, p5

    move v7, v15

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    .line 452
    invoke-virtual/range {v9 .. v19}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 454
    iget-object v4, v8, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v4, v4, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v5, 0x2

    const/4 v10, 0x1

    if-eq v4, v5, :cond_3

    if-nez p9, :cond_3

    move v4, v10

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->anim:Z

    .line 456
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    const/4 v9, -0x1

    if-ne v7, v9, :cond_5

    if-eqz v4, :cond_5

    .line 457
    iget-object v9, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWinBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip handling sosc event due to wrong bounds event.bounds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " launcher bounds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWinBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    .line 463
    iput-object v0, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSkippedEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    :cond_4
    return-void

    .line 469
    :cond_5
    iget v4, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-eqz v4, :cond_6

    if-ne v4, v10, :cond_7

    :cond_6
    iget-object v9, v8, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v11, v9, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-ne v11, v4, :cond_7

    iget-boolean v4, v9, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    iget-boolean v9, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    if-eq v4, v9, :cond_7

    .line 472
    iput-boolean v10, v8, Lcom/miui/home/launcher/LauncherSoscController;->mIsSoscChangeByFoldingOnHalfSplit:Z

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 474
    iput-boolean v4, v8, Lcom/miui/home/launcher/LauncherSoscController;->mIsSoscChangeByFoldingOnHalfSplit:Z

    .line 477
    :goto_2
    iget-object v4, v8, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0, v4}, Lcom/miui/launcher/sosc/module/SoscEvent;->diff(Lcom/miui/launcher/sosc/module/SoscEvent;)I

    move-result v4

    .line 479
    iget v9, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-ne v9, v5, :cond_9

    .line 480
    sget-boolean v2, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v2, :cond_8

    const-string v2, "filterAndExecuteSoscEvent\uff0cignore for state all"

    .line 481
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_8
    iget-object v1, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 484
    iget-object v1, v8, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void

    .line 488
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherSoscController;->isSoscEventDispatching()Z

    move-result v5

    and-int/2addr v4, v10

    if-eqz v4, :cond_b

    .line 490
    sget-boolean v4, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v4, :cond_a

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "launcher bounds "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state is "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isMinimized "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " minimizedSize is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " minimizedPosition "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isInSoscing "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_a
    sget-object v1, Lcom/miui/home/recents/util/Executors;->UI_HELPER_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v2, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;

    invoke-direct {v2, v8, v0, v5}, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;-><init>(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;Z)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 495
    :cond_b
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0, v2}, Lcom/miui/launcher/sosc/module/SoscEvent;->diff(Lcom/miui/launcher/sosc/module/SoscEvent;)I

    move-result v2

    if-eqz v5, :cond_d

    and-int/2addr v2, v10

    if-eqz v2, :cond_d

    .line 497
    sget-boolean v2, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v2, :cond_c

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop and replace with event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_c
    sget-object v1, Lcom/miui/home/recents/util/Executors;->UI_HELPER_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v2, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;

    invoke-direct {v2, v8, v0, v10}, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;-><init>(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;Z)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 502
    :cond_d
    sget-boolean v2, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v2, :cond_e

    const-string v2, "filterAndExecuteSoscEvent ignore"

    .line 503
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_e
    iget-object v1, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 506
    iget-object v1, v8, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    :goto_3
    return-void
.end method

.method private fixRootBounds(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 1

    .line 512
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 513
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lmiuix/device/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 514
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fixRootBounds "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherSoscController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/LauncherSoscController;
    .locals 1

    .line 61
    sget-object v0, Lcom/miui/home/launcher/LauncherSoscController;->sInstance:Lcom/miui/home/launcher/LauncherSoscController;

    return-object v0
.end method

.method private handleFoldOnHalfSplit(Landroid/content/res/Configuration;Lcom/miui/home/launcher/Launcher;)V
    .locals 16

    move-object/from16 v0, p0

    .line 113
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplitByState()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSoscEvent rootBounds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v2, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " winBounds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/Launcher;->getWinBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherSoscController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/Launcher;->getWinBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 123
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/Launcher;->cancelDelayRunnable()V

    move-object/from16 v1, p1

    .line 128
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 129
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v1

    .line 130
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v1

    .line 133
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v4

    :goto_0
    move-object v8, v1

    move-object v9, v4

    .line 135
    invoke-static/range {p2 .. p2}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    iget-object v5, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v6, v5, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/Launcher;->getWinBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v10, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v15, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual/range {v5 .. v15}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_2

    .line 146
    :cond_3
    iget-object v5, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v6, v5, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/Launcher;->getWinBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v10, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v11, 0x1

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    :goto_1
    move v12, v3

    .line 152
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadMinimizedSize()I

    move-result v13

    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v14, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v15, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 146
    invoke-virtual/range {v5 .. v15}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 156
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mSoscEvent is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method private handleSkippedEvent()V
    .locals 4

    .line 165
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->hasSkippedEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->resetSoscEvent()V

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherSoscController;->initSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 168
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->isSoscEventDispatching()Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;-><init>(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private is9_1SoscSplit(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 356
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    const-wide v0, 0x3fd999999999999aL    # 0.4

    cmpl-double p2, p0, v0

    if-lez p2, :cond_1

    const-wide v0, 0x3fe3333333333333L    # 0.6

    cmpg-double p0, p0, v0

    if-ltz p0, :cond_0

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

.method private isUpdateRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherSoscController;->is9_1SoscSplit(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    if-nez p4, :cond_3

    .line 346
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p4, 0x2

    const/4 v0, 0x1

    if-ne p0, p4, :cond_0

    move p1, v0

    .line 347
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 348
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object p0

    :goto_1
    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v0

    :cond_3
    return p1
.end method

.method private isValidHomeSoscBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)Z
    .locals 2

    const/4 p0, 0x1

    const/4 p6, -0x1

    if-eq p4, p6, :cond_7

    const/4 p6, 0x2

    if-ne p4, p6, :cond_0

    goto :goto_3

    .line 524
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result p6

    const/4 v0, 0x0

    if-nez p6, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le p6, v1, :cond_1

    return v0

    .line 527
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p6

    invoke-virtual {p6}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p6

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    if-nez p4, :cond_2

    .line 530
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    div-float p5, p2, p1

    goto :goto_1

    :cond_2
    if-ne p4, p0, :cond_3

    .line 532
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    const p1, 0x3f0ccccd    # 0.55f

    cmpg-float p1, p5, p1

    if-gez p1, :cond_4

    const p1, 0x3ee66666    # 0.45f

    cmpl-float p1, p5, p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    return p0

    :cond_5
    if-eqz p5, :cond_6

    .line 536
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadMinimizedSize()I

    move-result p1

    if-ne p7, p1, :cond_6

    goto :goto_3

    :cond_6
    move p0, v0

    :cond_7
    :goto_3
    return p0
.end method

.method private onSoscChange(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 3

    .line 208
    iget-boolean v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->cancel:Z

    const-string v1, "LauncherSoscController"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "soscEvent has been cancel"

    .line 209
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 212
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOSC changed by params event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 216
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START dispatch sosc event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", with anim: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->anim:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/launcher/sosc/interfaces/SoscingListener;

    .line 220
    invoke-interface {v2, p1}, Lcom/miui/launcher/sosc/interfaces/SoscingListener;->onSoscChange(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    goto :goto_0

    .line 222
    :cond_3
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "END for event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {p0, p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method


# virtual methods
.method public addSoscSplitScreenListener()V
    .locals 1

    .line 181
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->addSoscSplitScreenListener(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;)V

    return-void
.end method

.method public cancelSoscingAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherSoscController;->cancelSoscingAnim(Z)V

    return-void
.end method

.method public cancelSoscingAnim(Z)V
    .locals 2

    .line 266
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "LauncherSoscController"

    const-string v1, "cancel SoscingAnim"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/launcher/sosc/interfaces/SoscingListener;

    .line 271
    invoke-interface {v0, p1}, Lcom/miui/launcher/sosc/interfaces/SoscingListener;->cancelSoscingAnim(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method clearSkippedEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSkippedEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-void
.end method

.method public getHalfSplitAppPackageName()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplitByState()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "LauncherSoscController"

    const-string v0, "getHalfSplitAppPackageName error: not HalfSplitMode"

    .line 242
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v0, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-nez v0, :cond_1

    .line 246
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getPackageNameFromRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getPackageNameFromRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-object p0
.end method

.method public handleOrientationChangedOnHalfSplit(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 555
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 558
    :cond_0
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v3, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_2

    .line 561
    iget-object v2, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v6, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v6, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v2, v6, :cond_2

    .line 562
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v9

    .line 563
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v10

    .line 564
    new-instance v8, Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v2, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {v8, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 565
    iget-object v6, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v7, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    iget v11, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v12, 0x0

    const/4 v13, -0x1

    iget v14, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    iget-object v15, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v16, v1

    invoke-virtual/range {v6 .. v16}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_2
    if-ne v1, v4, :cond_3

    .line 566
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v2, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 567
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v9

    .line 568
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v10

    .line 569
    new-instance v8, Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v2, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {v8, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 570
    iget-object v6, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v7, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    iget v11, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v12, 0x0

    const/4 v13, -0x1

    iget v14, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    iget-object v15, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v16, v1

    invoke-virtual/range {v6 .. v16}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 572
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged launcher bounds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherSoscController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v2}, Lcom/miui/launcher/sosc/module/SoscEvent;->diff(Lcom/miui/launcher/sosc/module/SoscEvent;)I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherSoscController;->isSoscEventDispatching()Z

    move-result v1

    if-nez v1, :cond_5

    .line 574
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherSoscController;->stopSoscingEventDispatching()V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherSoscController;->cancelSoscingAnim()V

    .line 578
    :cond_5
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method hasSkippedEvent()Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSkippedEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 14

    const-string v0, "LauncherSoscController"

    .line 82
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->isInit:Z

    if-eqz v1, :cond_0

    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getSoScSplitInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RootBounds"

    .line 87
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/graphics/Rect;

    const-string v2, "LeftOrTopBounds"

    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/graphics/Rect;

    const-string v2, "RightOrBottomBounds"

    .line 89
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/graphics/Rect;

    const-string v2, "SoScState"

    .line 90
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "Minimized"

    .line 91
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v2, "mMinimizedPostion"

    .line 92
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v2, "MinimizedSize"

    .line 93
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p1

    .line 94
    invoke-virtual/range {v3 .. v13}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 96
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->isInit:Z

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSoscEvent "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "initSoscEvent err"

    .line 100
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isSoscChangeByFoldingOnHalfSplit()Z
    .locals 0

    .line 292
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mIsSoscChangeByFoldingOnHalfSplit:Z

    return p0
.end method

.method public isSoscEventDispatching()Z
    .locals 1

    .line 230
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 231
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/launcher/sosc/interfaces/SoscingListener;

    .line 232
    invoke-interface {v0}, Lcom/miui/launcher/sosc/interfaces/SoscingListener;->isInSoscing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;ILcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherSoscController;->handleSkippedEvent()V

    .line 106
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/LauncherSoscController;->handleFoldOnHalfSplit(Landroid/content/res/Configuration;Lcom/miui/home/launcher/Launcher;)V

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_0

    .line 108
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherSoscController;->handleOrientationChangedOnHalfSplit(I)V

    :cond_0
    return-void
.end method

.method public onGestureEnd(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V
    .locals 10

    move-object v0, p0

    move v5, p5

    .line 402
    sget-boolean v1, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGestureEnd, touchRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rootBounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", leftOrTopBounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", rightOrBottomBounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", predictState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isPredictMinimized: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", predictMinimizedPosition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", predictMinimizedSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", last state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v3, v3, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LauncherSoscController"

    .line 412
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v2, p2

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 414
    :goto_0
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-eq v5, v1, :cond_4

    .line 415
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 416
    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v3

    :goto_2
    if-eqz v1, :cond_3

    .line 417
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v1

    :goto_3
    move-object v4, v1

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p2

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 419
    invoke-direct/range {v0 .. v9}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V

    :cond_4
    return-void
.end method

.method public onGestureStart(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZII)V
    .locals 11

    move-object v0, p0

    move/from16 v5, p5

    .line 370
    sget-boolean v1, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    const-string v2, "LauncherSoscController"

    if-eqz v1, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGestureStart, touchRange: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rootBounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", leftOrTopBounds: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", rightOrBottomBounds: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", predictState: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isPredictMinimized: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", predictMinimizedPosition: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", predictMinimizedSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", last state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v4, v4, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v3, p2

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    :goto_0
    const/4 v1, -0x1

    move/from16 v4, p6

    if-ne v5, v4, :cond_1

    if-ne v5, v1, :cond_1

    const-string/jumbo v0, "state keep full screen"

    .line 384
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 388
    :cond_1
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v2, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    if-ne v2, v1, :cond_8

    .line 389
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 390
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 391
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 392
    new-instance v9, Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    move v10, v4

    goto :goto_2

    :cond_4
    move v10, v3

    :goto_2
    if-eqz v1, :cond_5

    move v4, v3

    :cond_5
    invoke-direct {v9, v2, v2, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 393
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v2

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v2

    :goto_3
    move-object v3, v2

    if-eqz v1, :cond_7

    .line 394
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v1

    :goto_4
    move-object v4, v1

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, v9

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 396
    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)V

    :cond_8
    return-void
.end method

.method public onInitSoscSplitScreen()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherSoscController;->initSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 11

    .line 314
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 313
    invoke-direct/range {v1 .. v10}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V

    return-void
.end method

.method public onRecentEnterMiniStart(I)V
    .locals 0

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->onReadyForEnterMini(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherSoscController;->handleSkippedEvent()V

    return-void
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 13

    .line 322
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 324
    new-instance v4, Landroid/graphics/Rect;

    move-object v1, p2

    invoke-direct {v4, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 325
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 326
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p0

    move-object v6, p1

    move v7, v1

    goto :goto_0

    :cond_0
    move-object v3, p0

    move-object v6, p1

    move v7, v2

    .line 327
    :goto_0
    invoke-direct {p0, p1, v4, v5, v7}, Lcom/miui/home/launcher/LauncherSoscController;->isUpdateRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    const/4 v7, 0x0

    .line 330
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v8

    sget-object v9, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    move-object v1, p0

    move v2, v7

    move-object v3, p1

    move/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 329
    invoke-direct/range {v1 .. v12}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    if-eqz v0, :cond_2

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSoScStateChanged: isLauncherVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherSoscController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->fixSplitState()V

    :cond_2
    return-void
.end method

.method public onStagePositionChanged(II)V
    .locals 1

    .line 297
    sget-boolean p0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz p0, :cond_0

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStagePositionChanged stage: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", position: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherSoscController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 1

    .line 304
    sget-boolean p0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz p0, :cond_0

    .line 305
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskStageChanged taskId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", stage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", visible: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherSoscController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public register(Lcom/miui/launcher/sosc/interfaces/SoscingListener;)V
    .locals 2

    .line 189
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register to Controller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    .line 195
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetSoscEvent()V
    .locals 2

    .line 282
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "LauncherSoscController"

    const-string v1, "reset soscEvent"

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->isInit:Z

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->reset()V

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->reset()V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSkippedEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-void
.end method

.method public setHalfSplitWhenToHome()V
    .locals 1

    .line 542
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 543
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->setSplitRatio(F)V

    .line 544
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->updateDividerFixedState(Z)V

    :cond_0
    return-void
.end method

.method public stopSoscingEventDispatching()V
    .locals 2

    .line 253
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STOP to dispatching for event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->cancel:Z

    :cond_1
    return-void
.end method

.method public unregister(Lcom/miui/launcher/sosc/interfaces/SoscingListener;)V
    .locals 2

    .line 199
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister from Controller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 203
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
