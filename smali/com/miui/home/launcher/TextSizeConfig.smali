.class public Lcom/miui/home/launcher/TextSizeConfig;
.super Ljava/lang/Object;
.source "TextSizeConfig.java"


# instance fields
.field private currentColumn:I

.field private final mContext:Landroid/content/Context;

.field private mFm:Landroid/graphics/Paint$FontMetrics;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:F

.field private final mTitleMarginTop:I

.field private final mTitlePaddingSide:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/TextSizeConfig;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 p2, p2, 0x2

    .line 43
    :cond_0
    iput p2, p0, Lcom/miui/home/launcher/TextSizeConfig;->currentColumn:I

    .line 44
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextPaint:Landroid/text/TextPaint;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/util/OperatorGridUtils;->is2LineOperators()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0705e2

    goto :goto_0

    :cond_1
    const v1, 0x7f07028c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTitleMarginTop:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07028d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTitlePaddingSide:I

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/TextSizeConfig;->calTextSize()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextSize:F

    .line 48
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 49
    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/TextSizeConfig;->mFm:Landroid/graphics/Paint$FontMetrics;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TextSizeConfig = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextSize:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridConfig - TextSizeConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private calTextSize()F
    .locals 5

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 84
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getShortcutTitleScale()F

    move-result v1

    .line 85
    iget p0, p0, Lcom/miui/home/launcher/TextSizeConfig;->currentColumn:I

    const/4 v2, 0x3

    const/16 v3, 0xc

    if-eq p0, v2, :cond_4

    const/4 v2, 0x4

    const/16 v4, 0xb

    if-eq p0, v2, :cond_3

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    goto :goto_2

    .line 93
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/util/OperatorGridUtils;->is2LineOperators()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xa

    move v3, p0

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v4

    goto :goto_2

    .line 90
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/util/OperatorGridUtils;->is2LineOperators()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_4
    const/16 v3, 0x14

    :cond_5
    :goto_2
    int-to-float p0, v3

    mul-float/2addr p0, v1

    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getLayoutPreviewButtonNameTextSize()F
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getShortcutTitleScale()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public getTitleHeight()I
    .locals 2

    .line 115
    iget-object p0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mFm:Landroid/graphics/Paint$FontMetrics;

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/util/OperatorGridUtils;->is2LineOperators()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p0, p0

    const v0, 0x3f6147ae    # 0.88f

    mul-float/2addr p0, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    :cond_0
    return p0
.end method

.method public getTitleMarginTop()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTitleMarginTop:I

    return p0
.end method

.method public getTitlePaddingSide()I
    .locals 0

    .line 111
    iget p0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTitlePaddingSide:I

    return p0
.end method

.method public getTitleTextSize()F
    .locals 0

    .line 103
    iget p0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextSize:F

    return p0
.end method

.method public setCurrentColumn(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 57
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->currentColumn:I

    if-ne v0, p1, :cond_1

    return-void

    .line 60
    :cond_1
    iput p1, p0, Lcom/miui/home/launcher/TextSizeConfig;->currentColumn:I

    return-void
.end method

.method public setFittingTextSize(IF)V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/TextSizeConfig;->calTextSize()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextSize:F

    .line 65
    iget-object v1, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mFm:Landroid/graphics/Paint$FontMetrics;

    :goto_0
    int-to-float v0, p1

    mul-float v1, v0, p2

    sub-float/2addr v0, v1

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/TextSizeConfig;->getTitleMarginTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/TextSizeConfig;->getTitleHeight()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/util/OperatorGridUtils;->must2LineTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    mul-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const-string v1, "GridConfig - TextSizeConfig"

    if-gez v0, :cond_1

    .line 68
    iget v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextSize:F

    .line 69
    iget-object v2, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update text size mTextSize= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextSize:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mFm:Landroid/graphics/Paint$FontMetrics;

    goto :goto_0

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finally mTextSize= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/TextSizeConfig;->mTextSize:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
