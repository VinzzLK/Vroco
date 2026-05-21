.class public Lcom/miui/home/library/utils/MiBridgeUtils;
.super Ljava/lang/Object;
.source "MiBridgeUtils.java"


# static fields
.field private static IThermalEventCallBackClass:Ljava/lang/Class;

.field public static JAR_PATH:Ljava/lang/String;

.field private static mCancelBindCoreFunc:Ljava/lang/reflect/Method;

.field private static mCancelCpuHighFunc:Ljava/lang/reflect/Method;

.field private static mCancelDdrHighFunc:Ljava/lang/reflect/Method;

.field private static mCancelGpuHighFunc:Ljava/lang/reflect/Method;

.field private static mCancelThreadLevelPriorityFunc:Ljava/lang/reflect/Method;

.field private static mCancelThreadPriorityFunc:Ljava/lang/reflect/Method;

.field private static mCheckDebugPermissionFunc:Ljava/lang/reflect/Method;

.field private static mCheckPermissionFunc:Ljava/lang/reflect/Method;

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static mGetSystemStateFunc:Ljava/lang/reflect/Method;

.field private static mPerf:Ljava/lang/Object;

.field private static mRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;

.field private static mRequestBindCoreFunc:Ljava/lang/reflect/Method;

.field private static mRequestCpuHighFunc:Ljava/lang/reflect/Method;

.field private static mRequestDdrHighFunc:Ljava/lang/reflect/Method;

.field private static mRequestGpuHighFunc:Ljava/lang/reflect/Method;

.field private static mRequestIOPrefetchFunc:Ljava/lang/reflect/Method;

.field private static mRequestThreadLevelPriorityFunc:Ljava/lang/reflect/Method;

.field private static mRequestThreadPriorityFunc:Ljava/lang/reflect/Method;

.field private static mSetDynamicRefreshRateSceneFunc:Ljava/lang/reflect/Method;

.field private static mUnRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;

.field private static perfClass:Ljava/lang/Class;

