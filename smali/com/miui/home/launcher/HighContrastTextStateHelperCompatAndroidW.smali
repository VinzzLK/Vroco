.class public Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW;
.super Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;
.source "HighContrastTextStateHelperCompatAndroidW.java"


# instance fields
.field executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$dzWEHoWTOgzex4fxjyirq6gpXus(Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;-><init>()V

    .line 9
    new-instance v0, Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW;)V

    iput-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected getAddListenerMethodName()Ljava/lang/String;
    .locals 0

    const-string p0, "addHighContrastTextStateChangeListener"

    return-object p0
.end method

.method protected getAddListenerParams()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidW;->executor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerProxy:Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method protected getAddListenerParamsType()[Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 35
    const-class v2, Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerClass:Ljava/lang/Class;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method protected getHighContrastTextStateChangeListenerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string p0, "android.view.accessibility.AccessibilityManager$HighContrastTextStateChangeListener"

    .line 15
    invoke-static {p0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method protected getHighContrastTextStateChangedMethodName()Ljava/lang/String;
    .locals 0

    const-string p0, "onHighContrastTextStateChanged"

    return-object p0
.end method

.method protected getRemoveListenerMethodName()Ljava/lang/String;
    .locals 0

    const-string p0, "removeHighContrastTextStateChangeListener"

    return-object p0
.end method
