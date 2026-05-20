.class public Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;
.source "UserPresentAnimationCompatFold.java"


# instance fields
.field mDragLayerViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPreparedScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

.field private mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 24
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mPreparedScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    .line 32
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold$1;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mDragLayerViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->prepareAnimationActual()V

    return-void
.end method

.method private clearPrepareLockAnim()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->isPreparedAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->resetSearchBar()V

    .line 101
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->resetSeekBar()V

    .line 102
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->resetHotsets()V

    .line 103
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->resetCellLayout()V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetAnimationViewNum()V

    return-void
.end method

.method private obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;
    .locals 0

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/miui/home/launcher/common/ScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/ScreenMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/home/launcher/common/ScreenMode;->NORMAL:Lcom/miui/home/launcher/common/ScreenMode;

    :goto_0
    return-object p0
.end method

.method private prepareAnimationActual()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->updatePivot()V

    .line 62
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->updateScreen()V

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->updateCellCounts()V

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->prepareCurrentScreen()V

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->prepareNextScreen()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    .line 67
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mPreparedScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    return-void
.end method

.method private resetCellLayout()V
    .locals 6

    .line 109
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 112
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    .line 114
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 117
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    :cond_1
    return-void
.end method

.method private resetHotsets()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private resetSearchBar()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private resetSeekBar()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private shouldShowAnim()Z
    .locals 7

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    .line 92
    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    cmp-long p0, v5, v3

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 94
    :cond_1
    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    cmp-long p0, v5, v3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private updateCellCounts()V
    .locals 2

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    .line 160
    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCenterX:F

    .line 161
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCenterY:F

    return-void
.end method

.method private updatePivot()V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mPivot:[I

    return-void
.end method

.method private updateScreen()V
    .locals 1

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/util/CameraLite;->setScreen(FF)V

    return-void
.end method


# virtual methods
.method public checkMissingIcon()V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->isPreparedAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->checkMissingIcon()V

    :cond_0
    return-void
.end method

.method public bridge synthetic endAnimation(Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->endAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 0

    .line 194
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isChildrenLaidOut()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreparedAnimation()Z
    .locals 4

    .line 183
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->isPreparedAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected operateHotseats(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public prepareAnimation()V
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAnimation, mPreparedScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , mPreparedNextScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPresentAnimationCompatFold"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    if-eq v0, v2, :cond_0

    const-string v2, "ScrenMode update , so clear prepared animation ! "

    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->clearPrepareLockAnim()V

    .line 53
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->waitDragLayerGlobalLayoutAndShowAnimation()V

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->prepareAnimationActual()V

    :goto_0
    return-void
.end method

.method public resetAnimation()V
    .locals 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAnimation, mPreparedScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , mPreparedNextScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPresentAnimationCompatFold"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->clearPrepareLockAnim()V

    return-void
.end method

.method public showAnimation()V
    .locals 3

    const-string v0, "UserPresentAnimationCompatFold"

    const-string/jumbo v1, "showAnimation"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mDragLayerViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->shouldShowAnim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mPreparedScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "showAnimation: prepared screen mode = current screen mode, reprepare and show"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->prepareAnimationActual()V

    goto :goto_0

    :cond_0
    const-string v1, "Should not show lock animation , so clear prepared animation !"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->clearPrepareLockAnim()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->showNextScreen()V

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->showCurrentScreen()V

    return-void
.end method

.method public waitDragLayerGlobalLayoutAndShowAnimation()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mDragLayerViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->mDragLayerViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
