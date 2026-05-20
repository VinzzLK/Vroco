.class public Lcom/mi/mibridge/MiBridge;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static JAR_PATH:Ljava/lang/String;

.field public static a:Ljava/lang/reflect/Method;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Ljava/lang/reflect/Method;

.field public static f:Ljava/lang/reflect/Method;

.field public static g:Ljava/lang/reflect/Method;

.field public static h:Ljava/lang/reflect/Method;

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/reflect/Method;

.field public static k:Ljava/lang/reflect/Method;

.field public static l:Ljava/lang/reflect/Method;

.field public static m:Ljava/lang/reflect/Method;

.field public static n:Ljava/lang/reflect/Method;

.field public static o:Ljava/lang/reflect/Method;

.field public static p:Ljava/lang/reflect/Method;

.field public static q:Ljava/lang/reflect/Method;

.field public static s:Ljava/lang/Class;

.field public static t:Ljava/lang/Class;

.field public static u:Ldalvik/system/PathClassLoader;

.field public static v:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static w:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "checkPermission"

    const-class v1, Ljava/lang/String;

    const-string v2, "MiBridge"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-gt v3, v4, :cond_0

    const-string v3, "/system/framework/MiuiBooster.jar"

    goto :goto_0

    :cond_0
    const-string v3, "/system_ext/framework/MiuiBooster.jar"

    :goto_0
    sput-object v3, Lcom/mi/mibridge/MiBridge;->JAR_PATH:Ljava/lang/String;

    const/4 v3, 0x0

    sput-object v3, Lcom/mi/mibridge/MiBridge;->a:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->b:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->c:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->d:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->e:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->f:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->g:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->h:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->i:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->j:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->k:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->l:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->m:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->n:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->o:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->p:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->q:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->t:Ljava/lang/Class;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->v:Ljava/lang/reflect/Constructor;

    sput-object v3, Lcom/mi/mibridge/MiBridge;->w:Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ldalvik/system/PathClassLoader;

    sget-object v5, Lcom/mi/mibridge/MiBridge;->JAR_PATH:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v4, Lcom/mi/mibridge/MiBridge;->u:Ldalvik/system/PathClassLoader;

    const-string v5, "com.miui.performance.MiuiBooster"

    invoke-virtual {v4, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lcom/mi/mibridge/MiBridge;->v:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12

    :try_start_1
    sget-object v6, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/mi/mibridge/MiBridge;->a:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v5, "checkPermission no exit"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12

    :goto_1
    :try_start_3
    sget-object v5, Lcom/mi/mibridge/MiBridge;->u:Ldalvik/system/PathClassLoader;

    const-string v6, "com.miui.performance.IThermalEventCallBack"

    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/mi/mibridge/MiBridge;->t:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    :try_start_4
    const-string v5, "com.miui.performance.IThermalEventCallBack not exits!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12

    :goto_2
    const/4 v5, 0x4

    const/4 v6, 0x3

    :try_start_5
    new-array v5, v5, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v5, v3

    aput-object v1, v5, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v4

    aput-object v1, v5, v6

    sget-object v8, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    invoke-virtual {v8, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->b:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    :try_start_6
    const-string v0, "checkPermission_debug no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    :goto_3
    :try_start_7
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "requestCpuHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->c:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    :try_start_8
    const-string v0, "requestCpuHighFreq no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12

    :goto_4
    :try_start_9
    new-array v0, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "cancelCpuHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->d:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    :try_start_a
    const-string v0, "cancelCpuHighFreq no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12

    :goto_5
    :try_start_b
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "requestThreadPriority"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->e:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_6

    :catch_5
    :try_start_c
    const-string v0, "requestThreadPriority no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12

    :goto_6
    :try_start_d
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "cancelThreadPriority"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->f:Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_7

    :catch_6
    :try_start_e
    const-string v0, "cancelThreadPriority no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12

    :goto_7
    :try_start_f
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "requestGpuHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->g:Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_8

    :catch_7
    :try_start_10
    const-string v0, "requestGpuHighFreq no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_12

    :goto_8
    :try_start_11
    new-array v0, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "cancelGpuHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->h:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_9

    :catch_8
    :try_start_12
    const-string v0, "cancelGpuHighFreq no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    :goto_9
    :try_start_13
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "requestDdrHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->j:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_a

    :catch_9
    :try_start_14
    const-string v0, "requestDdrHighFreq no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    :goto_a
    :try_start_15
    new-array v0, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "cancelDdrHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->k:Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_b

    :catch_a
    :try_start_16
    const-string v0, "cancelDdrHighFreq no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12

    :goto_b
    :try_start_17
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "requestBindCore"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->l:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    goto :goto_c

    :catch_b
    :try_start_18
    const-string v0, "requestBindCore no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12

    :goto_c
    :try_start_19
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "cancelBindCore"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->m:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    goto :goto_d

    :catch_c
    :try_start_1a
    const-string v0, "cancelBindCore no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12

    :goto_d
    :try_start_1b
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v1, v0, v7

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "requestIOPrefetch"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->i:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    goto :goto_e

    :catch_d
    :try_start_1c
    const-string v0, "requestIOPrefetch no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_12

    :goto_e
    :try_start_1d
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    const-class v8, Landroid/content/Context;

    aput-object v8, v0, v7

    aput-object v5, v0, v4

    sget-object v5, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v8, "getSystemState"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->n:Ljava/lang/reflect/Method;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e

    goto :goto_f

    :catch_e
    :try_start_1e
    const-string v0, "getSystemState no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_12

    :goto_f
    :try_start_1f
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v1, v0, v7

    aput-object v5, v0, v4

    sget-object v1, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string/jumbo v5, "setDynamicRefreshRateScene"

    invoke-virtual {v1, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->q:Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    goto :goto_10

    :catch_f
    :try_start_20
    const-string/jumbo v0, "setDynamicRefreshRateScene no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_12

    :goto_10
    :try_start_21
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/mibridge/MiBridge;->t:Ljava/lang/Class;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string v5, "registerThermalEventCallback"

    invoke-virtual {v1, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->o:Ljava/lang/reflect/Method;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    :try_start_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerThermalEventCallback no exit, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_12

    :goto_11
    :try_start_23
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/mibridge/MiBridge;->t:Ljava/lang/Class;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mi/mibridge/MiBridge;->s:Ljava/lang/Class;

    const-string/jumbo v4, "unRegisterThermalEventCallback"

    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->p:Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_11

    goto :goto_12

    :catch_11
    :try_start_24
    const-string v0, "UnRegisterThermalEventCallback no exit"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiBridge() : Load Class Exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    :try_start_25
    sget-object v0, Lcom/mi/mibridge/MiBridge;->v:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->w:Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiBridge() : newInstance Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_13
    return-void
.end method
