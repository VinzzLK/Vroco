.class public abstract Lcom/miui/home/launcher/compat/GridSizeCalRules;
.super Ljava/lang/Object;
.source "GridSizeCalRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;
    }
.end annotation


# instance fields
.field protected mCalGridUsingNav:Z

.field protected mCellCountY:I

.field protected mCellSize:I

.field protected mElderlyNavigationBarHeight:I

.field protected mGestureLineHeight:I

.field protected mHotseatCellHeight:I

.field protected mHotseatCellWidth:I

.field protected mHotseatMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndicatorHeight:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndicatorHeightMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxGridHeight:I

.field protected mMaxGridWidth:I

.field protected mNavigationBarHeight:I

.field protected mPortrait:Z

.field protected mScreenMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mScreenMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchBarHeight:I

.field protected mSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowGestureLine:Z

.field protected mShowSearchBar:Z

.field protected mStableGestureLineSpace:I

.field protected mStableIndicatorHeight:I

.field protected mStableWorkspaceCellPaddingTop:I

.field protected mUsingFsGesture:Z

.field protected mVariableHotSeatMarginBottom:I

.field protected mVariableIndicatorHeight:I

.field protected mVariableWorkspaceCellPaddingTop:I

.field protected mWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mWorkspaceCellSide:I

.field protected mWorkspaceCellSideDefault:I

.field protected mWorkspaceTopPadding:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 22
    iput v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellSideDefault:I

    .line 25
    new-instance v0, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 28
    new-instance v0, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceTopPadding:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 31
    new-instance v0, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 37
    new-instance v0, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mIndicatorHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 38
    new-instance v0, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mIndicatorHeightMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 42
    new-instance v0, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 44
    new-instance v0, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 45
    new-instance v0, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 59
    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    .line 60
    iput p3, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridHeight:I

    .line 62
    iput-boolean p4, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mPortrait:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706d9

    .line 65
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableWorkspaceCellPaddingTop:I

    const p3, 0x7f0706d7

    .line 66
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableGestureLineSpace:I

    const p3, 0x7f0706d8

    .line 67
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableIndicatorHeight:I

    const p3, 0x7f07066d

    .line 68
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarHeight:I

    .line 70
    new-instance p2, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p2}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->getGestureLineHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mGestureLineHeight:I

    .line 72
    invoke-virtual {p2}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->getNavigationBarHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mNavigationBarHeight:I

    .line 73
    invoke-virtual {p2}, Lcom/miui/home/launcher/compat/GridSizeCalRules$SystemUiData;->getElderlyNavigationBarHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mElderlyNavigationBarHeight:I

    return-void
.end method

.method private calSearchBarMarginBottom(I)Z
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCalGridUsingNav:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 196
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mUsingFsGesture:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowGestureLine:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mGestureLineHeight:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 197
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 199
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract calGridSize(Landroid/content/Context;IIZ)Z
.end method

.method abstract calHotseatMarginBottom(I)I
.end method

.method public calOtherValues(II)Z
    .locals 2

    .line 187
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calSearchBarMarginBottom(I)Z

    move-result p2

    .line 188
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calVariableHeight(I)Z

    move-result p1

    or-int/2addr p1, p2

    .line 189
    iget-object p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mIndicatorHeightMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    iget-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 190
    iget-object p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    iget-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mIndicatorHeightMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mIndicatorHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method protected calVariableHeight(I)Z
    .locals 3

    int-to-float p1, p1

    .line 204
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getScreenTopRation()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mVariableWorkspaceCellPaddingTop:I

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getIndicatorRation()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mVariableIndicatorHeight:I

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getScreenBottomRation()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mVariableHotSeatMarginBottom:I

    .line 207
    iget-object p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceTopPadding:Lcom/miui/home/launcher/common/ChangeableValue;

    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableWorkspaceCellPaddingTop:I

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mVariableWorkspaceCellPaddingTop:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result p1

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mIndicatorHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    iget v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mStableIndicatorHeight:I

    iget v2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mVariableIndicatorHeight:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p1, v0

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calHotseatMarginBottom(I)I

    move-result v1

    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mVariableHotSeatMarginBottom:I

    add-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method protected correctWorkspaceCellSide(I)V
    .locals 1

    .line 182
    iget v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    mul-int/2addr v0, p1

    .line 183
    iget p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellSide:I

    return-void
.end method

.method public getCellCountY()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellCountY:I

    return p0
.end method

.method public getCellHorizontalSpacing()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCellSize()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCellSize:I

    return p0
.end method

.method public getCellVerticalSpacing()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHotseatHeight()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellHeight:I

    return p0
.end method

.method public getHotseatMarginBottom()I
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getHotseatWidth()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mHotseatCellWidth:I

    return p0
.end method

.method public getIndicatorHeight()I
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mIndicatorHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected getIndicatorRation()F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getNavScreenMarginBottom()I
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mUsingFsGesture:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowGestureLine:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mGestureLineHeight:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getNavigationBarHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getNavigationBarHeight()I
    .locals 1

    .line 176
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mElderlyNavigationBarHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mNavigationBarHeight:I

    :goto_0
    return p0
.end method

.method public getRealScreenMarginBottom()I
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected getScreenBottomRation()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getScreenTopRation()F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getSearchBarHeight()I
    .locals 0

    .line 156
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarHeight:I

    return p0
.end method

.method public getSearchBarMarginBottom()I
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWorkspaceCellPaddingBottom()I
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWorkspaceCellPaddingTop()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWorkspaceCellSide()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceCellSide:I

    return p0
.end method

.method public getWorkspaceIndicatorMarginBottom()I
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mIndicatorHeightMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWorkspacePaddingTop()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mWorkspaceTopPadding:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setScreenMarginBottom(I)Z
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setScreenMarginTop(I)Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mScreenMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public updateCalGridUsingNav(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mCalGridUsingNav:Z

    return-void
.end method

.method public updateScreenSize(Landroid/content/Context;II)V
    .locals 0

    .line 77
    iput p2, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridWidth:I

    .line 78
    iput p3, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mMaxGridHeight:I

    return-void
.end method

.method public updateShowGestureLine(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowGestureLine:Z

    return-void
.end method

.method public updateShowSearchBar(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mShowSearchBar:Z

    return-void
.end method

.method public updateUsingFsGesture(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/miui/home/launcher/compat/GridSizeCalRules;->mUsingFsGesture:Z

    return-void
.end method
