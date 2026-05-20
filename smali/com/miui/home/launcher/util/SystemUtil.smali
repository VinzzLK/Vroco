.class public Lcom/miui/home/launcher/util/SystemUtil;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# static fields
.field private static sIsSystemUiModeChanged:Z = false

.field private static sSystemUiMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getSystemUiMode()I
    .locals 1

    .line 14
    sget v0, Lcom/miui/home/launcher/util/SystemUtil;->sSystemUiMode:I

    return v0
.end method

.method public static isSystemUiModeChanged()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/miui/home/launcher/util/SystemUtil;->sIsSystemUiModeChanged:Z

    return v0
.end method

.method public static needToChangeColorWhenFollowSystem()Z
    .locals 4

    .line 35
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->getDefaultNightMode()I

    move-result v0

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/util/SystemUtil;->getSystemUiMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public static setSystemUiMode(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "uimode"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    .line 25
    sget v2, Lcom/miui/home/launcher/util/SystemUtil;->sSystemUiMode:I

    if-eq v2, p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lcom/miui/home/launcher/util/SystemUtil;->sIsSystemUiModeChanged:Z

    .line 26
    sput p0, Lcom/miui/home/launcher/util/SystemUtil;->sSystemUiMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    sget p0, Lcom/miui/home/launcher/util/SystemUtil;->sSystemUiMode:I

    if-eq p0, v1, :cond_1

    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/miui/home/launcher/util/SystemUtil;->sIsSystemUiModeChanged:Z

    .line 30
    sput v1, Lcom/miui/home/launcher/util/SystemUtil;->sSystemUiMode:I

    :goto_1
    return-void
.end method