.field private static perfClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "requestThreadLevelPro no exit"

    .line 15
    const-class v1, [I

    const-string v2, "checkPermission"

    const-class v3, Ljava/lang/String;

    const-string v4, "MiBridge"

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-gt v5, v6, :cond_0

    const-string v5, "/system/framework/MiuiBooster.jar"

    goto :goto_0

    :cond_0
    const-string v5, "/system_ext/framework/MiuiBooster.jar"

    :goto_0
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->JAR_PATH:Ljava/lang/String;

    const/4 v5, 0x0

    .line 18
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mCheckPermissionFunc:Ljava/lang/reflect/Method;

    .line 19
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mCheckDebugPermissionFunc:Ljava/lang/reflect/Method;

    .line 20
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestCpuHighFunc:Ljava/lang/reflect/Method;

    .line 21
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelCpuHighFunc:Ljava/lang/reflect/Method;

    .line 22
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestThreadPriorityFunc:Ljava/lang/reflect/Method;

    .line 23
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelThreadPriorityFunc:Ljava/lang/reflect/Method;

    .line 24
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestGpuHighFunc:Ljava/lang/reflect/Method;

    .line 25
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelGpuHighFunc:Ljava/lang/reflect/Method;

    .line 26
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestIOPrefetchFunc:Ljava/lang/reflect/Method;

    .line 27
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestDdrHighFunc:Ljava/lang/reflect/Method;

    .line 28
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelDdrHighFunc:Ljava/lang/reflect/Method;

    .line 29
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestBindCoreFunc:Ljava/lang/reflect/Method;

    .line 30
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelBindCoreFunc:Ljava/lang/reflect/Method;

    .line 31
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mGetSystemStateFunc:Ljava/lang/reflect/Method;

    .line 32
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;

    .line 33
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mUnRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;

    .line 34
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mSetDynamicRefreshRateSceneFunc:Ljava/lang/reflect/Method;

    .line 35
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestThreadLevelPriorityFunc:Ljava/lang/reflect/Method;

    .line 36
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelThreadLevelPriorityFunc:Ljava/lang/reflect/Method;

    .line 38
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->IThermalEventCallBackClass:Ljava/lang/Class;

    .line 40
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 41
    sput-object v5, Lcom/miui/home/library/utils/MiBridgeUtils;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    .line 44
    :try_start_0
    new-instance v6, Ldalvik/system/PathClassLoader;

    sget-object v7, Lcom/miui/home/library/utils/MiBridgeUtils;->JAR_PATH:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v6, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClassLoader:Ldalvik/system/PathClassLoader;

    const-string v7, "com.miui.performance.MiuiBooster"

    .line 46
    invoke-virtual {v6, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    new-array v7, v5, [Ljava/lang/Class;

    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    sput-object v6, Lcom/miui/home/library/utils/MiBridgeUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v3, v7, v5

    .line 48
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    .line 50
    :try_start_1
    sget-object v8, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    invoke-virtual {v8, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/miui/home/library/utils/MiBridgeUtils;->mCheckPermissionFunc:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v7, "checkPermission no exit"

    .line 52
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14

    .line 55
    :goto_1
    :try_start_3
    sget-object v7, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClassLoader:Ldalvik/system/PathClassLoader;

    const-string v8, "com.miui.performance.IThermalEventCallBack"

    invoke-virtual {v7, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/miui/home/library/utils/MiBridgeUtils;->IThermalEventCallBackClass:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    :try_start_4
    const-string v7, "com.miui.performance.IThermalEventCallBack not exits!"

    .line 57
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    :goto_2
    const/4 v7, 0x4

    const/4 v8, 0x3

    :try_start_5
    new-array v10, v7, [Ljava/lang/Class;

    .line 60
    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v5

    aput-object v3, v10, v9

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    aput-object v3, v10, v8

    .line 61
    sget-object v11, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    invoke-virtual {v11, v2, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mCheckDebugPermissionFunc:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    :try_start_6
    const-string v2, "checkPermission_debug no exit"

    .line 63
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14

    :goto_3
    :try_start_7
    new-array v2, v8, [Ljava/lang/Class;

    .line 67
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    aput-object v10, v2, v9

    aput-object v10, v2, v6

    .line 68
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "requestCpuHighFreq"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestCpuHighFunc:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    :try_start_8
    const-string v2, "requestCpuHighFreq no exit"

    .line 70
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_14

    :goto_4
    :try_start_9
    new-array v2, v9, [Ljava/lang/Class;

    .line 73
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    .line 74
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "cancelCpuHighFreq"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelCpuHighFunc:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    :try_start_a
    const-string v2, "cancelCpuHighFreq no exit"

    .line 76
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_14

    :goto_5
    :try_start_b
    new-array v2, v8, [Ljava/lang/Class;

    .line 80
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    aput-object v10, v2, v9

    aput-object v10, v2, v6

    .line 81
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "requestThreadPriority"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestThreadPriorityFunc:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_6

    :catch_5
    :try_start_c
    const-string v2, "requestThreadPriority no exit"

    .line 83
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_14

    :goto_6
    :try_start_d
    new-array v2, v6, [Ljava/lang/Class;

    .line 86
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    aput-object v10, v2, v9

    .line 87
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "cancelThreadPriority"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelThreadPriorityFunc:Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_7

    :catch_6
    :try_start_e
    const-string v2, "cancelThreadPriority no exit"

    .line 89
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_14

    :goto_7
    :try_start_f
    new-array v2, v8, [Ljava/lang/Class;

    .line 93
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    aput-object v10, v2, v9

    aput-object v10, v2, v6

    .line 94
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "requestGpuHighFreq"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestGpuHighFunc:Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_8

    :catch_7
    :try_start_10
    const-string v2, "requestGpuHighFreq no exit"

    .line 96
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14

    :goto_8
    :try_start_11
    new-array v2, v9, [Ljava/lang/Class;

    .line 99
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    .line 100
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "cancelGpuHighFreq"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelGpuHighFunc:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_9

    :catch_8
    :try_start_12
    const-string v2, "cancelGpuHighFreq no exit"

    .line 102
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_14

    :goto_9
    :try_start_13
    new-array v2, v8, [Ljava/lang/Class;

    .line 106
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    aput-object v10, v2, v9

    aput-object v10, v2, v6

    .line 107
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "requestDdrHighFreq"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestDdrHighFunc:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_a

    :catch_9
    :try_start_14
    const-string v2, "requestDdrHighFreq no exit"

    .line 109
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    :goto_a
    :try_start_15
    new-array v2, v9, [Ljava/lang/Class;

    .line 112
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    .line 113
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "cancelDdrHighFreq"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelDdrHighFunc:Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_b

    :catch_a
    :try_start_16
    const-string v2, "cancelDdrHighFreq no exit"

    .line 115
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_14

    :goto_b
    :try_start_17
    new-array v2, v7, [Ljava/lang/Class;

    .line 119
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    aput-object v1, v2, v9

    aput-object v10, v2, v6

    aput-object v10, v2, v8

    .line 120
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "requestBindCore"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestBindCoreFunc:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    goto :goto_c

    :catch_b
    :try_start_18
    const-string v2, "requestBindCore no exit"

    .line 122
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14

    :goto_c
    :try_start_19
    new-array v2, v6, [Ljava/lang/Class;

    .line 126
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    aput-object v10, v2, v9

    .line 127
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "cancelBindCore"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelBindCoreFunc:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    goto :goto_d

    :catch_c
    :try_start_1a
    const-string v2, "cancelBindCore no exit"

    .line 129
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_14

    :goto_d
    :try_start_1b
    new-array v2, v6, [Ljava/lang/Class;

    .line 133
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    aput-object v3, v2, v9

    .line 134
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "requestIOPrefetch"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestIOPrefetchFunc:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    goto :goto_e

    :catch_d
    :try_start_1c
    const-string v2, "requestIOPrefetch no exit"

    .line 136
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_14

    :goto_e
    :try_start_1d
    new-array v2, v8, [Ljava/lang/Class;

    .line 139
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    const-class v11, Landroid/content/Context;

    aput-object v11, v2, v9

    aput-object v10, v2, v6

    .line 140
    sget-object v10, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v11, "getSystemState"

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mGetSystemStateFunc:Ljava/lang/reflect/Method;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e

    goto :goto_f

    :catch_e
    :try_start_1e
    const-string v2, "getSystemState no exit"

    .line 142
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_14

    :goto_f
    :try_start_1f
    new-array v2, v8, [Ljava/lang/Class;

    .line 145
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    aput-object v3, v2, v9

    aput-object v10, v2, v6

    .line 146
    sget-object v3, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string/jumbo v10, "setDynamicRefreshRateScene"

    invoke-virtual {v3, v10, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mSetDynamicRefreshRateSceneFunc:Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    goto :goto_10

    :catch_f
    :try_start_20
    const-string/jumbo v2, "setDynamicRefreshRateScene no exit"

    .line 148
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_14

    :goto_10
    :try_start_21
    new-array v2, v6, [Ljava/lang/Class;

    .line 151
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/home/library/utils/MiBridgeUtils;->IThermalEventCallBackClass:Ljava/lang/Class;

    aput-object v3, v2, v9

    .line 152
    sget-object v3, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v10, "registerThermalEventCallback"

    invoke-virtual {v3, v10, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_10

    goto :goto_11

    :catch_10
    move-exception v2

    .line 154
    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registerThermalEventCallback no exit, "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_14

    :goto_11
    :try_start_23
    new-array v2, v6, [Ljava/lang/Class;

    .line 157
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/home/library/utils/MiBridgeUtils;->IThermalEventCallBackClass:Ljava/lang/Class;

    aput-object v3, v2, v9

    .line 158
    sget-object v3, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string/jumbo v10, "unRegisterThermalEventCallback"

    invoke-virtual {v3, v10, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mUnRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_11

    goto :goto_12

    :catch_11
    :try_start_24
    const-string v2, "UnRegisterThermalEventCallback no exit"

    .line 160
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_14

    :goto_12
    :try_start_25
    new-array v2, v7, [Ljava/lang/Class;

    .line 163
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    aput-object v1, v2, v9

    aput-object v3, v2, v6

    aput-object v3, v2, v8

    .line 164
    sget-object v1, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v3, "requestThreadLevelPro"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestThreadLevelPriorityFunc:Ljava/lang/reflect/Method;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_12

    goto :goto_13

    .line 166
    :catch_12
    :try_start_26
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_14

    :goto_13
    :try_start_27
    new-array v1, v6, [Ljava/lang/Class;

    .line 169
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    aput-object v2, v1, v9

    .line 170
    sget-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->perfClass:Ljava/lang/Class;

    const-string v3, "cancelThreadLevelPro"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/home/library/utils/MiBridgeUtils;->mCancelThreadLevelPriorityFunc:Ljava/lang/reflect/Method;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_13

    goto :goto_14

    .line 172
    :catch_13
    :try_start_28
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiBridge() : Load Class Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_14
    :try_start_29
    sget-object v0, Lcom/miui/home/library/utils/MiBridgeUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    new-array v1, v5, [Ljava/lang/Object;

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/utils/MiBridgeUtils;->mPerf:Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiBridge() : newInstance Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_15
    return-void
.end method

.method public static checkPermission(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    .line 190
    :try_start_0
    sget-object v1, Lcom/miui/home/library/utils/MiBridgeUtils;->mCheckPermissionFunc:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/miui/home/library/utils/MiBridgeUtils;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 191
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check permission failed , e:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static requestCpuHighFreq(III)I
    .locals 4

    .line 210
    :try_start_0
    sget-object v0, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestCpuHighFunc:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/miui/home/library/utils/MiBridgeUtils;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 211
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "request cpu high failed , e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static requestThreadLevelPriority(I[III)I
    .locals 4

    .line 361
    :try_start_0
    sget-object v0, Lcom/miui/home/library/utils/MiBridgeUtils;->mRequestThreadLevelPriorityFunc:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/miui/home/library/utils/MiBridgeUtils;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 362
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "set request thread level failed , e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method
