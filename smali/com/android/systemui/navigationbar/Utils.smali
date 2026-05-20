.class public Lcom/android/systemui/navigationbar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

.field private static final sNotch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "sys.haptic.motor"

    .line 17
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "linear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/navigationbar/Utils;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    const-string v0, "ro.miui.notch"

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/systemui/navigationbar/Utils;->sNotch:Z

    return-void
.end method

.method public static getColorAttrDefaultColor(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, p1, v0}, Lcom/android/systemui/navigationbar/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getColorAttrDefaultColor(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 33
    invoke-virtual {p0, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 34
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getStatusBarHeight()I
    .locals 4

    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getThemeAttr(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, v0}, Lcom/android/systemui/navigationbar/Utils;->getThemeAttr(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getThemeAttr(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 44
    invoke-virtual {p0, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 45
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNotch()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/android/systemui/navigationbar/Utils;->sNotch:Z

    return v0
.end method
