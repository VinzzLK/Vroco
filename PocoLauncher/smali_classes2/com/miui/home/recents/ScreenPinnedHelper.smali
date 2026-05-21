.class public final Lcom/miui/home/recents/ScreenPinnedHelper;
.super Ljava/lang/Object;
.source "ScreenPinnedHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

.field private static final blackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isPinEnabled:Z

.field private static final mPinSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/home/recents/ScreenPinnedHelper;

    invoke-direct {v0}, Lcom/miui/home/recents/ScreenPinnedHelper;-><init>()V

    sput-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    const-string v0, "com.miui.securityspace.ui.activity.PrivateSpaceMainActivity"

    const-string v1, "com.miui.child.home.kidspace.activity.KidModeActivity"

    const-string v2, "com.miui.powercenter.savemode.PowerSaveActivity"

    const-string v3, "com.android.incallui.InCallActivity"

    .line 21
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->blackList:Ljava/util/List;

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isScreenPinningEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/recents/ScreenPinnedHelper;->isPinEnabled:Z

    .line 25
    new-instance v0, Lcom/miui/home/recents/ScreenPinnedHelper$mPinSettingsObserver$1;

    invoke-direct {v0}, Lcom/miui/home/recents/ScreenPinnedHelper$mPinSettingsObserver$1;-><init>()V

    sput-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->mPinSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final performHapticFeedback()V
    .locals 1

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performStopScreenPinning(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final canTaskPin(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    const-string p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-nez p0, :cond_0

    .line 43
    sget-object p0, Lcom/miui/home/recents/ScreenPinnedHelper;->blackList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInPinned(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "activity"

    .line 70
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPinEnabled()Z
    .locals 0

    .line 23
    sget-boolean p0, Lcom/miui/home/recents/ScreenPinnedHelper;->isPinEnabled:Z

    return p0
.end method

.method public final registerPinContentObserver(Landroid/content/Context;)V
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "lock_to_app_enabled"

    .line 36
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 38
    sget-object v0, Lcom/miui/home/recents/ScreenPinnedHelper;->mPinSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final setPinEnabled(Z)V
    .locals 0

    .line 23
    sput-boolean p1, Lcom/miui/home/recents/ScreenPinnedHelper;->isPinEnabled:Z

    return-void
.end method

.method public final startScreenPinning(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BlockedPrivateApi"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startScreenPinning(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/miui/home/recents/ScreenPinnedHelper;->performHapticFeedback()V

    :cond_0
    return-void
.end method

.method public final stopScreenPinning(Z)V
    .locals 1

    .line 55
    sget-object v0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->stopScreenPinning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/miui/home/recents/ScreenPinnedHelper;->performHapticFeedback()V

    :cond_0
    return-void
.end method
