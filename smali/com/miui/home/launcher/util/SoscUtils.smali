.class public Lcom/miui/home/launcher/util/SoscUtils;
.super Ljava/lang/Object;
.source "SoscUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = "Launcher.SoscUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getHalfSplitLaunchPosition(I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public static getInsetsBottom(Landroid/view/WindowInsets;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 25
    sget-object p0, Lcom/miui/home/launcher/util/SoscUtils;->TAG:Ljava/lang/String;

    const-string v1, "insets is null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 28
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/util/SoscUtils;->isTopLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    iget v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    if-ge p0, v1, :cond_1

    goto :goto_0

    :cond_1
    sub-int v0, p0, v1

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    return v0
.end method

.method private static getRootBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 69
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 70
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 71
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    new-instance p0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static isBottomLayout()Z
    .locals 2

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadMinimizedSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isBottomLayout(I)Z

    move-result v0

    return v0
.end method

.method public static isSoscTouchSingleApp(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isTopLayout(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 47
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/util/SoscUtils;->getRootBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadMinimizedSize()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isTopLayout(Landroid/graphics/Rect;I)Z

    move-result p0

    return p0
.end method
