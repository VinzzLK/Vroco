.class Lcom/miui/home/safemode/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static sAppItemWidth:I = 0x0

.field private static sColumnCount:I = 0x0

.field private static sLargeScreen:Z = false

.field private static sScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getAppItemWidth()I
    .locals 1

    .line 64
    sget v0, Lcom/miui/home/safemode/DeviceInfo;->sAppItemWidth:I

    return v0
.end method

.method public static getColumnCount()I
    .locals 1

    .line 60
    sget v0, Lcom/miui/home/safemode/DeviceInfo;->sColumnCount:I

    return v0
.end method

.method public static getColumnDividerWidth(I)I
    .locals 2

    .line 55
    sget v0, Lcom/miui/home/safemode/DeviceInfo;->sScreenWidth:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    .line 56
    sget p0, Lcom/miui/home/safemode/DeviceInfo;->sAppItemWidth:I

    sget v1, Lcom/miui/home/safemode/DeviceInfo;->sColumnCount:I

    mul-int/2addr p0, v1

    sub-int/2addr v0, p0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    return v0
.end method

.method public static isLargeScreen()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/miui/home/safemode/DeviceInfo;->sLargeScreen:Z

    return v0
.end method

.method public static updateScreenSize(Landroid/content/Context;Z)V
    .locals 2

    .line 24
    sput-boolean p1, Lcom/miui/home/safemode/DeviceInfo;->sLargeScreen:Z

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :try_start_0
    const-string v0, "window"

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 30
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "updateScreenSize: "

    .line 34
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-gtz p0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    :cond_0
    sput p0, Lcom/miui/home/safemode/DeviceInfo;->sScreenWidth:I

    .line 40
    invoke-static {}, Lcom/miui/home/safemode/DeviceInfo;->isLargeScreen()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    .line 41
    sput p0, Lcom/miui/home/safemode/DeviceInfo;->sColumnCount:I

    .line 42
    sget p0, Lcom/miui/home/safemode/R$dimen;->safe_launch_item_width_large:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/miui/home/safemode/DeviceInfo;->sAppItemWidth:I

    goto :goto_1

    :cond_1
    const/4 p0, 0x4

    .line 44
    sput p0, Lcom/miui/home/safemode/DeviceInfo;->sColumnCount:I

    .line 45
    sget p0, Lcom/miui/home/safemode/R$dimen;->safe_launch_item_width:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/miui/home/safemode/DeviceInfo;->sAppItemWidth:I

    :goto_1
    return-void
.end method
