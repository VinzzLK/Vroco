.class public Lcom/miui/home/launcher/compat/PhoneDeviceRules;
.super Lcom/miui/home/launcher/compat/GridSizeCalRules;
.source "PhoneDeviceRules.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/compat/GridSizeCalRules;-><init>(Landroid/content/Context;IIZ)V

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    int-to-float p1, p2

    const p2, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 22
    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellSideDefault:I

    return-void
.end method

.method private calCellCountY()I
    .locals 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calCellCountY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getGridHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getGridHeight()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->getCurType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneDeviceRules"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getGridHeight()I

    move-result v0

    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    div-int/2addr v0, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->getCurType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr v0, p0

    return v0
.end method

.method private calGridSizeByFixedRows(II)Z
    .locals 4

    .line 40
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellSideDefault:I

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    .line 41
    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridHeight:I

    iget-object v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableWorkspaceCellPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableIndicatorHeight:I

    sub-int/2addr v1, v2

    .line 43
    iget-boolean v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowSearchBar:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarHeight:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sub-int/2addr v1, v2

    .line 44
    iget-boolean v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCalGridUsingNav:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getNavigationBarHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    sub-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    .line 45
    div-int v2, v1, v2

    .line 46
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->correctWorkspaceCellSide(I)V

    .line 48
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellWidth:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    .line 49
    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellCountY:I

    mul-int/2addr p2, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p1

    .line 51
    iget-boolean p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCalGridUsingNav:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mUsingFsGesture:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getNavigationBarHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableGestureLineSpace:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mGestureLineHeight:I

    sub-int v3, p1, p2

    :cond_2
    add-int/2addr v1, v3

    .line 52
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableGestureLineSpace:I

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calOtherValues(II)Z

    move-result p0

    return p0
.end method

.method private calGridSizeByVariable(I)Z
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getCellSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->correctWorkspaceCellSide(I)V

    .line 58
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellWidth:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->initLayoutTypeIfNeed()V

    .line 60
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->calCellCountY()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellCountY:I

    .line 61
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getGridHeight()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellCountY:I

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getRemainingSpace(II)I

    move-result p1

    .line 62
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableGestureLineSpace:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calOtherValues(II)Z

    move-result p0

    return p0
.end method

.method private getCellSize(I)I
    .locals 1

    .line 102
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellSideDefault:I

    sub-int/2addr v0, p0

    div-int/2addr v0, p1

    return v0
.end method

.method private getGridHeight()I
    .locals 2

    .line 106
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridHeight:I

    iget-object v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableWorkspaceCellPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableIndicatorHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    sub-int/2addr v0, v1

    .line 108
    iget-boolean v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowSearchBar:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    .line 109
    iget-boolean v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCalGridUsingNav:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getNavigationBarHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    sub-int/2addr v0, p0

    return v0
.end method

.method private getGridHeightWithoutSearchBar()I
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getGridHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowSearchBar:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarHeight:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private getRemainingSpace(II)I
    .locals 1

    .line 117
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    .line 118
    iget-boolean p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCalGridUsingNav:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mUsingFsGesture:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getNavigationBarHeight()I

    move-result p2

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableGestureLineSpace:I

    sub-int/2addr p2, v0

    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mGestureLineHeight:I

    sub-int v0, p2, p0

    :cond_0
    add-int/2addr p1, v0

    return p1
.end method

.method private initLayoutTypeIfNeed()V
    .locals 3

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->getCurType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return-void

    .line 86
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->initTypeFromSPOnly()V

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getGridHeightWithoutSearchBar()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getCellSize(I)I

    move-result v1

    div-int/2addr v0, v1

    .line 92
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getGridHeightWithoutSearchBar()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->getRemainingSpace(II)I

    move-result v0

    const/4 v1, 0x0

    .line 94
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    div-int/lit8 p0, p0, 0x2

    if-ge v0, p0, :cond_4

    const/4 v1, 0x1

    .line 98
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->init(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public calGridSize(Landroid/content/Context;IIZ)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 28
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->calGridSizeByFixedRows(II)Z

    move-result p0

    return p0

    .line 30
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;->calGridSizeByVariable(I)Z

    move-result p0

    return p0
.end method

.method calHotseatMarginBottom(I)I
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowSearchBar:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarHeight:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    return p1
.end method

.method protected getIndicatorRation()F
    .locals 1

    .line 128
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->isLooseLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x3eeb851f    # 0.46f

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getIndicatorRation()F

    move-result p0

    :goto_0
    return p0
.end method

.method protected getScreenBottomRation()F
    .locals 1

    .line 134
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->isLooseLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x3e23d70a    # 0.16f

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getScreenBottomRation()F

    move-result p0

    :goto_0
    return p0
.end method

.method protected getScreenTopRation()F
    .locals 1

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->isLooseLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x3ec28f5c    # 0.38f

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getScreenTopRation()F

    move-result p0

    :goto_0
    return p0
.end method
