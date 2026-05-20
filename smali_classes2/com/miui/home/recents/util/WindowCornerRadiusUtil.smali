.class public Lcom/miui/home/recents/util/WindowCornerRadiusUtil;
.super Ljava/lang/Object;
.source "WindowCornerRadiusUtil.java"


# static fields
.field private static sBottomCornerRadius:I = -0x1

.field private static sCornerRadius:I = -0x1

.field private static sTaskViewCornerRadius:I = -0x1

.field private static sTopCornerRadius:I = -0x1


# direct methods
.method public static synthetic $r8$lambda$_-RirJSnot9UoYqQjFtPjJbXfzc()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->lambda$setWindowRadius$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getCornerRadius()I
    .locals 1

    .line 104
    sget v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sCornerRadius:I

    return v0
.end method

.method public static getTaskViewCornerRadius()I
    .locals 1

    .line 108
    sget v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTaskViewCornerRadius:I

    return v0
.end method

.method public static getTopCornerRadius()I
    .locals 1

    .line 96
    sget v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTopCornerRadius:I

    return v0
.end method

.method private static synthetic lambda$setWindowRadius$0()V
    .locals 0

    .line 35
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->setWindowTopBottomRadiusFromWindowInset()V

    .line 36
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->updateCornerRadius()V

    return-void
.end method

.method public static setWindowRadius(Landroid/content/Context;)V
    .locals 4

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/WindowCornerRadiusUtil$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/recents/util/WindowCornerRadiusUtil$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->setWindowTopBottomRadiusFromResource(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->updateCornerRadius()V

    :goto_1
    const/16 v0, 0x14

    .line 42
    sput v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTaskViewCornerRadius:I

    if-eqz p0, :cond_2

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070629

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTaskViewCornerRadius:I

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWindowRadius: sTaskViewCornerRadius "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTaskViewCornerRadius:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowCornerRadiusUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setWindowTopBottomRadiusFromResource(Landroid/content/Context;)V
    .locals 4

    const/16 v0, 0x54

    .line 58
    sput v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTopCornerRadius:I

    .line 59
    sput v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sBottomCornerRadius:I

    if-eqz p0, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "rounded_corner_radius_top"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTopCornerRadius:I

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "rounded_corner_radius_bottom"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sBottomCornerRadius:I

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWindowTopBottomRadiusFromResource: sTopCornerRadius "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTopCornerRadius:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   sBottomCornerRadius="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sBottomCornerRadius:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowCornerRadiusUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setWindowTopBottomRadiusFromWindowInset()V
    .locals 2

    const/16 v0, 0x54

    .line 75
    sput v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTopCornerRadius:I

    .line 76
    sput v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sBottomCornerRadius:I

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    sput v1, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTopCornerRadius:I

    :cond_0
    const/4 v1, 0x3

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    sput v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sBottomCornerRadius:I

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWindowTopBottomRadiusFromWindowInset: sTopCornerRadius "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTopCornerRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   sBottomCornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sBottomCornerRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCornerRadiusUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static updateCornerRadius()V
    .locals 3

    .line 50
    sget v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTopCornerRadius:I

    sget v1, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sBottomCornerRadius:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sCornerRadius:I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWindowRadius: sTopCornerRadius "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sTopCornerRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCornerRadiusUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowRadius: sBottomCornerRadius "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sBottomCornerRadius:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowRadius: sCornerRadius "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->sCornerRadius:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
