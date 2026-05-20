.class public Lcom/miui/home/launcher/EditModeConfig;
.super Ljava/lang/Object;
.source "EditModeConfig.java"


# instance fields
.field private mBoardVerPadding:I

.field private mBottomEntryHeight:I

.field private mBottomEntryMarginBottom:I

.field private mEditingAnimPivotyPatio:F

.field private mIndicatorMarginBottom:I

.field private mLayoutPreviewBottomButtonGap:I

.field private mLayoutPreviewTopMenuHorPadding:I

.field private mLayoutPreviewTopMenuVerPadding:I

.field private mPreviewTopMenuHeight:I

.field private mPreviewTopMenuWidth:I

.field private mQuickEditScreenRatio:F

.field private mScreenScaleRatio:F

.field private mTopMenuHeight:I

.field private mTopMenuHorPadding:I

.field private mTopMenuVerPadding:I

.field private mWorkspaceThumbnailHeight:I

.field private mWorkspaceThumbnailWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calBoardPadding(Landroid/content/Context;)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBoardVerPadding:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBoardVerPadding:I

    :goto_0
    return-void
.end method

.method private calBottomEntry(Landroid/content/Context;)V
    .locals 3

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowGestureLine()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f070174

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryMarginBottom:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryMarginBottom:I

    .line 105
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f070296

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryHeight:I

    goto :goto_1

    :cond_1
    const v1, 0x7f070173

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryHeight:I

    .line 111
    :goto_1
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f070298

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mWorkspaceThumbnailWidth:I

    const v1, 0x7f070297

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/EditModeConfig;->mWorkspaceThumbnailHeight:I

    goto :goto_2

    :cond_2
    const v1, 0x7f07017f

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mWorkspaceThumbnailWidth:I

    const v1, 0x7f07017b

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/EditModeConfig;->mWorkspaceThumbnailHeight:I

    .line 118
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mLayoutPreviewBottomButtonGap:I

    return-void
.end method

.method private calScreenScaleRatio(Landroid/content/Context;)V
    .locals 7

    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/EditModeConfig;->calBoardPadding(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryMarginBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBoardVerPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    mul-int/2addr v1, v2

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorHeight()I

    move-result v2

    sub-int v3, v0, v2

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f6b851f    # 0.92f

    .line 77
    invoke-static {v3, v5, v6}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/EditModeConfig;->mScreenScaleRatio:F

    .line 78
    iput v3, p0, Lcom/miui/home/launcher/EditModeConfig;->mQuickEditScreenRatio:F

    int-to-float v0, v0

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 80
    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBoardVerPadding:I

    add-int/2addr v1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/launcher/EditModeConfig;->mScreenScaleRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenMarginTop()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuHeight:I

    add-int/2addr v2, v3

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    int-to-float p1, v1

    .line 82
    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mScreenScaleRatio:F

    sub-float/2addr v4, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v4, v1

    div-float/2addr p1, v4

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mEditingAnimPivotyPatio:F

    .line 83
    iget p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryHeight:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryMarginBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/EditModeConfig;->mIndicatorMarginBottom:I

    return-void
.end method

.method private calTopMenu(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f070295

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuVerPadding:I

    goto :goto_0

    :cond_0
    const v1, 0x7f070182

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuVerPadding:I

    .line 57
    :goto_0
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f070299

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuHorPadding:I

    goto :goto_1

    :cond_1
    const p1, 0x7f070183

    .line 60
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuHorPadding:I

    :goto_1
    const p1, 0x7f070181

    .line 62
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuVerPadding:I

    mul-int/2addr v1, v2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuHeight:I

    const p1, 0x7f0702b8

    .line 64
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mLayoutPreviewTopMenuVerPadding:I

    const p1, 0x7f0702b9

    .line 65
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mLayoutPreviewTopMenuHorPadding:I

    const p1, 0x7f0702ba

    .line 66
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mPreviewTopMenuWidth:I

    const p1, 0x7f0702b7

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/EditModeConfig;->mPreviewTopMenuHeight:I

    return-void
.end method


# virtual methods
.method public getBottomEntryHeight()I
    .locals 0

    .line 156
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryHeight:I

    return p0
.end method

.method public getBottomEntryMarginBottom()I
    .locals 0

    .line 160
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryMarginBottom:I

    return p0
.end method

.method public getEditingAnimPivotyRatio()F
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mEditingAnimPivotyPatio:F

    return p0
.end method

.method public getLayoutPreviewBottomButtonGap()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mLayoutPreviewBottomButtonGap:I

    return p0
.end method

.method public getLayoutPreviewTopMenuHorPadding()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mLayoutPreviewTopMenuHorPadding:I

    return p0
.end method

.method public getLayoutPreviewTopMenuVerPadding()I
    .locals 0

    .line 141
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mLayoutPreviewTopMenuVerPadding:I

    return p0
.end method

.method public getPreviewTopMenuHeight()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mPreviewTopMenuHeight:I

    return p0
.end method

.method public getPreviewTopMenuWidth()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mPreviewTopMenuWidth:I

    return p0
.end method

.method public getQuickEditScreenRatio()F
    .locals 0

    .line 126
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mQuickEditScreenRatio:F

    return p0
.end method

.method public getScreenScaleRatio()F
    .locals 0

    .line 122
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mScreenScaleRatio:F

    return p0
.end method

.method public getTopMenuHorPadding()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuHorPadding:I

    return p0
.end method

.method public getTopMenuVerPadding()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuVerPadding:I

    return p0
.end method

.method public getWorkspaceIndicatorMarginBottomInEditMode()I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mIndicatorMarginBottom:I

    return p0
.end method

.method public updateConfig(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/EditModeConfig;->calTopMenu(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/EditModeConfig;->calBottomEntry(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/EditModeConfig;->calScreenScaleRatio(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTopMenuVerPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuVerPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mTopMenuHorPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuHorPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mTopMenuHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mTopMenuHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mLayoutPreviewTopMenuVerPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mLayoutPreviewTopMenuVerPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mLayoutPreviewTopMenuHorPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mLayoutPreviewTopMenuHorPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBoardVerPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBoardVerPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mQuickEditScreenRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mQuickEditScreenRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mIndicatorMarginBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mIndicatorMarginBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBottomEntryHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBottomEntryMarginBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/EditModeConfig;->mBottomEntryMarginBottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",density="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EditModeConfig"

    .line 42
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
