.class public Lcom/miui/home/launcher/anim/FoldEditEnterAnim;
.super Lcom/miui/home/launcher/anim/NormalEditEnterAnim;
.source "FoldEditEnterAnim.java"


# instance fields
.field private mBackgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

.field mFoldEnterEditAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

.field private mIsFoldLongClickInEdit:Z

.field private mScreenLayoutRules:Lcom/miui/home/launcher/IScreenLayoutRules;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;)V

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->initFoldParam()V

    return-void
.end method

.method private calLayoutXEnd()F
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 128
    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v1

    .line 130
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->getLayoutX(III)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    mul-int/2addr v1, v3

    sub-int/2addr v2, v1

    .line 131
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float/2addr v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v1, v0, v1

    .line 132
    iput v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellScreenPadding:F

    int-to-float p0, v2

    add-float/2addr p0, v0

    return p0
.end method

.method private calLayoutXEndForThirdScreen(I)F
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, p1, 0x2

    .line 141
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 142
    instance-of v3, v0, Lcom/miui/home/launcher/CellScreen;

    if-eqz v3, :cond_1

    .line 143
    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    .line 144
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, p1, v2, v1}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->getLayoutX(III)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    mul-int/2addr p1, v2

    sub-int/2addr v1, p1

    .line 145
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    sub-float/2addr v0, v2

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    div-float v0, p1, v0

    .line 146
    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellScreenPadding:F

    int-to-float p0, v1

    add-float/2addr p0, p1

    return p0

    :cond_1
    return v1
.end method

.method private calLayoutXStart()F
    .locals 4

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 106
    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v1

    sub-int/2addr v2, v1

    .line 108
    div-int/lit8 v1, v2, 0x2

    .line 109
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    sub-float/2addr v3, p0

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    mul-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    int-to-float p0, v1

    add-float/2addr v2, p0

    return v2

    .line 113
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    sub-float/2addr v3, p0

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    mul-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    int-to-float p0, v1

    sub-float/2addr v2, p0

    return v2

    :cond_1
    if-lez v2, :cond_2

    .line 117
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    :goto_0
    int-to-float p0, p0

    return p0

    .line 119
    :cond_2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p0, v1

    goto :goto_0
.end method

.method private calLayoutXStartForThirdScreen(I)F
    .locals 4

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, p1, 0x2

    .line 157
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 158
    instance-of v3, v0, Lcom/miui/home/launcher/CellScreen;

    if-eqz v3, :cond_1

    .line 159
    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    sub-int/2addr v2, p1

    .line 160
    div-int/lit8 v2, v2, 0x2

    .line 161
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    sub-float/2addr v1, p0

    mul-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    mul-int/2addr v2, p0

    mul-int/lit8 v2, v2, 0x2

    int-to-float p0, v2

    add-float/2addr p1, p0

    return p1

    :cond_1
    return v1
.end method

.method private cancelEnterEditAnimate()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mFoldEnterEditAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->resetView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private getLayoutX(III)F
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mScreenLayoutRules:Lcom/miui/home/launcher/IScreenLayoutRules;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutRules()Lcom/miui/home/launcher/IScreenLayoutRules;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mScreenLayoutRules:Lcom/miui/home/launcher/IScreenLayoutRules;

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mScreenLayoutRules:Lcom/miui/home/launcher/IScreenLayoutRules;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/home/launcher/IScreenLayoutRules;->calculateEditLayoutX(III)I

    move-result p0

    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method private initFoldParam()V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ae

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0600cc

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f0600cb

    .line 40
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 41
    new-instance v3, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v4, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {v3, v4, v2, v0}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mBackgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    int-to-float v0, v1

    .line 42
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgRadius(F)V

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    return-void
.end method


# virtual methods
.method protected calDeltaFirstScreenX()F
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->calLayoutXEndForThirdScreen(I)F

    move-result v1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->calLayoutXStartForThirdScreen(I)F

    move-result p0

    sub-float/2addr v1, p0

    return v1
.end method

.method protected calDeltaX(Z)F
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->calLayoutXEnd()F

    move-result p1

    invoke-direct {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->calLayoutXStart()F

    move-result p0

    sub-float/2addr p1, p0

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getEnterTransX(Z)F
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 83
    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 86
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    mul-int/2addr v5, v2

    aput v5, v4, v6

    .line 91
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getCurrentScreenDeltaX(Lcom/miui/home/launcher/Workspace;I)I

    move-result v1

    .line 93
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v3, v2, v5}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->getLayoutX(III)F

    move-result p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v3, v0

    int-to-float v0, v3

    sub-float/2addr p0, v0

    aget v0, v4, v6

    int-to-float v0, v0

    sub-float/2addr v0, p0

    int-to-float v3, v1

    sub-float/2addr v0, v3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    sub-float/2addr v0, v3

    .line 96
    :goto_0
    sget-boolean p1, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnterTransX id: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", x: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v4, v6

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", layoutX: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", currentScreenDelta: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EditAnim_DEBUG"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_4

    neg-float v0, v0

    :cond_4
    return v0
.end method

.method protected getOutTransX()I
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    .line 229
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 230
    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v2

    sub-int/2addr v3, v2

    .line 232
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    mul-int/2addr v2, v3

    .line 233
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v1, v3, v0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->getLayoutX(III)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p0, v2

    return p0
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 217
    invoke-super {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->onScreenSizeChanged()V

    .line 218
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->cancelEnterEditAnimate()V

    return-void
.end method

.method protected prepareAnimParam()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->prepareAnimParam()V

    .line 63
    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mIsFoldLongClickInEdit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCurrentCellLayoutScale:F

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsScalePivotInCenter:Z

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getFoldEditModePivotX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotX:F

    return-void
.end method

.method protected scaleTargetView(F)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->updateEditModeScale(F)V

    return-void
.end method

.method public startEditAnim(ZZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_long_click_in_edit"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "event_menu"

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    iput-boolean p3, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mIsFoldLongClickInEdit:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 52
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startEnterAnim(ZZ)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startEnterAnim(ZZ)V

    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->startOutAnim()V

    :goto_1
    return-void
.end method

.method public startOutAnim()V
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->cancelEnterEditAnimate()V

    .line 240
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startNormalOutAnim()V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->updateBlur(Z)V

    return-void
.end method

.method public updateEditBackground(F)V
    .locals 2

    .line 195
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    sub-float v1, v0, v1

    div-float/2addr p1, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 198
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mBackgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateBackgroundColor(F)I

    :cond_0
    return-void
.end method
