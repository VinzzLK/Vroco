.class public Lcom/android/hideapi/IActivityTaskManagerExpose;
.super Ljava/lang/Object;
.source "IActivityTaskManagerExpose.java"


# static fields
.field private static final IS_USE_SET_PAUSE_ADVANCED_WITH_USER_LEAVING:Z


# instance fields
.field private final instance:Landroid/app/IActivityTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    invoke-static {}, Lcom/android/hideapi/IActivityTaskManagerExpose;->isUseSetPauseAdvancedWithUserLeaving()Z

    move-result v0

    sput-boolean v0, Lcom/android/hideapi/IActivityTaskManagerExpose;->IS_USE_SET_PAUSE_ADVANCED_WITH_USER_LEAVING:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/IActivityTaskManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/hideapi/IActivityTaskManagerExpose;->instance:Landroid/app/IActivityTaskManager;

    return-void
.end method

.method public static box(Landroid/app/IActivityTaskManager;)Lcom/android/hideapi/IActivityTaskManagerExpose;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/hideapi/IActivityTaskManagerExpose;

    invoke-direct {v0, p0}, Lcom/android/hideapi/IActivityTaskManagerExpose;-><init>(Landroid/app/IActivityTaskManager;)V

    return-object v0
.end method

.method private static isUseSetPauseAdvancedWithUserLeaving()Z
    .locals 7

    const-string v0, "IActivityTaskManagerExpose"

    const/4 v1, 0x0

    .line 30
    :try_start_0
    const-class v2, Landroid/app/IActivityTaskManager;

    const-string/jumbo v3, "setPauseAdvancedWithUserLeaving"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, [I

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v6, v1

    .line 32
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUseSetPauseAdvancedWithUserLeaving = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUseSetPauseAdvancedWithUserLeaving , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private setPauseAdvanced([I)V
    .locals 5

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPauseAdvanced runningTaskIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IActivityTaskManagerExpose"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/android/hideapi/IActivityTaskManagerExpose;->instance:Landroid/app/IActivityTaskManager;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [I

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string/jumbo p1, "setPauseAdvanced"

    invoke-static {p0, v0, p1, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPauseAdvancedWithUserLeaving([IZ)V
    .locals 6

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPauseAdvancedWithUserLeaving runningTaskIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sendUserLeaveHint = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IActivityTaskManagerExpose"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/android/hideapi/IActivityTaskManagerExpose;->instance:Landroid/app/IActivityTaskManager;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [I

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 59
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    const-string/jumbo p1, "setPauseAdvancedWithUserLeaving"

    .line 54
    invoke-static {p0, v0, p1, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invokeSetPauseAdvanced([IZ)V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/hideapi/IActivityTaskManagerExpose;->IS_USE_SET_PAUSE_ADVANCED_WITH_USER_LEAVING:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/hideapi/IActivityTaskManagerExpose;->setPauseAdvancedWithUserLeaving([IZ)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hideapi/IActivityTaskManagerExpose;->setPauseAdvanced([I)V

    :goto_0
    return-void
.end method

.method public unSetPauseAdvanced(Z)V
    .locals 5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unSetPauseAdvanced resume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IActivityTaskManagerExpose"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/android/hideapi/IActivityTaskManagerExpose;->instance:Landroid/app/IActivityTaskManager;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string/jumbo p1, "unSetPauseAdvanced"

    invoke-static {p0, v0, p1, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
