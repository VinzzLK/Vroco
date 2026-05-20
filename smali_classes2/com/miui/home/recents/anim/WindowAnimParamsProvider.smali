.class public final Lcom/miui/home/recents/anim/WindowAnimParamsProvider;
.super Ljava/lang/Object;
.source "WindowAnimParamsProvider.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;


# direct methods
.method public static synthetic $r8$lambda$eZ3of1fuIujFWIxbIxMNITNNWr8(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getClosingAnimParams$lambda-0(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j6YQ7T1hSpPCt6ml98yo4St0euY(Lcom/miui/home/launcher/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getLauncherTaskId$lambda-1(Lcom/miui/home/launcher/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    invoke-direct {v0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;-><init>()V

    sput-object v0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final boostGesture(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1187
    invoke-static {}, Lcom/miui/home/launcher/util/BoostRtHelper;->getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostGesture(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private final findClosingAnimTarget(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1416
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1420
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isCloseFromGoogleAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 1424
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1428
    :cond_2
    sget-object v1, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 1429
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isIconLayoutFromSoscChange(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1431
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->findClosingWidgetView(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1432
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getClosingShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method private final findClosingWidgetView(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 7

    .line 1493
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getClosingWindowAnimParams target ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowAnimParamsProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    .line 1498
    :cond_0
    iget v1, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {p1, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getRecentTasks(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 1499
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 1500
    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v5, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v4, v5, :cond_1

    .line 1501
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1502
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cn.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1505
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1506
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getClosingWindowAnimParams findClosingWidgetView targetPackageName ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1509
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getClosingWindowAnimParams findClosingWidgetView isInMultiWindowMode ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1514
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object p2

    .line 1515
    invoke-virtual {p2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    move-result-object p2

    if-nez p2, :cond_5

    return-object p0

    .line 1516
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getScreenId()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_6

    .line 1517
    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->isMatchClosingAppPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1519
    invoke-virtual {p2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    goto :goto_1

    :cond_6
    const-string p1, "getClosingWindowAnimParams findClosingWidgetView return null"

    .line 1521
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0
.end method

.method private final findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    .line 928
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    aget-object v2, p2, v0

    .line 929
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isElement:Z

    if-nez v3, :cond_0

    .line 930
    iget p0, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    if-ne p0, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    .line 936
    :cond_2
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private static final getClosingAnimParams$lambda-0(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    return-void
.end method

.method private final getClosingShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 5

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClosingWindowAnimParams getClosingShortcutIcon target= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowAnimParamsProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 1442
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1447
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getTask(Landroid/content/Context;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 1448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClosingWindowAnimParams getClosingShortcutIcon task before=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 1451
    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->clearRecentsTaskLoadPlan()V

    .line 1452
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getTask(Landroid/content/Context;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 1454
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getClosingWindowAnimParams getClosingShortcutIcon task after=  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 1457
    iget-object p0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 1458
    iget-object p2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClosingShortcutIcon:CloseShortcutIconUtils.getCloseShortcutIcon  cn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-static {p0, p2, p1}, Lcom/miui/home/recents/CloseShortcutIconUtils;->getCloseShortcutIcon(Landroid/content/ComponentName;ILcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "getClosingShortcutIcon:null"

    .line 1462
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    :goto_2
    const-string p0, "getClosingWindowAnimParams getClosingShortcutIcon data invalid return null "

    .line 1444
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private final getClosingWindowAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Landroid/view/View;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 999
    new-instance v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v3, 0x1

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 1000
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    .line 1001
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getElementTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v5

    .line 1004
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getClosingWindowAnimParams closingTarget="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", closingTargets.homeTarget="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", closingTargets.secondTarget="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getElementTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowAnimParamsProvider"

    .line 1002
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    if-nez v4, :cond_0

    return-object v28

    .line 1011
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v28

    .line 1015
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v6

    .line 1017
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSplitMode()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v8, v8

    if-ne v8, v3, :cond_2

    move v8, v3

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_4

    if-nez v6, :cond_4

    .line 1018
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isPreHalfSplitMode()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v14, v3

    .line 1020
    :goto_2
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setIsAppPairAnim(Z)V

    if-eqz v14, :cond_5

    .line 1023
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 1024
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/GestureSoscController;->startForbidLaunchSplit()V

    :cond_5
    const-string v6, "closeWindow"

    const-string v8, "navigation_bar"

    .line 1027
    invoke-static {v1, v6, v8}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    if-eqz v6, :cond_6

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "gesture_home_animator"

    invoke-static {v6, v8, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1032
    :cond_6
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1033
    invoke-static/range {p3 .. p3}, Lcom/miui/home/recents/TaskViewUtils;->hideDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1036
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v13

    const-string v6, "window"

    .line 1037
    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 1038
    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 1039
    invoke-static {v13, v8, v6}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 1041
    iget-object v11, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    const-string v12, "com.celltick.lockscreen"

    .line 1042
    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1043
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v12

    if-nez v12, :cond_a

    if-eqz v14, :cond_8

    if-eqz v13, :cond_8

    .line 1044
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1045
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->isShowingUserPresentAnimation()Z

    move-result v12

    if-nez v12, :cond_a

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    move v12, v3

    :goto_4
    if-eqz v5, :cond_b

    .line 1046
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v15

    if-nez v15, :cond_b

    move v15, v3

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    .line 1047
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClosingWindowAnimParams isIgnoreAnimTarget="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isStartLockScreen="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasMultiTask="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1047
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isSingleSideBack="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", currentRotation="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", isElementParam="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isShowingUserPresentAnimation="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->isShowingUserPresentAnimation()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 1047
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v12, :cond_c

    move-object/from16 v11, v28

    goto :goto_6

    :cond_c
    invoke-direct {v0, v1, v4}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->findClosingAnimTarget(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v11

    :goto_6
    iput-object v11, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1063
    instance-of v12, v11, Landroid/view/View;

    if-eqz v12, :cond_d

    move-object v12, v11

    goto :goto_7

    :cond_d
    move-object/from16 v12, v28

    .line 1064
    :goto_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v12

    const-string v12, "getClosingWindowAnimParams secondTarget="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", launchAppAndBackHomeAnimTarget="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_e

    .line 1066
    iget-object v6, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    const-string v11, "{\n            secondTarg\u2026ContainerBounds\n        }"

    .line 1065
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 1068
    :cond_e
    iget-object v11, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-direct {v0, v11, v14, v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getIconRect(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 1071
    :goto_8
    new-instance v12, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v12}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 1072
    invoke-virtual {v12, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const/4 v4, 0x1

    .line 1073
    invoke-virtual {v12, v2, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)V

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 1075
    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1076
    invoke-virtual {v12, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1078
    new-instance v11, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1079
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    iput-boolean v0, v11, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 1080
    new-instance v0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1082
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v0

    int-to-float v11, v0

    .line 1083
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 1084
    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-interface {v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v0

    .line 1085
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 1087
    :cond_f
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_10

    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-static {v0}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v0

    :goto_9
    move v5, v0

    goto :goto_a

    :cond_10
    if-eqz v15, :cond_11

    .line 1089
    iget v0, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->cornerRadius:F

    goto :goto_9

    :cond_11
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_9

    .line 1093
    :goto_a
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1094
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    if-eqz v15, :cond_12

    .line 1096
    sget-object v16, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-object/from16 p5, v12

    move-object/from16 v4, v16

    goto :goto_c

    .line 1097
    :cond_12
    iget-object v4, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_13

    .line 1098
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    goto :goto_b

    .line 1100
    :cond_13
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME_CENTER:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    :goto_b
    move-object/from16 p5, v12

    .line 1103
    :goto_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "startClosingWindowAnimators:startRect="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetRect="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startRadius="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endRadius="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", animType=="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isMultiProcessMinusScreenShowing="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v2

    .line 1103
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", homeRotation="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isUseSimpleAnim="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v2

    .line 1103
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSingleSideBack= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v3, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;

    invoke-direct {v3, v9, v15}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowAnimParams$animListener$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    .line 1137
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v8, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_15

    .line 1141
    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    :cond_15
    move-object/from16 v17, v0

    if-eqz v2, :cond_16

    .line 1142
    invoke-static {v1, v10}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    move-object v2, v0

    goto :goto_e

    :cond_16
    move-object v2, v10

    .line 1139
    :goto_e
    new-instance v30, Lcom/miui/home/recents/anim/RectFParams;

    move-object/from16 v0, v30

    const-string v1, "if (needRotate) Coordina\u2026, endBound) else endBound"

    .line 1142
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    move/from16 v21, v11

    move v11, v1

    .line 1149
    move-object/from16 v12, p3

    check-cast v12, Landroid/view/View;

    move-object/from16 v29, p5

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x1ee4700

    const/16 v27, 0x0

    move-object/from16 v1, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v4

    move/from16 v4, v21

    move/from16 v21, v8

    move-object/from16 v8, v16

    move/from16 v16, v13

    move-object/from16 v13, v17

    move/from16 v31, v14

    move-object/from16 v14, v29

    move/from16 v17, v21

    move/from16 v21, v31

    .line 1139
    invoke-direct/range {v0 .. v27}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v31, :cond_17

    move-object/from16 v33, v28

    goto :goto_f

    .line 1157
    :cond_17
    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v0

    move-object/from16 v33, v0

    :goto_f
    if-eqz v31, :cond_18

    move-object/from16 v34, v28

    goto :goto_10

    .line 1158
    :cond_18
    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v0

    move-object/from16 v34, v0

    :goto_10
    if-eqz v31, :cond_19

    move-object/from16 v0, v28

    goto :goto_11

    .line 1159
    :cond_19
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v0

    :goto_11
    if-eqz v31, :cond_1a

    move-object/from16 v32, v28

    goto :goto_12

    .line 1160
    :cond_1a
    sget-object v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v1

    move-object/from16 v32, v1

    :goto_12
    if-eqz v31, :cond_1b

    move-object/from16 v37, v28

    goto :goto_13

    .line 1161
    :cond_1b
    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    move-object/from16 v37, v1

    :goto_13
    if-eqz v31, :cond_1c

    goto :goto_14

    .line 1162
    :cond_1c
    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v28

    :goto_14
    move-object/from16 v38, v28

    .line 1163
    new-instance v1, Lcom/miui/home/recents/anim/AllElementParams;

    const/16 v35, 0x0

    .line 1169
    sget-object v36, Lcom/miui/home/recents/anim/StateType;->STATE_HOME:Lcom/miui/home/recents/anim/StateType;

    const/16 v39, 0x0

    const/16 v40, 0x220

    const/16 v41, 0x0

    move-object/from16 v29, v1

    move-object/from16 v31, v0

    .line 1163
    invoke-direct/range {v29 .. v41}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final getClosingWindowFromFeedAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Landroid/view/View;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 30

    const-string v0, "WindowAnimParamsProvider"

    const-string v1, "getClosingWindowFromFeedAnimParams"

    .line 946
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v3, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v1, 0x1

    move-object/from16 v2, p2

    invoke-direct {v3, v2, v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 949
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object/from16 v4, p0

    .line 951
    invoke-virtual {v4, v3, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 953
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 954
    iget v5, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v8, Landroid/graphics/Rect;->left:I

    .line 955
    iget v5, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v8, Landroid/graphics/Rect;->right:I

    .line 957
    new-instance v9, Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-object/from16 v16, v9

    invoke-direct {v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 958
    invoke-virtual {v9, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    .line 960
    invoke-virtual {v9, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 961
    invoke-virtual {v9, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 963
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v2

    int-to-float v6, v2

    const/high16 v2, 0x41a00000    # 20.0f

    .line 964
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v4, v2

    .line 966
    new-instance v2, Landroid/graphics/RectF;

    move-object v4, v2

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 967
    new-instance v10, Landroid/graphics/RectF;

    move-object v5, v10

    invoke-direct {v10, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 968
    invoke-virtual {v9, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 969
    invoke-virtual {v9, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startClosingWindowFromFeedAnimators:startRect="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   targetRect="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    sget-object v10, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 973
    new-instance v0, Lcom/miui/home/recents/anim/RectFParams;

    move-object v2, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x1ffde00

    const/16 v29, 0x0

    invoke-direct/range {v2 .. v29}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 986
    sget-object v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v20

    .line 987
    sget-object v1, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v22

    .line 988
    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v26

    .line 989
    sget-object v24, Lcom/miui/home/recents/anim/StateType;->STATE_IDLE:Lcom/miui/home/recents/anim/StateType;

    .line 985
    new-instance v1, Lcom/miui/home/recents/anim/AllElementParams;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x2aa

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v29}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final getClosingWindowToRecentAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    const-string v2, "WindowAnimParamsProvider"

    const-string v3, "getClosingWindowToRecentAnimParams"

    .line 772
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v11, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v3, 0x1

    invoke-direct {v11, v1, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 776
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 777
    sget-object v5, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v9, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 778
    invoke-virtual {v11}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    const/16 v38, 0x0

    if-nez v4, :cond_0

    return-object v38

    .line 781
    :cond_0
    sget-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    if-eqz v5, :cond_1

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gesture_home_animator"

    .line 782
    invoke-static {v5, v6, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 789
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 790
    invoke-static/range {p3 .. p3}, Lcom/miui/home/recents/TaskViewUtils;->hideDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 793
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 794
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/miui/home/recents/views/RecentsView;

    const-string v6, "rv"

    .line 795
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v39

    .line 797
    invoke-virtual {v0, v11, v3}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 799
    invoke-virtual {v8}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v6

    .line 800
    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskStackView;->scrollToDefaultCenterTaskViewIndex()V

    .line 802
    invoke-virtual {v8}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskIndex()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 803
    invoke-virtual {v8}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 804
    invoke-virtual {v8}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 806
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-nez v6, :cond_5

    .line 807
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v10

    float-to-int v10, v12

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 808
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    float-to-int v13, v14

    .line 807
    invoke-virtual {v5, v6, v10, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 810
    :cond_5
    new-instance v14, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v14}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 811
    invoke-virtual {v14, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 812
    invoke-virtual {v14, v11, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)V

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 814
    invoke-virtual {v14, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 815
    invoke-virtual {v14, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 817
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v4

    int-to-float v4, v4

    .line 819
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v6

    int-to-float v6, v6

    .line 821
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startClosingWindowToRecentsAnimators:startRect="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "   targetRect="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 824
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 826
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->shouldAppToRecentsAnimToCenter(Lcom/miui/home/launcher/Launcher;)Z

    move-result v40

    const/4 v0, 0x0

    if-nez v40, :cond_7

    if-nez v39, :cond_6

    goto :goto_0

    :cond_6
    move/from16 v22, v1

    move/from16 v17, v4

    move/from16 v20, v6

    goto :goto_1

    .line 828
    :cond_7
    :goto_0
    invoke-virtual {v10, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 829
    invoke-virtual {v13, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v1, 0x3ecccccd    # 0.4f

    .line 830
    invoke-static {v13, v1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 831
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v1

    int-to-float v1, v1

    .line 832
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v2

    int-to-float v2, v2

    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v17, v2

    .line 837
    :goto_1
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_8

    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v7

    :goto_2
    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v41

    if-nez v40, :cond_9

    if-eqz v41, :cond_9

    move/from16 v24, v3

    goto :goto_3

    :cond_9
    move/from16 v24, v7

    .line 840
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v6

    .line 842
    invoke-virtual {v11}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    move v3, v7

    .line 844
    :goto_4
    new-instance v0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;

    move-object/from16 v23, v0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v4, p1

    move/from16 v5, v41

    move v7, v15

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;-><init>(Lcom/miui/home/recents/views/TaskView;ZZLcom/miui/home/launcher/Launcher;ZIILcom/miui/home/recents/views/RecentsView;)V

    .line 886
    invoke-static {v9, v10}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v12

    .line 887
    invoke-static {v9, v13}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    move-object v13, v0

    .line 892
    sget-object v18, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 884
    new-instance v1, Lcom/miui/home/recents/anim/RectFParams;

    move-object v10, v1

    const-string v2, "transformCoordinateFromC\u2026oHome(launcher, endBound)"

    .line 887
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const v36, 0x1f7c400

    const/16 v37, 0x0

    move-object v0, v14

    move/from16 v14, v17

    move v2, v15

    move/from16 v15, v20

    move/from16 v17, v22

    move/from16 v20, v24

    move-object/from16 v22, v39

    move-object/from16 v24, v0

    move/from16 v30, v2

    .line 884
    invoke-direct/range {v10 .. v37}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v41, :cond_c

    .line 902
    new-instance v0, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eqz v40, :cond_b

    move-object/from16 v6, v38

    goto :goto_5

    :cond_b
    move-object/from16 v6, v39

    :goto_5
    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v31, v0

    goto :goto_6

    :cond_c
    move-object/from16 v31, v38

    .line 907
    :goto_6
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v28

    .line 908
    sget-object v32, Lcom/miui/home/recents/anim/StateType;->STATE_RECENTS:Lcom/miui/home/recents/anim/StateType;

    new-instance v0, Lcom/miui/home/recents/anim/AllElementParams;

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x39a

    const/16 v37, 0x0

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    invoke-direct/range {v25 .. v37}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getDesktopDisplaySizeByOrientation(Z)Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 709
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 711
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final getDeviceSizeByOrientation(Z)Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 701
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 703
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final getEndRadius(I)F
    .locals 0

    .line 1389
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result p0

    int-to-float p0, p0

    .line 1390
    invoke-static {p1}, Lcom/miui/home/recents/TaskViewUtils;->isSoscLaunchPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p0, 0x41b00000    # 22.0f

    :cond_0
    return p0
.end method

.method private final getIconRect(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    const/4 p0, 0x2

    if-eqz p2, :cond_2

    .line 1534
    iget p2, p3, Landroid/graphics/Rect;->left:I

    if-gtz p2, :cond_1

    iget p2, p3, Landroid/graphics/Rect;->top:I

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p0

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 1542
    :try_start_0
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p3, "WindowAnimParamsProvider"

    const-string v0, "can\'t get icon location"

    .line 1544
    invoke-static {p3, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1545
    invoke-static {p0, p2}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(II)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_2

    .line 1548
    :cond_3
    invoke-static {p0, p2}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(II)Landroid/graphics/Rect;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private final getLauncherTaskId(Lcom/miui/home/launcher/Launcher;)I
    .locals 2

    .line 1235
    new-instance p0, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1236
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1f4

    .line 1239
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "futureTask[500, TimeUnit.MILLISECONDS]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLauncherTaskId: exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowAnimParamsProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1242
    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static final getLauncherTaskId$lambda-1(Lcom/miui/home/launcher/Launcher;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final getOpeningWindowsAnimParams(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZILandroid/graphics/Rect;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    move-object/from16 v3, p3

    move/from16 v2, p5

    move-object/from16 v4, p6

    const/16 v30, 0x0

    if-nez v1, :cond_0

    return-object v30

    .line 352
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v30

    .line 356
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportHorizontalInterrupt()Z

    move-result v5

    const-string v6, "null cannot be cast to non-null type android.view.WindowManager"

    const-string v7, "window"

    if-eqz v5, :cond_2

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v5

    :goto_0
    move v11, v5

    goto :goto_1

    .line 359
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    goto :goto_0

    .line 361
    :goto_1
    invoke-virtual {v1, v7}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 363
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v30

    .line 366
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getAppTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isIgnoreBlurAndShortcutElementForOpening(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v31

    const/4 v6, 0x0

    .line 368
    invoke-virtual {v0, v3, v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object v8

    .line 369
    new-instance v13, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v13}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 370
    invoke-virtual {v13, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 371
    invoke-virtual {v13, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v9, 0x1

    .line 373
    invoke-virtual {v13, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 374
    invoke-virtual {v13, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 376
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 377
    instance-of v12, v14, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v12

    if-nez v12, :cond_4

    .line 378
    iput-object v14, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 383
    :cond_4
    invoke-virtual {v13, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds(I)Landroid/graphics/Rect;

    move-result-object v12

    .line 384
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x4

    if-eq v2, v6, :cond_5

    const/4 v6, 0x5

    if-eq v2, v6, :cond_5

    const/4 v6, 0x0

    .line 386
    iget v9, v12, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    neg-float v9, v9

    invoke-virtual {v15, v6, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 389
    :cond_5
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 390
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 391
    invoke-virtual {v6, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v9, 0x3f6b851f    # 0.92f

    .line 392
    invoke-static {v6, v9}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move-object/from16 v19, v13

    move-object/from16 v20, v15

    goto :goto_4

    .line 394
    :cond_6
    invoke-static {v7, v11, v4}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 395
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v18

    if-nez v18, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v19, v13

    move-object/from16 v20, v15

    goto :goto_3

    .line 396
    :cond_8
    :goto_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v18, 0x3e800000    # 0.25f

    mul-float v3, v3, v18

    float-to-int v3, v3

    move-object/from16 v19, v13

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v18

    float-to-int v13, v13

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    const/high16 v18, 0x3f400000    # 0.75f

    mul-float v14, v14, v18

    float-to-int v14, v14

    move-object/from16 v20, v15

    .line 397
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v18

    float-to-int v15, v15

    .line 396
    invoke-virtual {v9, v3, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    :goto_3
    iget-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 400
    check-cast v3, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-interface {v3}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v3

    .line 401
    invoke-virtual {v9, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 403
    :cond_9
    invoke-virtual {v6, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 404
    iget v3, v12, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v12, v12, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    invoke-virtual {v9, v3, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 407
    :goto_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v3

    .line 409
    iget-boolean v9, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-nez v9, :cond_b

    iget-object v9, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    sget-object v9, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->TRANSLUCENT_PACKAGE:Ljava/util/ArrayList;

    .line 410
    iget-object v12, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    .line 409
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-nez v3, :cond_d

    if-eqz v9, :cond_c

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v14, 0x1

    .line 413
    :goto_8
    iget-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_e

    check-cast v3, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-static {v3}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v3

    goto :goto_9

    :cond_e
    const/high16 v3, 0x41a00000    # 20.0f

    .line 415
    :goto_9
    invoke-direct {v0, v2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getEndRadius(I)F

    move-result v0

    .line 416
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v12

    if-eqz v12, :cond_f

    move v3, v0

    .line 420
    :cond_f
    new-instance v12, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 421
    sget-object v13, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v1, v13}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 422
    new-instance v12, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    if-eqz v9, :cond_10

    .line 424
    iget-object v9, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v9, v9, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_12

    .line 427
    sget-object v12, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->FIT_PARENT_AND_TRANSLUCENT_PACKAGE:[Ljava/lang/String;

    const-string v13, "FIT_PARENT_AND_TRANSLUCENT_PACKAGE"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v13, v12

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v13, :cond_12

    move/from16 p0, v9

    aget-object v9, v12, v15

    move-object/from16 v17, v12

    .line 428
    iget-object v12, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v13, 0x0

    goto :goto_c

    :cond_11
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, p0

    move-object/from16 v12, v17

    goto :goto_b

    :cond_12
    move/from16 p0, v9

    move/from16 v13, p0

    .line 435
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startOpeningWindowAnimators, currentDisplayRotation="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", homeRotation="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", iconLoc="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", startRectF="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", endRectF="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", windowTargetBounds="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", startRadius = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", endRadius = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", launchPosition = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isUseTranslucentAnim = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WindowAnimParamsProvider"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_13

    .line 449
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move/from16 v16, v0

    goto :goto_d

    :cond_13
    move/from16 v16, v3

    .line 452
    :goto_d
    new-instance v2, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;

    move-object v3, v4

    move-object v15, v2

    invoke-direct {v2, v14, v10, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsAnimParams$animListener$1;-><init>(ZLkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/home/launcher/Launcher;)V

    .line 470
    invoke-static {v1, v6, v11}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v4

    .line 471
    invoke-static {v1, v3, v11}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v1

    move-object v5, v1

    .line 473
    sget-object v10, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 469
    new-instance v33, Lcom/miui/home/recents/anim/RectFParams;

    move-object/from16 v2, v33

    const-string v3, "transformCoordinateOpenF\u2026, currentDisplayRotation)"

    .line 471
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v1, 0x0

    move/from16 v24, v13

    move-object/from16 v18, v19

    move v13, v1

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x1de4600

    const/16 v29, 0x0

    move-object/from16 v3, p3

    move/from16 v6, v16

    move v1, v7

    move v7, v0

    move v0, v11

    move v11, v14

    move-object/from16 v14, p2

    move-object/from16 v16, v18

    move/from16 v18, v0

    move/from16 v19, v1

    .line 469
    invoke-direct/range {v2 .. v29}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p4, :cond_14

    if-nez v31, :cond_14

    .line 477
    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v0

    move-object/from16 v37, v0

    goto :goto_e

    :cond_14
    move-object/from16 v37, v30

    :goto_e
    if-eqz p4, :cond_15

    if-nez v31, :cond_15

    .line 478
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_f

    :cond_15
    move-object/from16 v35, v30

    :goto_f
    if-nez v31, :cond_16

    .line 479
    sget-object v0, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v30

    :cond_16
    move-object/from16 v41, v30

    .line 480
    new-instance v0, Lcom/miui/home/recents/anim/AllElementParams;

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    .line 484
    sget-object v39, Lcom/miui/home/recents/anim/StateType;->STATE_APP:Lcom/miui/home/recents/anim/StateType;

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x2aa

    const/16 v44, 0x0

    move-object/from16 v32, v0

    .line 480
    invoke-direct/range {v32 .. v44}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getOpeningWindowsFromElementAnimParams(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 105
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getElementTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    const/16 v30, 0x0

    if-nez v2, :cond_0

    return-object v30

    :cond_0
    const-string v5, "window"

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object/from16 v6, v30

    :goto_0
    const-string v7, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v18

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object/from16 v5, v30

    :goto_1
    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v19

    const/4 v5, 0x0

    .line 115
    invoke-virtual {v0, v3, v5}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 116
    new-instance v15, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v15}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 117
    invoke-virtual {v15, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 118
    invoke-virtual {v15, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v15, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 121
    invoke-virtual {v15, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 124
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 125
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 127
    invoke-virtual {v8, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v9, 0x3f6b851f    # 0.92f

    .line 128
    invoke-static {v8, v9}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    goto :goto_2

    .line 130
    :cond_3
    iget-object v9, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 133
    :goto_2
    iget v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->cornerRadius:F

    .line 134
    invoke-direct {v0, v2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getEndRadius(I)F

    move-result v0

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v9

    if-eqz v9, :cond_4

    move v14, v0

    goto :goto_3

    :cond_4
    move v14, v4

    .line 140
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startOpeningWindowAnimators, currentDisplayRotation=, startRectF="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", endRectF="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", windowTargetBounds="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", startRadius = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", endRadius = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "WindowAnimParamsProvider"

    .line 139
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v6, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsFromElementAnimParams$animListener$1;

    invoke-direct {v6, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsFromElementAnimParams$animListener$1;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v31, v5

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v31, v2

    .line 156
    :goto_5
    invoke-static {v1, v8}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    .line 157
    invoke-static {v1, v7}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    move-object v5, v1

    .line 159
    sget-object v10, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 154
    new-instance v33, Lcom/miui/home/recents/anim/RectFParams;

    move-object/from16 v2, v33

    const-string v7, "transformCoordinateOpenF\u2026mHome(launcher, endRectF)"

    .line 157
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    move v7, v14

    move-object v14, v1

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x1fe4f00

    const/16 v29, 0x0

    move-object/from16 v3, p2

    move-object v1, v6

    move v6, v7

    move v7, v0

    move-object v0, v15

    move-object v15, v1

    move-object/from16 v16, v0

    .line 154
    invoke-direct/range {v2 .. v29}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v31, :cond_7

    .line 164
    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v0

    move-object/from16 v37, v0

    goto :goto_6

    :cond_7
    move-object/from16 v37, v30

    :goto_6
    if-eqz v31, :cond_8

    .line 166
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v30

    :cond_8
    move-object/from16 v35, v30

    .line 167
    new-instance v0, Lcom/miui/home/recents/anim/AllElementParams;

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    .line 171
    sget-object v39, Lcom/miui/home/recents/anim/StateType;->STATE_APP:Lcom/miui/home/recents/anim/StateType;

    const/16 v40, 0x0

    .line 172
    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v43, 0x2aa

    const/16 v44, 0x0

    move-object/from16 v32, v0

    .line 167
    invoke-direct/range {v32 .. v44}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getQuickOpeningWindowsAnimParams(Lcom/miui/home/launcher/Launcher;Landroid/view/View;ZZLandroid/graphics/Rect;Landroid/graphics/Rect;I)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v14, p7

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getQuickOpeningWindowsAnimParams iconLoc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowAnimParamsProvider"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .line 213
    invoke-direct {v0, v1, v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->boostGesture(Lcom/miui/home/launcher/Launcher;Z)V

    const-string v8, "window"

    .line 215
    invoke-virtual {v1, v8}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v8, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 219
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 220
    instance-of v8, v12, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v8

    if-nez v8, :cond_1

    .line 221
    iput-object v12, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 224
    :cond_1
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 226
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 228
    invoke-virtual {v10, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v11, 0x3f6b851f    # 0.92f

    .line 229
    invoke-static {v10, v11}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-static {v9, v14, v5}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 236
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-nez v13, :cond_4

    .line 237
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v13, v15

    float-to-int v13, v13

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-int v6, v6

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    const/high16 v17, 0x3f400000    # 0.75f

    mul-float v15, v15, v17

    float-to-int v15, v15

    .line 238
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v17

    float-to-int v12, v12

    .line 237
    invoke-virtual {v11, v13, v6, v15, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    :cond_4
    iget-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 241
    check-cast v6, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-interface {v6}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v6

    .line 242
    invoke-virtual {v11, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 244
    :cond_5
    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 245
    iget v6, v4, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    iget v12, v4, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    invoke-virtual {v11, v6, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 248
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    move/from16 v16, v11

    goto :goto_2

    :cond_7
    :goto_1
    const/16 v16, 0x1

    .line 251
    :goto_2
    iget-object v11, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v11, :cond_8

    check-cast v11, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-static {v11}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v11

    goto :goto_3

    :cond_8
    const/high16 v11, 0x41a00000    # 20.0f

    .line 254
    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/miui/home/recents/TaskViewUtils;->getSoscLaunchPosition(Landroid/view/View;)I

    move-result v12

    .line 255
    invoke-direct {v0, v12}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getEndRadius(I)F

    move-result v15

    .line 256
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_9

    move v11, v15

    .line 260
    :cond_9
    new-instance v0, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 261
    invoke-virtual {v0, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Landroid/graphics/Rect;)V

    .line 263
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v0

    const-string v0, "startOpeningWindowAnimators, currentDisplayRotation="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", homeRotation="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startRectF="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", iconLoc="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endRectF="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", windowTargetBounds="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startRadius = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", endRadius = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", launchPosition = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", useTranslucentState = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", appTranslucent="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isInMultiWindowMode="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a

    .line 279
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move v4, v15

    goto :goto_4

    :cond_a
    move v4, v11

    .line 282
    :goto_4
    new-instance v0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getQuickOpeningWindowsAnimParams$animListener$1;

    move-object v13, v0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getQuickOpeningWindowsAnimParams$animListener$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 295
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0, v10, v14}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v2

    .line 296
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0, v8, v14}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v5

    move-object v3, v5

    .line 301
    sget-object v8, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 293
    new-instance v28, Lcom/miui/home/recents/anim/RectFParams;

    move-object/from16 v17, p0

    move-object/from16 v0, v28

    const/4 v1, 0x0

    const-string v6, "transformCoordinateOpenF\u2026er(), endRectF, rotation)"

    .line 296
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    move v12, v15

    move v15, v5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x1fe4600

    const/16 v27, 0x0

    move v5, v12

    move/from16 v29, v9

    move/from16 v9, v16

    move-object/from16 v12, p2

    move-object/from16 v14, v17

    move/from16 v16, p7

    move/from16 v17, v29

    .line 293
    invoke-direct/range {v0 .. v27}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 309
    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v22

    .line 310
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v20

    .line 315
    sget-object v0, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v26

    .line 316
    sget-object v24, Lcom/miui/home/recents/anim/StateType;->STATE_APP:Lcom/miui/home/recents/anim/StateType;

    .line 311
    new-instance v0, Lcom/miui/home/recents/anim/AllElementParams;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v1, 0x2aa

    const/16 v29, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v28

    move/from16 v28, v1

    invoke-direct/range {v17 .. v29}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getRecentLaunchAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/view/View;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 49

    move-object/from16 v6, p1

    move-object/from16 v8, p4

    move/from16 v7, p5

    .line 529
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    return-object v9

    .line 532
    :cond_0
    move-object/from16 v35, p3

    check-cast v35, Lcom/miui/home/recents/views/TaskView;

    const/4 v4, 0x0

    .line 535
    new-instance v12, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v12}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    const/4 v0, 0x1

    .line 536
    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    if-eqz v6, :cond_1

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v9

    :goto_0
    if-eqz v6, :cond_2

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v9

    :goto_1
    const-string v10, "WindowAnimParamsProvider"

    if-eqz v8, :cond_8

    .line 540
    iget-object v2, v8, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-eqz v2, :cond_8

    array-length v3, v2

    if-lez v3, :cond_8

    const/4 v11, 0x0

    .line 541
    aget-object v2, v2, v11

    invoke-virtual {v12, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 546
    invoke-virtual {v12, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 547
    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 548
    invoke-virtual {v12}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p2

    .line 551
    invoke-static {v7, v8, v0}, Lcom/miui/home/recents/TaskViewUtils;->filtOpeningTargets(ILcom/miui/home/recents/util/RemoteAnimationTargetSet;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v0

    .line 552
    iget-object v2, v0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v2, :cond_3

    const-string v0, "getRecentsWindowAnimatorNew: filterOpeningTargets.unfilteredApps == null"

    .line 553
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 556
    :cond_3
    invoke-virtual {v12, v0, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSplitSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;I)V

    .line 558
    invoke-static {v12, v7}, Lcom/miui/home/recents/TaskViewUtils;->getEndRectF(Lcom/miui/home/recents/util/ClipAnimationHelper;I)Landroid/graphics/RectF;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v2, v35

    move-object v3, v13

    move/from16 v5, p5

    .line 560
    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/TaskViewUtils;->initStartRectF(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "getRecentsWindowAnimatorNew: startRectF is null"

    .line 569
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 572
    :cond_4
    invoke-static {v8, v0, v13, v7}, Lcom/miui/home/recents/TaskViewUtils;->getStartRadius(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v1

    .line 573
    invoke-static/range {p4 .. p5}, Lcom/miui/home/recents/TaskViewUtils;->getEndRadius(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    .line 574
    invoke-static {v0, v13, v3}, Lcom/miui/home/recents/util/RectUtil;->generateLeastWrapBoundWithRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    if-nez p6, :cond_5

    .line 576
    new-instance v3, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchAnimParams$listener$1;

    invoke-direct {v3, v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchAnimParams$listener$1;-><init>(Lcom/miui/home/launcher/Launcher;)V

    move-object/from16 v20, v3

    goto :goto_2

    :cond_5
    move-object/from16 v20, p6

    .line 608
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v3

    move/from16 v23, v3

    goto :goto_3

    :cond_6
    move/from16 v23, v11

    .line 609
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    move/from16 v24, v3

    goto :goto_4

    :cond_7
    move/from16 v24, v11

    .line 612
    :goto_4
    invoke-static {v6, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    .line 613
    invoke-static {v6, v13}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    move-object v10, v0

    .line 618
    sget-object v15, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 610
    new-instance v37, Lcom/miui/home/recents/anim/RectFParams;

    move-object/from16 v7, v37

    const-string v3, "transformCoordinateOpenF\u2026mHome(launcher, endRectF)"

    .line 613
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v33, 0x1fe4400

    const/16 v34, 0x0

    move-object/from16 v8, p4

    move v11, v1

    move-object v0, v12

    move v12, v2

    move-object/from16 v19, v35

    move-object/from16 v21, v0

    .line 610
    invoke-direct/range {v7 .. v34}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 627
    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v41

    .line 628
    new-instance v42, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 p0, v42

    move/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v35

    move/from16 p4, v2

    move-object/from16 p5, v3

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 629
    new-instance v0, Lcom/miui/home/recents/anim/AllElementParams;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    .line 633
    sget-object v43, Lcom/miui/home/recents/anim/StateType;->STATE_APP:Lcom/miui/home/recents/anim/StateType;

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x38e

    const/16 v48, 0x0

    move-object/from16 v36, v0

    .line 629
    invoke-direct/range {v36 .. v48}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_8
    const-string v0, "openingTargets.apps size is 0"

    .line 543
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9
.end method

.method static synthetic getRecentLaunchAnimParams$default(Lcom/miui/home/recents/anim/WindowAnimParamsProvider;Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/view/View;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;ILjava/lang/Object;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 521
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentLaunchAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/view/View;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    return-object p0
.end method

.method private final getRecentOpenTargetRect(II)Landroid/graphics/RectF;
    .locals 0

    if-nez p1, :cond_0

    .line 725
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getScreenRectF(I)Landroid/graphics/RectF;

    move-result-object p0

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getScreenRectF(I)Landroid/graphics/RectF;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final getTask(Landroid/content/Context;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 3

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    .line 1470
    :cond_0
    iget v0, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getRecentTasks(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    .line 1471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    .line 1472
    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v2, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_2
    return-object p0
.end method

.method private final isCloseFromGoogleAssistant(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1576
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result p0

    return p0
.end method

.method private final isIconLayoutFromSoscChange(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    const-string p0, "WindowAnimParamsProvider"

    if-nez p1, :cond_0

    const-string p1, "isIconLayoutFromSoscChange: launcher is null, return false"

    .line 1481
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1484
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInSoscing()Z

    move-result p1

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIconLayoutFromSoscChange: isIconLayout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private final isIgnoreBlurAndShortcutElementForOpening(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1568
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isGalleryPicker(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method private final isLaunchAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1196
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->isOpenAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isLaunchingFromRecents(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 1178
    instance-of p0, p2, Lcom/miui/home/recents/views/TaskView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1180
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p0, v0, :cond_0

    .line 1181
    invoke-static {p1, p2, p3}, Lcom/miui/home/recents/TaskViewUtils;->findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isModeFromNewHome(Landroid/content/Context;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 0

    .line 1397
    invoke-static {p1, p2, p3}, Lcom/miui/home/recents/QuickstepAppTransitionFeedModeHelper;->isModeFromNewHome(Landroid/content/Context;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p0

    return p0
.end method

.method private final isNewHomeOverlayAttachedAndEnable()Z
    .locals 2

    .line 1406
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1407
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isOverlayAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1408
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->isSlideUpContentCenter()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final isNewHomeViewAdded()Z
    .locals 1

    .line 1401
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final launcherIsATargetWithMode(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 4

    .line 1200
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1201
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p0, p2

    move p1, v2

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object v0, p2, p1

    .line 1202
    iget v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v3, p3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isHomeActivityType()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    if-eqz p1, :cond_9

    if-eqz p2, :cond_5

    .line 1208
    array-length v0, p2

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    if-nez v0, :cond_9

    .line 1209
    aget-object v0, p2, v2

    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1210
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 1211
    iget v0, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v0, p3, :cond_6

    .line 1212
    iget-object p2, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    .line 1213
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1211
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    .line 1220
    :cond_7
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getLauncherTaskId(Lcom/miui/home/launcher/Launcher;)I

    move-result p0

    .line 1221
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 1222
    iget v0, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v0, p3, :cond_8

    iget p2, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne p2, p0, :cond_8

    return v1

    :cond_9
    return v2
.end method

.method private final shouldAppToRecentsAnimToCenter(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    .line 914
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 917
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    const-string v1, "window"

    .line 919
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 920
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getClosingAnimParams([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Landroid/view/View;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 7

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonApps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 656
    invoke-direct {p0, v2, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->boostGesture(Lcom/miui/home/launcher/Launcher;Z)V

    .line 659
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v3

    instance-of v4, v3, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getRemoteAnimationProvider()Lcom/miui/home/recents/util/RemoteAnimationProvider;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 661
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    .line 662
    invoke-direct {p0, v2, p1, p2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getClosingWindowToRecentAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    return-object p0

    .line 664
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClosingAnimParams, sosc.isHalfSplitMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sosc.isMinimized="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureSoscController;->isMinimized()Z

    move-result v3

    .line 664
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sosc.preIsMinimized="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureSoscController;->isMinimizedWhenPreSoScChanged()Z

    move-result v3

    .line 664
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowAnimParamsProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 669
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 670
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isMinimizedWhenPreSoScChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 671
    :cond_4
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v3, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 676
    :cond_5
    invoke-direct {p0, v2, p1, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->launcherIsATargetWithMode(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 677
    invoke-direct {p0, v2, p1, v0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isModeFromNewHome(Landroid/content/Context;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 678
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isNewHomeViewAdded()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isNewHomeOverlayAttachedAndEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 679
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getClosingWindowFromFeedAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Landroid/view/View;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    goto :goto_1

    :cond_7
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 681
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getClosingWindowAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Landroid/view/View;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    goto :goto_1

    :cond_8
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 684
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getClosingWindowAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Landroid/view/View;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final getHomeStackBound()Landroid/graphics/Rect;
    .locals 3

    .line 1379
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object p0

    const-string v0, "{\n            launcher.rootViewRect\n        }"

    .line 1380
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1383
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p0
.end method

.method public final getLaunchSecondSplitTaskAnimParams(Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 13

    const-string p0, "taskView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    sget-object p0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v5

    .line 639
    new-instance p0, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v7, 0xb

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p0

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 640
    new-instance p1, Lcom/miui/home/recents/anim/AllElementParams;

    .line 643
    sget-object v7, Lcom/miui/home/recents/anim/StateType;->STATE_APP:Lcom/miui/home/recents/anim/StateType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38f

    const/4 v12, 0x0

    move-object v0, p1

    .line 640
    invoke-direct/range {v0 .. v12}, Lcom/miui/home/recents/anim/AllElementParams;-><init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/WallpaperParam;Lcom/miui/home/recents/anim/TaskViewsParams;Lcom/miui/home/recents/anim/StateType;Lcom/miui/home/recents/anim/RecentBlurParams;Lcom/miui/home/recents/anim/RecentBlurParams;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final getOpeningAnimParams([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/view/View;ILandroid/graphics/Rect;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 10

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openingTargets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    .line 68
    invoke-virtual {p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getElementTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, v2, p2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getOpeningWindowsFromElementAnimParams(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isLaunchAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    const/4 v1, 0x1

    .line 73
    invoke-direct {p0, v2, p1, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->launcherIsATargetWithMode(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v1

    :goto_1
    if-eqz p3, :cond_8

    if-eqz v2, :cond_3

    .line 78
    invoke-direct {p0, v2, v1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->boostGesture(Lcom/miui/home/launcher/Launcher;Z)V

    .line 80
    :cond_3
    invoke-direct {p0, v2, p3, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->isLaunchingFromRecents(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    .line 82
    invoke-static/range {v1 .. v9}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentLaunchAnimParams$default(Lcom/miui/home/recents/anim/WindowAnimParamsProvider;Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/view/View;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;ILjava/lang/Object;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v0, :cond_7

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v4

    :cond_6
    :goto_2
    and-int p1, v3, v1

    move v5, p1

    goto :goto_3

    :cond_7
    move v5, v3

    :goto_3
    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move v6, p4

    move-object v7, p5

    .line 94
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getOpeningWindowsAnimParams(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZILandroid/graphics/Rect;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getQuickOpeningAnimParams(Landroid/view/View;ZZLandroid/graphics/Rect;Landroid/graphics/Rect;I)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 9

    const-string v0, "windowBounds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    if-eqz p1, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .line 186
    invoke-direct/range {v1 .. v8}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getQuickOpeningWindowsAnimParams(Lcom/miui/home/launcher/Launcher;Landroid/view/View;ZZLandroid/graphics/Rect;Landroid/graphics/Rect;I)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecentLaunchPairAnimParams([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/anim/AllElementParams;
    .locals 9

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 493
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    .line 494
    :cond_1
    invoke-static {v3, v1, p1}, Lcom/miui/home/recents/TaskViewUtils;->findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v5

    .line 496
    new-instance v6, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v0, 0x0

    invoke-direct {v6, p1, v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    if-nez v5, :cond_2

    const-string p0, "WindowAnimParamsProvider"

    const-string p1, "getRecentLaunchPairAnimParams error:taskView == null"

    .line 498
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 501
    :cond_2
    new-instance v8, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchPairAnimParams$animListener$1;

    invoke-direct {v8, v3}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchPairAnimParams$animListener$1;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    .line 518
    invoke-direct/range {v2 .. v8}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentLaunchAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/view/View;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;)Lcom/miui/home/recents/anim/AllElementParams;

    move-result-object p0

    return-object p0
.end method

.method public final getRecentOpeningWindowParams(ZLandroid/view/View;Landroid/graphics/RectF;)Lcom/miui/home/recents/anim/RectFParams;
    .locals 32

    move/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "WindowAnimParamsProvider"

    const-string v3, "getRecentOpeningWindowParams"

    .line 732
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 734
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 735
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "homeRotation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", disp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TEST_RECT"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 738
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    move-object v6, v1

    move-object/from16 v1, p0

    goto :goto_1

    :cond_2
    move-object/from16 v1, p0

    move-object v6, v4

    .line 744
    :goto_1
    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentOpenTargetRect(II)Landroid/graphics/RectF;

    move-result-object v7

    .line 746
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v1

    int-to-float v9, v1

    if-eqz v0, :cond_3

    .line 749
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    :goto_2
    move-object v12, v1

    .line 752
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v1

    xor-int/lit8 v13, v1, 0x1

    xor-int/lit8 v14, v0, 0x1

    .line 755
    new-instance v1, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentOpeningWindowParams$rectFParams$1;

    move-object/from16 v17, v1

    invoke-direct {v1, v0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentOpeningWindowParams$rectFParams$1;-><init>(Z)V

    .line 741
    new-instance v0, Lcom/miui/home/recents/anim/RectFParams;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0x1fe6400

    const/16 v31, 0x0

    move-object/from16 v16, p2

    move/from16 v20, v2

    move/from16 v21, v3

    invoke-direct/range {v4 .. v31}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getRemoteAbortParams(Lcom/miui/home/recents/anim/RectFParams;)Lcom/miui/home/recents/anim/RectFParams;
    .locals 30

    const-string v0, "curParams"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 325
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object v2

    .line 326
    instance-of v3, v2, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz v3, :cond_0

    .line 327
    check-cast v2, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    const/4 v0, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v4, p0

    invoke-direct {v4, v2, v0, v3}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getIconRect(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 328
    invoke-interface {v2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v2

    .line 329
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 330
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object v5, v2

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getStartRect()Landroid/graphics/RectF;

    move-result-object v0

    :cond_1
    move-object v5, v0

    .line 334
    :goto_0
    new-instance v0, Lcom/miui/home/recents/anim/RectFParams;

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndRadius()F

    move-result v6

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getStartRadius()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getEndAlpha()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getStartAlpha()F

    move-result v9

    .line 336
    sget-object v10, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/RectFParams;->getTargetView()Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x1fff700

    const/16 v29, 0x0

    .line 334
    invoke-direct/range {v2 .. v29}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getScreenRect(I)Landroid/graphics/Rect;
    .locals 2

    .line 716
    invoke-static {p1}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 717
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 719
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p0
.end method

.method public final getScreenRectF(I)Landroid/graphics/RectF;
    .locals 2

    .line 690
    invoke-static {p1}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p1

    .line 691
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isTouchCenterRange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getDeviceSizeByOrientation(Z)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 694
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getDesktopDisplaySizeByOrientation(Z)Lkotlin/Pair;

    move-result-object p0

    .line 691
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 696
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;
    .locals 9

    .line 1256
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p1, :cond_0

    return-object p0

    .line 1260
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1261
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v1

    const-string v3, "targetSet.apps"

    const-string v4, "WindowAnimParamsProvider"

    if-eqz v1, :cond_6

    .line 1262
    iget-object p1, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    if-eqz p2, :cond_2

    .line 1265
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1266
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1267
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 1268
    new-instance v5, Landroid/graphics/Rect;

    .line 1269
    iget v6, v3, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    .line 1270
    iget v7, v3, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    .line 1271
    iget v8, v3, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    .line 1272
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    .line 1268
    invoke-direct {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 1275
    :cond_1
    iget-object v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/miui/home/recents/util/Utilities;->cropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_1

    .line 1278
    :cond_2
    iget-object v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/miui/home/recents/util/Utilities;->cropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    .line 1280
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_3

    .line 1281
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1284
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1285
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWindowTargetBounds    hasMultiTask    bounds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    goto :goto_2

    .line 1288
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWindowTargetBounds    hasMultiTask    defaultBounds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p0

    .line 1292
    :cond_6
    iget-object p1, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    :goto_3
    if-ge v2, v1, :cond_a

    aget-object v3, p1, v2

    if-eqz p2, :cond_8

    .line 1295
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1296
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1297
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 1298
    new-instance v5, Landroid/graphics/Rect;

    .line 1299
    iget v6, v3, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    .line 1300
    iget v7, v3, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    .line 1301
    iget v8, v3, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    .line 1302
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    .line 1298
    invoke-direct {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    .line 1305
    :cond_7
    iget-object v5, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    goto :goto_4

    .line 1308
    :cond_8
    iget-object v5, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    :goto_4
    if-eqz v5, :cond_9

    .line 1310
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_9

    .line 1311
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1312
    iget p0, v5, Landroid/graphics/Rect;->left:I

    iget p1, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWindowTargetBounds    bounds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1317
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWindowTargetBounds    defaultBounds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getWindowTargetBoundsForStartRect(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;IZ)Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x0

    .line 1326
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getScreenRect(I)Landroid/graphics/Rect;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 1330
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1331
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v2

    const-string v3, "targetSet.apps"

    const-string v4, "WindowAnimParamsProvider"

    if-eqz v2, :cond_4

    .line 1332
    iget-object p1, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p3, p1

    :goto_0
    if-ge v0, p3, :cond_2

    aget-object v2, p1, v0

    .line 1334
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, p2, :cond_1

    .line 1335
    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1339
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWindowTargetBounds    hasMultiTask    bounds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    goto :goto_1

    .line 1343
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWindowTargetBounds    hasMultiTask    defaultBounds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0

    .line 1347
    :cond_4
    iget-object p1, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_8

    aget-object v2, p1, v0

    if-eqz p3, :cond_6

    .line 1350
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1351
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1352
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v2

    .line 1353
    new-instance v3, Landroid/graphics/Rect;

    .line 1354
    iget v5, v2, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    .line 1355
    iget v6, v2, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    .line 1356
    iget v7, v2, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    .line 1357
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    .line 1353
    invoke-direct {v3, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 1360
    :cond_5
    iget-object v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    goto :goto_3

    .line 1363
    :cond_6
    iget-object v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    :goto_3
    if-eqz v3, :cond_7

    .line 1365
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_7

    .line 1366
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1367
    iget p0, v3, Landroid/graphics/Rect;->left:I

    iget p1, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWindowTargetBounds    bounds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1372
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWindowTargetBounds    defaultBounds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final isGalleryPicker(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 1580
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz p1, :cond_1

    .line 1581
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    move-object v1, p0

    :goto_1
    if-eqz p1, :cond_2

    .line 1582
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, p0

    :goto_2
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-nez p1, :cond_3

    goto :goto_3

    .line 1586
    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "runningTaskTopActivityComponentName.className"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.miui.gallery.picker.PickGalleryActivity:"

    const/4 v4, 0x2

    invoke-static {v3, v0, v2, v4, p0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1587
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "runningTaskBaseActivityComponentName.className"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.miui.gallery/com.miui.gallery.gallerywidget.ui.CustomDispatchActivity:"

    invoke-static {v1, v0, v2, v4, p0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1588
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "runningTaskComponent.className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v2, v4, p0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_3
    return v2
.end method
