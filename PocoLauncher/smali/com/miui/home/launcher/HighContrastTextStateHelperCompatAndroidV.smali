.class public Lcom/miui/home/launcher/HighContrastTextStateHelperCompatAndroidV;
.super Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;
.source "HighContrastTextStateHelperCompatAndroidV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAddListenerMethodName()Ljava/lang/String;
    .locals 0

    const-string p0, "addHighTextContrastStateChangeListener"

    return-object p0
.end method

.method protected getAddListenerParams()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerProxy:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method protected getAddListenerParamsType()[Ljava/lang/Class;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mListenerClass:Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const-class v1, Landroid/os/Handler;

    aput-object v1, v0, p0

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

    const-string p0, "android.view.accessibility.AccessibilityManager$HighTextContrastChangeListener"

    .line 10
    invoke-static {p0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method protected getHighContrastTextStateChangedMethodName()Ljava/lang/String;
    .locals 0

    const-string p0, "onHighTextContrastStateChanged"

    return-object p0
.end method

.method protected getRemoveListenerMethodName()Ljava/lang/String;
    .locals 0

    const-string p0, "removeHighTextContrastStateChangeListener"

    return-object p0
.end method
