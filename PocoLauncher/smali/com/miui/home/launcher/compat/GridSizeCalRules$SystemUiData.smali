.class final Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;
.super Ljava/lang/Object;
.source "GridSizeCalRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/GridSizeCalRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemUiData"
.end annotation


# instance fields
.field private final ELDERLY_NAVIGATION_BAR_HEIGHT:I

.field private final GESTURE_LINE_HEIGHT:I

.field private final NAVIGATION_BAR_HEIGHT:I

.field private final mContext:Landroid/content/Context;

.field private final ratio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->mContext:Landroid/content/Context;

    .line 239
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getTargetAndOriginDensityRatio()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->ratio:F

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TargetAndOriginDensityRatio"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->initNavigationBarHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->NAVIGATION_BAR_HEIGHT:I

    .line 242
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->initGestureLineHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->GESTURE_LINE_HEIGHT:I

    .line 243
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->initElderlyNavigationBarHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->ELDERLY_NAVIGATION_BAR_HEIGHT:I

    return-void
.end method

.method private getNavigationHeight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 260
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 262
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 265
    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v2, v0, v3, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    .line 267
    invoke-virtual {v2, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 269
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->ratio:F

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNavigationHeight from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",error = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SystemUiData"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private initElderlyNavigationBarHeight()I
    .locals 2

    const-string v0, "/product/overlay/ElderlyNavigationBarOverlay.apk"

    const-string v1, "com.android.systemui.navigation.bar.overlay"

    .line 255
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->getNavigationHeight(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private initGestureLineHeight()I
    .locals 2

    const-string v0, "/product/overlay/GestureLineOverlay.apk"

    const-string v1, "com.android.systemui.gesture.line.overlay"

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->getNavigationHeight(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private initNavigationBarHeight()I
    .locals 2

    const-string v0, "/system/framework/framework-res.apk"

    const-string v1, "android"

    .line 247
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->getNavigationHeight(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getElderlyNavigationBarHeight()I
    .locals 0

    .line 286
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->ELDERLY_NAVIGATION_BAR_HEIGHT:I

    return p0
.end method

.method public getGestureLineHeight()I
    .locals 0

    .line 282
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->GESTURE_LINE_HEIGHT:I

    return p0
.end method

.method public getNavigationBarHeight()I
    .locals 0

    .line 278
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->NAVIGATION_BAR_HEIGHT:I

    return p0
.end method
