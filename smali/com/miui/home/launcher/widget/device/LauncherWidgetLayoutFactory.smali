.class public Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;
.super Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;
.source "LauncherWidgetLayoutFactory.java"


# static fields
.field private static DEFAULT_DENSITY:F = 0.0f

.field private static DEFAULT_SCALED_DENSITY:F = 0.0f

.field private static DM:Landroid/util/DisplayMetrics; = null

.field private static final TAG:Ljava/lang/String; = "LauncherWidgetLayoutFactory"


# instance fields
.field private final mAutoScaleFactorTag:I

.field private final mAutoScaleTag:I

.field private mNeedScale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    .line 31
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    .line 32
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_SCALED_DENSITY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;-><init>()V

    const v0, 0x7f0a0280

    .line 38
    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    const v0, 0x7f0a027f

    .line 39
    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleFactorTag:I

    return-void
.end method

.method private isHostViewUpdateFirstInflate(Landroid/view/View;Landroid/content/Context;)Z
    .locals 0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eq p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static syncOriginDensityInfo()V
    .locals 3

    .line 43
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    const-string v1, "LauncherWidgetLayoutFactory"

    if-nez v0, :cond_0

    const-string v0, "densityConfigManager == null"

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->getOriginConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "densityConfig == null"

    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_1
    iget v2, v0, Lmiuix/view/DisplayConfig;->density:F

    sput v2, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    .line 55
    iget v0, v0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    sput v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_SCALED_DENSITY:F

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEFAULT_DENSITY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", DEFAULT_SCALED_DENSITY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_SCALED_DENSITY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 62
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vroco.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onPostCreateView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 113
    iget v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 114
    iget p0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleFactorTag:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mNeedScale:Z

    invoke-static {p2}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getAppWidgetScaleRatio(Z)F

    move-result p2

    .line 75
    iget p4, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    invoke-virtual {p1, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " autoScale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " scale "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ",needScale = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mNeedScale:Z

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "LauncherWidgetLayoutFactory"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget p4, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleFactorTag:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 78
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p1, p3}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->scaleDensity(Landroid/util/DisplayMetrics;FLandroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public scaleDensity(Landroid/util/DisplayMetrics;FLandroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scaleDensity : dm.density: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  ,defaultDensity:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "   ,scaleFactor:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  ,view:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   ,context:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherWidgetLayoutFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, p3, p4}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->isHostViewUpdateFirstInflate(Landroid/view/View;Landroid/content/Context;)Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    cmpl-float p0, p2, p3

    if-lez p0, :cond_0

    .line 90
    sget p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    mul-float/2addr p0, p2

    iput p0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 91
    sget p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_SCALED_DENSITY:F

    mul-float/2addr p0, p2

    iput p0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "After scaling: dm.density:  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-gez p0, :cond_1

    cmpg-float p0, p2, p3

    if-gtz p0, :cond_2

    .line 94
    :cond_1
    sget p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    iput p0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 95
    sget p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_SCALED_DENSITY:F

    iput p0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scaleFactor >= 1 or <= 0: Reset to default density:  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setNeedScale(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mNeedScale:Z

    return-void
.end method
