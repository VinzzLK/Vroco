.class public abstract Lcom/miui/home/recents/views/MenuViewPositionCalculator;
.super Ljava/lang/Object;
.source "MenuViewPositionCalculator.java"


# instance fields
.field protected mCanChangeMenuPositionWhenCovered:Z

.field protected mHorizontalMinMarginToBorder:I

.field protected mMenuSize:I

.field private final mMenuViewEffectRect:Landroid/graphics/Rect;

.field protected mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

.field private mMenuViews:[Landroid/view/View;

.field protected mRecentsViewRect:Landroid/graphics/Rect;

.field private final mTaskViewEffectRect:Landroid/graphics/Rect;

.field protected mTaskViewVisibleRect:Landroid/graphics/Rect;

.field protected mVerticalMinMarginToBorder:I


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewEffectRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewEffectRect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Lcom/miui/home/recents/util/RelativePosition;

    invoke-direct {v0}, Lcom/miui/home/recents/util/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    .line 37
    array-length v0, p1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getMenuCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViews:[Landroid/view/View;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params\' length must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getMenuCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private boundMenuViewInHorizontal([I)V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mHorizontalMinMarginToBorder:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 171
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 172
    aget v2, p1, v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getLeftBound()I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getRightBound(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calcMenuViewRelativeToTaskViewPositionInVertical()V
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPosYWhenPivotYInCenter()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    aget v1, v0, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getVerticalMinMarginToBorder()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 127
    iget-object p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getMenuCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getVerticalMinMarginToBorder()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 129
    iget-object p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    :goto_0
    return-void
.end method

.method private calcPivotY()I
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    mul-int/2addr p0, v1

    sub-int/2addr v0, p0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    goto :goto_0

    .line 142
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    :goto_0
    return v0
.end method

.method private calcPosX(Z[I)[I
    .locals 8

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPosXByRelativePosition()[I

    move-result-object v0

    .line 149
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->boundMenuViewInHorizontal([I)V

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    move v1, p1

    .line 151
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 152
    iget-object v2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewEffectRect:Landroid/graphics/Rect;

    aget v3, v0, v1

    aget v4, p2, v1

    aget v5, v0, v1

    iget v6, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    add-int/2addr v5, v6

    aget v7, p2, v1

    add-int/2addr v7, v6

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    iget-object v2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewEffectRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewEffectRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewEffectRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewEffectRect:Landroid/graphics/Rect;

    invoke-static {v2, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, p1

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 155
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->clearPosition(I)V

    .line 157
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    goto :goto_3

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/RelativePosition;->clearPosition(I)V

    .line 160
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    .line 162
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPosX(Z[I)[I

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private isNeedFixCoordinate(Lcom/miui/home/recents/views/RecentsContainer;)Z
    .locals 1

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    .line 112
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private layoutMenuView(Landroid/view/View;IIII)V
    .locals 0

    sub-int/2addr p4, p2

    int-to-float p4, p4

    .line 119
    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotX(F)V

    sub-int/2addr p5, p3

    int-to-float p4, p5

    .line 120
    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotY(F)V

    .line 121
    iget p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    add-int p4, p2, p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected abstract calcMenuViewPosY()[I
.end method

.method protected abstract calcPivotX()I
.end method

.method protected abstract calcPosXByRelativePosition()[I
.end method

.method protected abstract calcPosYWhenPivotYInCenter()[I
.end method

.method protected getLeftBound()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mHorizontalMinMarginToBorder:I

    add-int/2addr v0, p0

    .line 178
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 179
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 180
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p0

    if-nez p0, :cond_1

    int-to-float p0, v0

    .line 181
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskViewRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr p0, v0

    float-to-int v0, p0

    :cond_1
    return v0
.end method

.method protected abstract getMenuCount()I
.end method

.method protected getRightBound(I)I
    .locals 0

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 190
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p0

    if-eqz p0, :cond_1

    int-to-float p0, p1

    .line 191
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskViewRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-int p1, p0

    :cond_1
    return p1
.end method

.method public getVerticalMinMarginToBorder()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mVerticalMinMarginToBorder:I

    return p0
.end method

.method public init(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    .line 46
    iput-object p2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    .line 47
    iput p3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    .line 48
    iput p4, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mVerticalMinMarginToBorder:I

    .line 49
    iput p5, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mHorizontalMinMarginToBorder:I

    .line 50
    iget-object p1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RelativePosition;->resetPosition()V

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewEffectRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewEffectRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getVerticalMinMarginToBorder()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getVerticalMinMarginToBorder()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getVerticalMinMarginToBorder()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getVerticalMinMarginToBorder()I

    move-result p0

    add-int/2addr p5, p0

    .line 54
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public layoutMenuItem()V
    .locals 11

    .line 71
    invoke-direct {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcMenuViewRelativeToTaskViewPositionInVertical()V

    .line 72
    invoke-direct {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPivotY()I

    move-result v6

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcMenuViewPosY()[I

    move-result-object v7

    .line 75
    iget-boolean v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mCanChangeMenuPositionWhenCovered:Z

    invoke-direct {p0, v0, v7}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPosX(Z[I)[I

    move-result-object v8

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPivotX()I

    move-result v9

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMenuViewRelativeToTaskViewPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuViewPositionCalculator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v10, v0

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getMenuCount()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViews:[Landroid/view/View;

    aget-object v1, v0, v10

    aget v2, v8, v10

    aget v3, v7, v10

    move-object v0, p0

    move v4, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->layoutMenuView(Landroid/view/View;IIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public layoutPinView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070622

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 96
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    .line 98
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->isNeedFixCoordinate(Lcom/miui/home/recents/views/RecentsContainer;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 101
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    sub-int v2, p0, v1

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int p0, v2, p0

    .line 105
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 106
    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    .line 107
    invoke-virtual {p1, v0, p0, p2, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public setPosInHorizontal(IZ)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    .line 63
    iput-boolean p2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mCanChangeMenuPositionWhenCovered:Z

    return-void
.end method
