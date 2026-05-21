.class public abstract Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;
.super Ljava/lang/Object;
.source "HighContrastTextStateChangeHelper.java"


# static fields
.field private static volatile sInstance:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mHandler:Landroid/os/Handler;

.field protected mListenerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mListenerProxy:Ljava/lang/Object;

.field private mRegisterHighContrastTextRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$1Cv24cT9jTHZGEB8wpvPT31PMG8(Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->lambda$unRegisterHighContrastTextStateChangeListener$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$eNGZl7ckDaK_BIZIzM-mneuDpjM(Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ucWDmN9OlJkTxIeb9fVcYkP6o-g(Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->lambda$new$1()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mRegisterHighContrastTextRunnable:Ljava/lang/Runnable;

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->getHighContrastTextStateChangeListenerClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerClass:Ljava/lang/Class;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;
    .locals 2

    .line 36
    sget-object v0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->sInstance:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    if-nez v0, :cond_2

    .line 37
    const-class v0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->sInstance:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->sInstance:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    monitor-exit v0

    return-object v1

    .line 41
    :cond_0
    sget-boolean v1, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_W:Z

    if-eqz v1, :cond_1

    .line 42
    new-instance v1, Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW;

    invoke-direct {v1}, Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->sInstance:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidV;

    invoke-direct {v1}, Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidV;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->sInstance:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    .line 46
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_2
    :goto_1
    sget-object v0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->sInstance:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 8

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerProxy:Ljava/lang/Object;

    const-string v1, "HighContrastTextStateChangeHelper"

    if-eqz v0, :cond_0

    const-string p0, "Listener already registered"

    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerClass:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->createHighContrastTextStateChangeListenerProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerProxy:Ljava/lang/Object;

    .line 64
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->getAddListenerMethodName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->getAddListenerParamsType()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->getAddListenerParams()[Ljava/lang/Object;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string p0, "Listener registered successful"

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 58
    new-instance v0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$unRegisterHighContrastTextStateChangeListener$2()V
    .locals 9

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerProxy:Ljava/lang/Object;

    const-string v1, "HighContrastTextStateChangeHelper"

    if-nez v0, :cond_0

    const-string p0, "Listener not registered or already unregistered"

    .line 81
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_0
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->getRemoveListenerMethodName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Class;

    iget-object v7, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerClass:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerProxy:Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerProxy:Ljava/lang/Object;

    const-string p0, "Listener unregistered successful"

    .line 86
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected createHighContrastTextStateChangeListenerProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1;-><init>(Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;)V

    .line 91
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getAddListenerMethodName()Ljava/lang/String;
.end method

.method protected abstract getAddListenerParams()[Ljava/lang/Object;
.end method

.method protected abstract getAddListenerParamsType()[Ljava/lang/Class;
.end method

.method protected abstract getHighContrastTextStateChangeListenerClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract getHighContrastTextStateChangedMethodName()Ljava/lang/String;
.end method

.method protected abstract getRemoveListenerMethodName()Ljava/lang/String;
.end method

.method public registerHighContrastTextStateChangeListener(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mRegisterHighContrastTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public unRegisterHighContrastTextStateChangeListener(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mRegisterHighContrastTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 79
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
