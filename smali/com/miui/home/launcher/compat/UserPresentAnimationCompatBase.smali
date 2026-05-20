.class public abstract Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;
.source "UserPresentAnimationCompatBase.java"

# interfaces
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;


# instance fields
.field protected final LOCATION:[I

.field private final mAnimationValue:[F

.field private final mCameraTranslationZ:F

.field protected mCellCenterX:F

.field protected mCellCenterY:F

.field protected mCellCountsX:I

.field protected mCellCountsY:I

.field private mCellX:F

.field private mCellY:F

.field private final mDelayDistanceRatio:F

.field private final mDelayRandomRatio:F

.field private mIsShowSearchBar:Z

.field protected mPivot:[I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;FFF)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 30
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->LOCATION:[I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 40
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mAnimationValue:[F

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellX:F

    .line 51
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellY:F

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->changePivot()V

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->changeScreenSize()V

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->changeCellCounts()V

    .line 60
    iput p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCameraTranslationZ:F

    .line 61
    iput p3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mDelayDistanceRatio:F

    .line 62
    iput p4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mDelayRandomRatio:F

    .line 63
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/BaseActivity;->addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V

    return-void
.end method

.method private calMinDis(FFF)F
    .locals 1

    neg-float p0, p3

    .line 94
    sget p3, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->camDis:F

    sub-float p3, p0, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Lcom/miui/home/launcher/util/CameraLite;->getDistanceByWidth(F)F

    move-result p1

    add-float/2addr p3, p1

    .line 95
    sget p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->camDis:F

    sub-float/2addr p0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Lcom/miui/home/launcher/util/CameraLite;->getDistanceByHeight(F)F

    move-result p1

    add-float/2addr p0, p1

    .line 96
    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private changeCellCounts()V
    .locals 2

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mIsShowSearchBar:Z

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    .line 87
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mIsShowSearchBar:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    .line 89
    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCenterX:F

    .line 90
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCenterY:F

    return-void
.end method

.method private changePivot()V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mPivot:[I

    return-void
.end method

.method private changeScreenSize()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/util/CameraLite;->setScreen(FF)V

    return-void
.end method

.method private functionWithProgress(ID)D
    .locals 2

    int-to-double p0, p1

    .line 246
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const/4 v0, 0x1

    int-to-double v0, v0

    .line 247
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p2, v0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private static getEffectMultiplier(Landroid/view/View;)F
    .locals 2

    .line 232
    instance-of v0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;

    const/high16 v1, 0x40800000    # 4.0f

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->isInDock(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    instance-of p0, p0, Lcom/miui/home/launcher/SearchBar;

    if-eqz p0, :cond_1

    const/high16 v1, 0x40400000    # 3.0f

    :cond_1
    :goto_0
    return v1
.end method

.method private getRcDistance(Landroid/view/View;)F
    .locals 7

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedNextScreenId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    instance-of v2, p1, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_5

    .line 161
    instance-of v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v2, :cond_1

    .line 162
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p1

    goto :goto_1

    .line 163
    :cond_1
    instance-of v2, p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v2, :cond_2

    .line 164
    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object p1

    goto :goto_1

    .line 165
    :cond_2
    instance-of v2, p1, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    if-eqz v2, :cond_3

    .line 166
    check-cast p1, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->getContainer()Lcom/miui/home/launcher/LauncherWidgetContainerView;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_4

    .line 170
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    int-to-float v2, v2

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    iput v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellX:F

    .line 171
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    int-to-float v2, v2

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    int-to-float p1, p1

    sub-float/2addr p1, v6

    div-float/2addr p1, v4

    add-float/2addr v2, p1

    iput v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellY:F

    goto/16 :goto_4

    :cond_4
    move-object v3, p1

    goto/16 :goto_4

    .line 174
    :cond_5
    instance-of v2, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_6

    .line 175
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    goto/16 :goto_4

    .line 176
    :cond_6
    instance-of v2, p1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v2, :cond_7

    .line 177
    check-cast p1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    goto :goto_4

    .line 178
    :cond_7
    instance-of v2, p1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v2, :cond_8

    .line 179
    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v3

    goto :goto_4

    .line 180
    :cond_8
    instance-of v2, p1, Lcom/miui/home/launcher/hotseats/HotSeats;

    if-eqz v2, :cond_a

    .line 181
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v4

    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellX:F

    .line 182
    iget-boolean p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mIsShowSearchBar:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    add-int/lit8 p1, p1, -0x2

    goto :goto_2

    :cond_9
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    sub-int/2addr p1, v1

    :goto_2
    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellY:F

    goto :goto_4

    .line 183
    :cond_a
    instance-of v2, p1, Lcom/miui/home/launcher/SearchBar;

    if-eqz v2, :cond_b

    .line 184
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v4

    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellX:F

    .line 185
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellY:F

    goto :goto_4

    .line 186
    :cond_b
    instance-of v2, p1, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v2, :cond_d

    .line 187
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v4

    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellX:F

    .line 188
    iget-boolean p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mIsShowSearchBar:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    int-to-float p1, p1

    const/high16 v2, 0x40200000    # 2.5f

    goto :goto_3

    :cond_c
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    int-to-float p1, p1

    const/high16 v2, 0x3fc00000    # 1.5f

    :goto_3
    sub-float/2addr p1, v2

    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellY:F

    goto :goto_4

    .line 190
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_e

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    :cond_e
    :goto_4
    if-nez v3, :cond_f

    .line 194
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellX:F

    goto :goto_5

    :cond_f
    iget p1, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    :cond_10
    int-to-float p1, p1

    :goto_5
    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellX:F

    if-nez v3, :cond_11

    .line 195
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellY:F

    goto :goto_7

    :cond_11
    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mIsShowSearchBar:Z

    if-eqz p1, :cond_12

    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    add-int/lit8 p1, p1, -0x2

    goto :goto_6

    :cond_12
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    sub-int/2addr p1, v1

    goto :goto_6

    :cond_13
    iget p1, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :goto_6
    int-to-float p1, p1

    :goto_7
    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellY:F

    .line 196
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCenterY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellX:F

    iget p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCenterX:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr p1, p0

    return p1
.end method

.method private static isInDock(Landroid/view/View;)Z
    .locals 1

    .line 220
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 221
    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p0

    return p0

    .line 222
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v0, :cond_1

    .line 223
    check-cast p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p0

    return p0

    .line 224
    :cond_1
    instance-of v0, p0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_2

    .line 225
    check-cast p0, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected conversionValueFrom3DTo2D(IIF)[F
    .locals 2

    int-to-float p1, p1

    int-to-float p2, p2

    .line 252
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/util/CameraLite;->to2D(FFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 253
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    .line 254
    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 255
    invoke-static {p2, p3}, Lcom/miui/home/launcher/util/CameraLite;->valueTo2D(FF)F

    move-result p2

    .line 256
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mAnimationValue:[F

    const/4 p3, 0x0

    aput v1, p0, p3

    const/4 p3, 0x1

    .line 257
    aput p1, p0, p3

    const/4 p1, 0x2

    .line 258
    aput p2, p0, p1

    return-object p0
.end method

.method public abstract endAnimation(Landroid/view/View;)V
.end method

.method protected getMass(F)D
    .locals 5

    const/4 p0, 0x1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/4 v2, 0x2

    :goto_0
    int-to-float v3, p0

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_0

    int-to-double v3, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const-wide p0, 0x3fb999999999999aL    # 0.1

    .line 207
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method protected getZPosition(Landroid/view/View;ID)D
    .locals 1

    .line 212
    invoke-static {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->getEffectMultiplier(Landroid/view/View;)F

    move-result p1

    .line 215
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3, p4}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->functionWithProgress(ID)D

    move-result-wide p3

    float-to-double p0, p1

    mul-double/2addr p0, p3

    neg-double p0, p0

    int-to-double p2, p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->changePivot()V

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->changeCellCounts()V

    return-void
.end method

.method protected prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 14

    if-eqz p1, :cond_0

    const v0, 0x7f0a0400

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->endAnimation(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->LOCATION:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 109
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCenterLocation(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 111
    aget v0, v0, v3

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->getRcDistance(Landroid/view/View;)F

    move-result v4

    .line 114
    iget v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsY:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v9, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mCellCountsX:I

    int-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 115
    iget-object v6, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mPivot:[I

    aget v6, v6, v1

    sub-int v6, v2, v6

    int-to-double v9, v6

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget-object v6, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mPivot:[I

    aget v6, v6, v3

    sub-int v6, v0, v6

    int-to-double v11, v6

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v9, v6

    .line 117
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->getMass(F)D

    move-result-wide v6

    const v4, 0x7f0a0402

    .line 118
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 120
    invoke-virtual {p0, p1, v5, v9, v10}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->getZPosition(Landroid/view/View;ID)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v13, v4, v5

    .line 123
    iget-object v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->mPivot:[I

    aget v5, v4, v1

    int-to-float v5, v5

    .line 124
    aget v4, v4, v3

    int-to-float v4, v4

    int-to-float v6, v2

    sub-float/2addr v6, v5

    int-to-float v7, v0

    sub-float/2addr v7, v4

    .line 129
    invoke-direct {p0, v6, v7, v13}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->calMinDis(FFF)F

    move-result v6

    .line 131
    sget v7, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->minDis:F

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sput v6, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->minDis:F

    float-to-int v5, v5

    sub-int/2addr v2, v5

    float-to-int v4, v4

    sub-int/2addr v0, v4

    const v4, 0x7f0a03fd

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v4, 0x7f0a03fe

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v4, 0x7f0a03ff

    .line 151
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 152
    invoke-virtual {p0, v2, v0, v13}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->conversionValueFrom3DTo2D(IIF)[F

    move-result-object v0

    const/4 v2, 0x2

    .line 153
    aget v8, v0, v2

    aget v9, v0, v2

    const/4 v10, 0x0

    aget v11, v0, v1

    aget v12, v0, v3

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v13}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->setViewPrepareInfo(Landroid/view/View;FFFFFF)V

    :cond_0
    return-void
.end method

.method protected setViewPrepareInfo(Landroid/view/View;FFFFFF)V
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->ignoreAlpha(Landroid/view/View;)Z

    move-result p7

    if-nez p7, :cond_0

    .line 265
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 267
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 268
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->ignoreTranslation(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 270
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationX(F)V

    .line 272
    :cond_1
    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method final showUserPresentAnimation(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0400

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->prepareUserPresentAnimation(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->ignoreTranslation(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatBase;->showUserPresentAnimation(Landroid/view/View;IZ)V

    return-void
.end method

.method abstract showUserPresentAnimation(Landroid/view/View;IZ)V
.end method
