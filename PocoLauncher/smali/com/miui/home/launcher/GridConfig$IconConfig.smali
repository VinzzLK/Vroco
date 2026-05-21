.class final Lcom/miui/home/launcher/GridConfig$IconConfig;
.super Ljava/lang/Object;
.source "GridConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/GridConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IconConfig"
.end annotation


# instance fields
.field private mCellCountX:I

.field private mCellSize:I

.field private final mContext:Landroid/content/Context;

.field private final mGridConfig:Lcom/miui/home/launcher/GridConfig;

.field private final mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

.field private mIconTopPadding:I

.field private mIndicatorDrawableMargin:I

.field private mTitleLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/GridConfig;I)V
    .locals 0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p1, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mContext:Landroid/content/Context;

    .line 701
    iput-object p2, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mGridConfig:Lcom/miui/home/launcher/GridConfig;

    .line 702
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    mul-int/lit8 p3, p3, 0x2

    :cond_1
    :goto_0
    iput p3, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellCountX:I

    .line 703
    new-instance p2, Lcom/miui/home/launcher/compat/IconScaleProvider;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellCountX:I

    invoke-direct {p2, p1, p3}, Lcom/miui/home/launcher/compat/IconScaleProvider;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

    .line 704
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07028b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIndicatorDrawableMargin:I

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/GridConfig$IconConfig;)V
    .locals 0

    .line 687
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->calIconPadding()V

    return-void
.end method

.method private calIconPadding()V
    .locals 3

    .line 730
    iget v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellCountX:I

    if-nez v0, :cond_0

    .line 731
    iget v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellSize:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getIconSize()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconTopPadding:I

    goto :goto_0

    .line 733
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellSize:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getIconSize()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/GridConfig;->getTextHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->calTitleLines()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/GridConfig;->getTitleMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconTopPadding:I

    :goto_0
    return-void
.end method

.method private calTitleLines()I
    .locals 4

    const/4 v0, 0x1

    .line 738
    iput v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mTitleLines:I

    .line 739
    invoke-static {}, Lcom/miui/home/launcher/util/OperatorGridUtils;->is2LineOperators()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/GridConfig;->getTextHeight()I

    move-result v1

    .line 741
    iget v2, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellSize:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getIconSize()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-virtual {v3}, Lcom/miui/home/launcher/GridConfig;->getTitleMarginTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    const/4 v1, 0x2

    .line 742
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mTitleLines:I

    .line 744
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mTitleLines:I

    return p0
.end method


# virtual methods
.method public getDefaultScale()F
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/IconScaleProvider;->getDefaultScale()F

    move-result p0

    return p0
.end method

.method public getIconSize()I
    .locals 1

    .line 722
    iget v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellSize:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/IconScaleProvider;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getIconTopPadding()I
    .locals 0

    .line 726
    iget p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconTopPadding:I

    return p0
.end method

.method public getIndicatorDrawableMargin()I
    .locals 0

    .line 777
    iget p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIndicatorDrawableMargin:I

    return p0
.end method

.method public getMaxIconScale()F
    .locals 0

    .line 756
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/IconScaleProvider;->getMaxIconScale()F

    move-result p0

    return p0
.end method

.method public getMinIconScale()F
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/IconScaleProvider;->getMinIconScale()F

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/IconScaleProvider;->getScale()F

    move-result p0

    return p0
.end method

.method public getTitleLines()I
    .locals 0

    .line 748
    iget p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mTitleLines:I

    return p0
.end method

.method public setScale(F)V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/compat/IconScaleProvider;->setScale(F)V

    .line 765
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->calIconPadding()V

    return-void
.end method

.method public updateCellSize(II)V
    .locals 1

    .line 708
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 p1, p1, 0x2

    .line 714
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellCountX:I

    if-eq p1, v0, :cond_2

    .line 715
    iput p1, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellCountX:I

    .line 716
    iget-object v0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/compat/IconScaleProvider;->updateCellSize(II)V

    .line 718
    :cond_2
    iput p2, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mCellSize:I

    return-void
.end method

.method public updateIconScaleForDBUpgrade()V
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig$IconConfig;->mIconScaleProvider:Lcom/miui/home/launcher/compat/IconScaleProvider;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/IconScaleProvider;->updateIconScaleForDBUpgrade()V

    return-void
.end method
