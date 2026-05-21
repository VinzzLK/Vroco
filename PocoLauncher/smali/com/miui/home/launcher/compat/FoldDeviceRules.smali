.class public Lcom/miui/home/launcher/compat/FoldDeviceRules;
.super Lcom/miui/home/launcher/compat/GridSizeCalRules;
.source "FoldDeviceRules.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FoldDeviceRules"


# instance fields
.field private final mDockIncreasedHeight:I

.field mIsLargeScreen:Z

.field private final mLandscapeInnerStableGestureLineSpace:I

.field private mLandscapeInnerWorkspaceCellSideDefault:I

.field private final mLandscapeWorkspaceSideScale:Ljava/lang/Float;

.field private final mPortraitInnerStableGestureLineSpace:I

.field private mPortraitInnerWorkspaceCellSideDefault:I

.field private final mPortraitWorkspaceSideScale:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/compat/GridSizeCalRules;-><init>(Landroid/content/Context;IIZ)V

    const/4 p2, -0x1

    .line 20
    iput p2, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mPortraitInnerWorkspaceCellSideDefault:I

    .line 21
    iput p2, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mLandscapeInnerWorkspaceCellSideDefault:I

    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mLandscapeInnerStableGestureLineSpace:I

    .line 30
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    div-int/lit8 p2, p2, 0x2

    :goto_1
    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    .line 31
    sget-object p2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/util/GridConfigUtil;->getInnerScreenSideScale(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    .line 32
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    iput-object p3, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mPortraitWorkspaceSideScale:Ljava/lang/Float;

    .line 33
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    iput-object p2, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mLandscapeWorkspaceSideScale:Ljava/lang/Float;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0705ea

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mPortraitInnerStableGestureLineSpace:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070105

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mDockIncreasedHeight:I

    return-void
.end method

.method private calByScreenOrAndHeight(II)Z
    .locals 4

    .line 92
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellSideDefault:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    .line 93
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

    .line 95
    iget-boolean v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowSearchBar:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarHeight:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sub-int/2addr v1, v2

    .line 96
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

    .line 97
    div-int v2, v1, v2

    .line 98
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->setCellCountY(I)V

    .line 99
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    .line 100
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->correctWorkspaceCellSide(I)V

    .line 101
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellWidth:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    mul-int/2addr p2, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p1

    .line 103
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

    .line 104
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableGestureLineSpace:I

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calOtherValues(II)Z

    move-result p0

    return p0
.end method

.method private calByScreenWidth(II)Z
    .locals 2

    .line 74
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellSideDefault:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->correctWorkspaceCellSide(I)V

    .line 76
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->setCellCountY(I)V

    .line 77
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellWidth:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    .line 78
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridHeight:I

    iget-object p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p2}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableWorkspaceCellPaddingTop:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellCountY:I

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableIndicatorHeight:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    sub-int/2addr p1, p2

    .line 80
    iget-boolean p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowSearchBar:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarHeight:I

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    sub-int/2addr p1, p2

    .line 81
    iget-boolean p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCalGridUsingNav:Z

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mUsingFsGesture:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableGestureLineSpace:I

    :cond_1
    sub-int/2addr p1, v0

    if-eqz p2, :cond_2

    .line 82
    iget-boolean p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mUsingFsGesture:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mGestureLineHeight:I

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p2}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    sub-int/2addr p1, p2

    .line 83
    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableGestureLineSpace:I

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calOtherValues(II)Z

    move-result p0

    return p0
.end method

.method private calExternalScreen(IIZ)Z
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridHeight:I

    :goto_0
    int-to-float v0, v0

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellSideDefault:I

    if-eqz p3, :cond_1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->calByScreenOrAndHeight(II)Z

    move-result p0

    return p0

    .line 69
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->calByScreenWidth(II)Z

    move-result p0

    return p0
.end method

.method private calInnerScreen(II)Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 109
    iget v0, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mPortraitInnerStableGestureLineSpace:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->calPortraitScreen(III)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->calLandscapeScreen(III)Z

    move-result p0

    return p0
.end method

.method private calLandscapeScreen(III)Z
    .locals 2

    .line 129
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mLandscapeWorkspaceSideScale:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mLandscapeInnerWorkspaceCellSideDefault:I

    .line 130
    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    div-int/2addr v1, p1

    iput v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    .line 131
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->correctWorkspaceCellSide(I)V

    .line 132
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->setCellCountY(I)V

    .line 133
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridHeight:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableWorkspaceCellPaddingTop:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableIndicatorHeight:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    .line 135
    iget-boolean p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mUsingFsGesture:Z

    if-eqz p2, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p1, v0

    .line 136
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCalGridUsingNav:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mGestureLineHeight:I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p2}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    sub-int/2addr p1, p2

    .line 137
    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    sub-int v0, p1, p2

    if-gez v0, :cond_2

    .line 138
    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellWidth:I

    const v0, 0x3f2d0e56    # 0.676f

    int-to-float p2, p2

    mul-float/2addr p2, v0

    .line 139
    iget v0, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mDockIncreasedHeight:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    goto :goto_2

    .line 141
    :cond_2
    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellWidth:I

    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    .line 143
    :goto_2
    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    sub-int/2addr p1, p2

    .line 144
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calOtherValues(II)Z

    move-result p0

    return p0
.end method

.method private calPortraitScreen(III)Z
    .locals 2

    .line 116
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mPortraitWorkspaceSideScale:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mPortraitInnerWorkspaceCellSideDefault:I

    .line 117
    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    div-int/2addr v1, p1

    iput v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    .line 118
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->correctWorkspaceCellSide(I)V

    .line 119
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->setCellCountY(I)V

    .line 120
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellWidth:I

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    .line 121
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridHeight:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableWorkspaceCellPaddingTop:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableIndicatorHeight:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    .line 123
    iget-boolean p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mUsingFsGesture:Z

    if-eqz p2, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p1, v0

    .line 124
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCalGridUsingNav:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mGestureLineHeight:I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p2}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    sub-int/2addr p1, p2

    .line 125
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calOtherValues(II)Z

    move-result p0

    return p0
.end method

.method private setCellCountY(I)V
    .locals 3

    .line 87
    sget-object v0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCellCountY y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellCountY:I

    return-void
.end method


# virtual methods
.method public calGridSize(Landroid/content/Context;IIZ)Z
    .locals 0

    .line 45
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mIsLargeScreen:Z

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeLarge()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef()I

    move-result p1

    add-int/lit8 p3, p1, -0x1

    .line 49
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mIsLargeScreen:Z

    if-eqz p1, :cond_1

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->calInnerScreen(II)Z

    move-result p0

    return p0

    .line 52
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/home/launcher/compat/FoldDeviceRules;->calExternalScreen(IIZ)Z

    move-result p0

    return p0
.end method

.method calHotseatMarginBottom(I)I
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/FoldDeviceRules;->mIsLargeScreen:Z

    if-eqz v0, :cond_0

    return p1

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowSearchBar:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarHeight:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    return p1
.end method

.method public updateScreenSize(Landroid/content/Context;II)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    div-int/lit8 p2, p2, 0x2

    :cond_0
    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    .line 40
    iput p3, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridHeight:I

    return-void
.end method
