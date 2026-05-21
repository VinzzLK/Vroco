.class public Lcom/miui/home/recents/util/SplitSelectStateController;
.super Ljava/lang/Object;
.source "SplitSelectStateController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialTaskId:I

.field private mInitialTaskIntent:Landroid/content/Intent;

.field private mInitialTaskPackageName:Ljava/lang/String;

.field private mInitialTaskUserId:I

.field private mRecentsAnimationRunning:Z

.field private mSecondIntent:Landroid/content/Intent;

.field private mSecondPackageName:Ljava/lang/String;

.field private mSecondTaskId:I

.field private mSecondTaskStagePosition:I

.field private mSecondUser:Landroid/os/UserHandle;

.field private mSecondUserId:I

.field private final mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/home/launcher/LauncherStateManager;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    .line 83
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    .line 84
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    .line 87
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    .line 94
    iput-object p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p3, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-void
.end method

.method private isSameApp()Z
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    iget p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSecondTaskIntentSet()Z
    .locals 2

    .line 396
    iget v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondIntent:Landroid/content/Intent;

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


# virtual methods
.method public getInitialTaskPackageName()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getInitialTaskUserId()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    return p0
.end method

.method public isBothSplitAppsConfirmed()Z
    .locals 2

    .line 392
    iget v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->isSecondTaskIntentSet()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchSplitTasks(Landroid/window/RemoteTransition;)V
    .locals 10

    .line 127
    iget v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->isSameApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->resetSecondState()V

    return-void

    .line 132
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondIntent:Landroid/content/Intent;

    const/high16 v5, 0x2000000

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v4, v0

    move-object v5, v1

    goto :goto_0

    :cond_1
    move-object v4, v1

    move-object v5, v4

    .line 139
    :goto_0
    iget v3, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    iget v6, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, p0

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/miui/home/recents/util/SplitSelectStateController;->launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IZFLandroid/window/RemoteTransition;)V

    return-void
.end method

.method public launchTasks(IIZFLandroid/window/RemoteTransition;)V
    .locals 9

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    const/4 v0, 0x1

    .line 168
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .line 169
    invoke-virtual/range {v1 .. v8}, Lcom/miui/home/recents/util/SplitSelectStateController;->launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IZFLandroid/window/RemoteTransition;)V

    return-void
.end method

.method public launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IZFLandroid/window/RemoteTransition;)V
    .locals 12

    move-object v0, p0

    .line 181
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    if-eqz p5, :cond_0

    .line 183
    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->setFreezeRecentTasksReordering(Landroid/app/ActivityOptions;)V

    .line 186
    :cond_0
    sget-object v2, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    .line 187
    invoke-virtual {v2}, Lcom/miui/home/recents/SystemUiProxyWrapper;->isSystemUIProxyInitialized()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    new-instance v11, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    move-object/from16 v3, p7

    invoke-direct {v11, v3}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Landroid/window/RemoteTransition;)V

    .line 189
    iget v3, v0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    if-nez v3, :cond_2

    .line 190
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p1

    move/from16 v7, p4

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    const/4 v6, 0x0

    iget v7, v0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    move v3, p1

    move/from16 v5, p4

    move/from16 v8, p6

    move-object v9, v11

    invoke-virtual/range {v2 .. v9}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    goto :goto_0

    .line 199
    :cond_2
    iget v4, v0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    .line 200
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    iget v9, v0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    move-object v3, p2

    move-object v5, p3

    move v6, p1

    move/from16 v10, p6

    .line 199
    invoke-virtual/range {v2 .. v11}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public resetSecondState()V
    .locals 2

    const/4 v0, -0x1

    .line 371
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v1, 0x0

    .line 372
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondIntent:Landroid/content/Intent;

    .line 373
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondPackageName:Ljava/lang/String;

    .line 374
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    .line 375
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    return-void
.end method

.method public resetState()V
    .locals 2

    const/4 v0, -0x1

    .line 356
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    const/4 v1, 0x0

    .line 357
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    .line 358
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskPackageName:Ljava/lang/String;

    .line 359
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    .line 360
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    .line 361
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondIntent:Landroid/content/Intent;

    .line 362
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondPackageName:Ljava/lang/String;

    .line 363
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    .line 364
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    const/4 v1, 0x0

    .line 365
    iput v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    .line 366
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    .line 367
    iput-boolean v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    return-void
.end method

.method public setInitialTaskSelect(Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->resetState()V

    .line 105
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    .line 106
    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    .line 107
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskPackageName:Ljava/lang/String;

    .line 108
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iput p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    .line 109
    iput p2, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    return-void
.end method

.method public setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 148
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 p1, 0x0

    .line 149
    iput p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    return-void
.end method
