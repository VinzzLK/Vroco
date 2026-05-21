.class public Lcom/miui/home/launcher/RecentsAndFSGestureUtils;
.super Ljava/lang/Object;
.source "RecentsAndFSGestureUtils.java"


# static fields
.field private static final CAN_ONLY_USE_TASK_ID_TO_DISTINGUISH_SMALL_WINDOW:Z

.field private static IS_MIUIHOME_AS_RECENTS_PACKAGE:Z

.field private static final IS_NOT_SUPPORT_GESTURE_V3_DEVICE:Z

.field private static USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$eyLjqzkLUR5yDApf60MAzt1R0vc(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->lambda$lockOrUnlockApp$0(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qSDSepgU4X6YwlXplWhiOaX1k2Y(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->lambda$lockOrUnlockApp$1(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isNotSupportGestureV3Device()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->IS_NOT_SUPPORT_GESTURE_V3_DEVICE:Z

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isMiuiHomeAsRecentsPackage()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->IS_MIUIHOME_AS_RECENTS_PACKAGE:Z

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canOnlyUseTaskIdToDistinguishSmallWindow()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->CAN_ONLY_USE_TASK_ID_TO_DISTINGUISH_SMALL_WINDOW:Z

    .line 46
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "pine"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "olive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "olivelite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "olivewood"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static canOnlyUseTaskIdToDistinguishSmallWindow()Z
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 217
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const-class v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v2

    const-string v2, "android.util.MiuiMultiWindowUtils"

    .line 218
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getFreeformBlackList"

    const-class v5, Ljava/util/List;

    .line 220
    invoke-static {v5, v0}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-static {v2, v4, v5, v0}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static canTaskEnterMiniSmallWindow(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;II)Z
    .locals 2

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportMultipleSmallWindowFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p4

    const-string v0, "RecentsAndFSGestureUtils"

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    const-string p0, "Now is multi window"

    .line 171
    invoke-static {p2, p3, v1, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 174
    :cond_0
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->canEnterMiniSmallWindow()Z

    move-result p4

    if-nez p4, :cond_1

    const-string p0, "Now is showing small window"

    .line 175
    invoke-static {p2, p3, v1, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 178
    :cond_1
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskHasMultipleTasks(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p0, "task has multiple tasks"

    .line 179
    invoke-static {p2, p3, v1, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 182
    :cond_2
    invoke-static {p0, p2, p3}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->supportEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 184
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static canTaskEnterSmallWindow(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;II)Z
    .locals 0

    .line 145
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskHasMultipleTasks(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    const-string/jumbo p1, "task has multiple tasks"

    .line 146
    invoke-static {p2, p3, p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecentsAndFSGestureUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 149
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static canTaskEnterSmallWindow(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;II)Z
    .locals 3

    .line 129
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskHasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    const-string v1, "RecentsAndFSGestureUtils"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "task has multiple tasks"

    .line 130
    invoke-static {p2, p3, v2, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskInWorldCirculate(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p0, "task in world circulate"

    .line 134
    invoke-static {p2, p3, v2, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 137
    :cond_1
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/RecentsModel;->isTaskScreening(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p0, "task in screening"

    .line 138
    invoke-static {p2, p3, v2, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 141
    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 3

    .line 154
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const-string v1, "RecentsAndFSGestureUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportMultipleSmallWindowFeature()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Now is multi window"

    .line 156
    invoke-static {p1, p2, v2, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 160
    :cond_1
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->canEnterSmallWindow(ILjava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p0, "Now is showing small window"

    .line 161
    invoke-static {p1, p2, v2, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 164
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->supportEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canTaskEnterSmallWindow, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", taskId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", result="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", because "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRecentsPkgName()Ljava/lang/String;
    .locals 5

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_recentsComponentName"

    const-string/jumbo v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 91
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recents_package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsAndFSGestureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSuggestionList(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "RecentsAndFSGestureUtils"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.util.MiuiMultiWindowUtils"

    .line 277
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    const-string v4, "getFreeformSuggestionList"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v8

    .line 276
    invoke-static {v2, v3, v4, v6, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSuggestionList, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v9, v1

    move-object v1, p0

    move-object p0, v9

    :goto_1
    const-string v2, "getFreeformSuggestionList error"

    .line 283
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object p0
.end method

.method public static getTaskStackViewLayoutStyle(Landroid/content/Context;)I
    .locals 2

    .line 289
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "task_stack_view_layout_style"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static isMiuiHomeAsRecentsPackage()Z
    .locals 2

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getRecentsPkgName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNotSupportGestureV3Device()Z
    .locals 5

    const-string v0, "isNotSupportGestureV3Device"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.util.MiuiGestureUtils"

    .line 58
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 59
    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    const-string v3, "RecentsAndFSGestureUtils"

    .line 62
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static isPkgSupportSmallWindow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 266
    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getSuggestionList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 270
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportQuickSwitchGesture()Z
    .locals 1

    .line 322
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSupportRecentsAndFsGesture()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportStartSmallWithPosition()Z
    .locals 9

    const-string v0, "RecentsAndFSGestureUtils"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.util.MiuiMultiWindowUtils"

    .line 116
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "startSmallFreeform"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Class;

    .line 118
    invoke-static {v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Landroid/graphics/Rect;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 116
    invoke-static {v2, v3, v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportStartSmallWithPosition,method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move v1, v8

    :cond_0
    return v1

    :catch_0
    move-exception v2

    const-string v3, "isSupportStartSmallWithPosition error"

    .line 123
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static isTaskHasMultipleTasks(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 234
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isTaskHasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTaskInWorldCirculate(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTaskSupportSmallWindow(Landroid/content/Context;I)Z
    .locals 8

    const-string v0, "activity"

    .line 247
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/ActivityManager;

    const/4 p0, 0x1

    .line 250
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getTaskResizeableForFreeform"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, p0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, p0, [Ljava/lang/Object;

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 250
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTaskSupportSmallWindow, taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecentsAndFSGestureUtils"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p0
.end method

.method public static isUseGestureVersion3(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isUseTaskStackLayoutStyleHorizontalAnim(Z)Z
    .locals 1

    .line 259
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$lockOrUnlockApp$0(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 303
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p2, v0, p1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->updateApplicationLockedState(Ljava/lang/String;IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 304
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p2, p0, p1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->updateApplicationLockedState(Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 303
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 306
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p2, p0, p1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->updateApplicationLockedState(Ljava/lang/String;IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$lockOrUnlockApp$1(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    .line 310
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lockOrUnlockApp failed, task="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", toLock="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsAndFSGestureUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->setLocked(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->onLockedChange()V

    .line 316
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static lockOrUnlockApp(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V
    .locals 2

    .line 300
    new-instance v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/recents/model/Task;Z)V

    new-instance v1, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static setTaskStackViewLayoutStyle(Landroid/content/Context;I)V
    .locals 1

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "task_stack_view_layout_style"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static supportEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RecentsAndFSGestureUtils"

    if-nez v0, :cond_0

    const-string p0, "Display don\'t support"

    .line 198
    invoke-static {p1, p2, v1, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 201
    :cond_0
    invoke-static {p0, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskSupportSmallWindow(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "task don\'t support"

    .line 202
    invoke-static {p1, p2, v1, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 205
    :cond_1
    sget-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->CAN_ONLY_USE_TASK_ID_TO_DISTINGUISH_SMALL_WINDOW:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    const-string v0, "only use taskId to distinguish"

    .line 206
    invoke-static {p1, p2, p0, v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 209
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isPkgSupportSmallWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const-string/jumbo v0, "use taskId and pkg to distinguish"

    .line 210
    invoke-static {p1, p2, p0, v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
