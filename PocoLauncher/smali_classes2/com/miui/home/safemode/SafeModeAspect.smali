.class public Lcom/miui/home/safemode/SafeModeAspect;
.super Ljava/lang/Object;
.source "SafeModeAspect.java"


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static synthetic ajc$perSingletonInstance:Lcom/miui/home/safemode/SafeModeAspect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/miui/home/safemode/SafeModeAspect;->ajc$postClinit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-object v0, Lcom/miui/home/safemode/SafeModeAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_miui_home_safemode_SafeModeAspect$com_miui_home_safemode_SafeModeAspect$injectCode(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/home/safemode/SafeModeAspect;->injectCode(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/home/safemode/SafeModeAspect;

    invoke-direct {v0}, Lcom/miui/home/safemode/SafeModeAspect;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/SafeModeAspect;->ajc$perSingletonInstance:Lcom/miui/home/safemode/SafeModeAspect;

    return-void
.end method

.method public static aspectOf()Lcom/miui/home/safemode/SafeModeAspect;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/home/safemode/SafeModeAspect;->ajc$perSingletonInstance:Lcom/miui/home/safemode/SafeModeAspect;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    sget-object v1, Lcom/miui/home/safemode/SafeModeAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    const-string v2, "com.miui.home.safemode.SafeModeAspect"

    invoke-direct {v0, v2, v1}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static injectCode(Landroid/app/Activity;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-virtual {v0}, Lcom/miui/home/safemode/SafeModeManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/safemode/SafeModeUtil;->launchSafeLauncher(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public applicationAttachBaseContextAdvice(Lorg/aspectj/lang/JoinPoint;)V
    .locals 1

    .line 28
    :try_start_0
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    .line 29
    aget-object p0, p0, p1

    check-cast p0, Landroid/content/Context;

    .line 30
    sget-object p1, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-virtual {p1, p0}, Lcom/miui/home/safemode/SafeModeManager;->onAttachProcess(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SafeModeAspect"

    const-string v0, "applicationAttachBaseContextAdvice: "

    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onActivityMethodAfter(Lorg/aspectj/lang/JoinPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 39
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/miui/home/safemode/SafeModeAspect;->injectCode(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public replaceActivityOnCreate(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;
    .locals 2

    .line 70
    :try_start_0
    invoke-interface {p1}, Lorg/aspectj/lang/ProceedingJoinPoint;->proceed()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "SafeModeAspect"

    const-string v1, "replaceActivityOnCreate error: "

    .line 72
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :try_start_1
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/home/safemode/SafeModeAspect;->ajc$inlineAccessMethod$com_miui_home_safemode_SafeModeAspect$com_miui_home_safemode_SafeModeAspect$injectCode(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    const-string p1, "replaceActivityOnCreate error2: "

    .line 78
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public replaceSafeMethod(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;
    .locals 2

    const-string p0, "SafeModeAspect"

    const/4 v0, 0x0

    .line 55
    :try_start_0
    sget-object v1, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-virtual {v1}, Lcom/miui/home/safemode/SafeModeManager;->isSafeMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-interface {p1}, Lorg/aspectj/lang/ProceedingJoinPoint;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "skip method for SafeMode"

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    const-string v1, "replaceSafeMethod: "

    .line 62
    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
