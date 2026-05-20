.class public Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;
.super Ljava/lang/Object;
.source "PopupWindowStrategy.java"

# interfaces
.implements Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getXInWindowAlightRight(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .locals 6

    .line 110
    iget-object p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 111
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 112
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 113
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 114
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 115
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v4

    if-le p0, v5, :cond_0

    sub-int p0, v3, v4

    :cond_0
    sub-int/2addr p0, v2

    .line 119
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int v5, v0, v1

    if-ge p0, v5, :cond_1

    add-int p0, v0, v1

    :cond_1
    add-int v0, p0, v2

    sub-int v1, v3, v4

    if-le v0, v1, :cond_2

    sub-int/2addr v3, v4

    sub-int v2, v3, p0

    .line 125
    :cond_2
    iput v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    return p0
.end method

.method private getXInWindowAlignCenterHorizontal(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .locals 7

    .line 62
    iget-object p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 63
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 64
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 65
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    .line 67
    div-int/lit8 v3, v2, 0x2

    sub-int/2addr p0, v3

    add-int v3, p0, v2

    .line 69
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, v4, v5

    if-le v3, v6, :cond_0

    sub-int p0, v4, v5

    sub-int/2addr p0, v2

    .line 74
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int v3, v0, v1

    if-ge p0, v3, :cond_1

    add-int p0, v0, v1

    :cond_1
    add-int v0, p0, v2

    sub-int v1, v4, v5

    if-le v0, v1, :cond_2

    sub-int/2addr v4, v5

    sub-int v2, v4, p0

    .line 83
    :cond_2
    iput v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    return p0
.end method

.method private getXInWindowAlignLeft(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .locals 6

    .line 88
    iget-object p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 89
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 90
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 91
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 92
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 93
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int v5, v3, v4

    if-ge p0, v5, :cond_0

    add-int p0, v3, v4

    :cond_0
    add-int/2addr p0, v2

    .line 97
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v1

    if-le p0, v5, :cond_1

    sub-int p0, v0, v1

    :cond_1
    sub-int v0, p0, v2

    add-int v1, v3, v4

    if-ge v0, v1, :cond_2

    add-int v0, v3, v4

    sub-int/2addr p0, v0

    .line 104
    iput p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    :cond_2
    return v0
.end method

.method private getYInWindowAlignBottom(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .locals 11

    .line 175
    iget-object p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 176
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 177
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 178
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 179
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    .line 180
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int v6, v4, v5

    if-ge v3, v6, :cond_0

    add-int v3, v4, v5

    :cond_0
    add-int v6, v3, v2

    .line 183
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v7, v8

    if-ge v6, v9, :cond_1

    return v3

    .line 187
    :cond_1
    iget v6, p0, Landroid/graphics/Rect;->top:I

    sub-int v9, v6, v4

    sub-int v10, v7, v6

    if-lt v10, v9, :cond_3

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    .line 191
    iget p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v7, p0, :cond_2

    .line 192
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v3

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 193
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    sub-int v3, p0, v7

    .line 195
    :cond_2
    iput v7, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    goto :goto_0

    :cond_3
    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    .line 197
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 198
    iget v4, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v3, v4, :cond_4

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 201
    :cond_4
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 202
    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int v3, p0, v3

    :goto_0
    return v3
.end method

.method private getYInWindowAlignTop(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .locals 11

    .line 142
    iget-object p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 143
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 144
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 145
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 146
    iget v3, p0, Landroid/graphics/Rect;->top:I

    .line 147
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int v6, v4, v5

    if-ge v3, v6, :cond_0

    add-int v6, v4, v5

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    add-int v7, v6, v2

    .line 150
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v8, v9

    if-ge v7, v10, :cond_1

    return v6

    :cond_1
    sub-int v7, v3, v4

    sub-int v10, v8, v3

    if-lt v10, v7, :cond_3

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    .line 158
    iget p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v8, p0, :cond_2

    .line 159
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v3

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 160
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    sub-int v6, p0, v8

    .line 162
    :cond_2
    iput v8, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    goto :goto_1

    :cond_3
    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 165
    iget v4, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v3, v4, :cond_4

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 168
    :cond_4
    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int v6, p0, v3

    .line 169
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    :goto_1
    return v6
.end method


# virtual methods
.method public getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .locals 2

    .line 50
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->layoutDirection:I

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getXInWindowAlignLeft(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p0

    return p0

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getXInWindowAlightRight(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p0

    return p0

    .line 53
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getXInWindowAlignCenterHorizontal(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p0

    return p0
.end method

.method public getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .locals 2

    .line 131
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getYInWindowAlignBottom(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p0

    return p0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getYInWindowAlignTop(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p0

    return p0
.end method

.method public isNeedScroll(ILmiuix/popupwidget/internal/strategy/PopupWindowSpec;)Z
    .locals 0

    .line 44
    iget p0, p2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    if-gt p0, p1, :cond_1

    .line 45
    iget p1, p2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public measureContentSize(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V
    .locals 10

    .line 10
    iget-object p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    if-eqz p0, :cond_3

    .line 12
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    .line 13
    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    .line 14
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_1

    .line 18
    aget-object v7, p0, v4

    aget v7, v7, v3

    .line 19
    aget-object v8, p0, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    if-le v7, v0, :cond_0

    move v7, v0

    .line 23
    :cond_0
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 26
    :cond_1
    iput v5, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    if-le v5, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v5

    .line 30
    :goto_1
    iput v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 32
    iget p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinWidth:I

    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 33
    iput p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentWidth:I

    iput p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    goto :goto_2

    .line 35
    :cond_3
    iget-object p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentViewBounds:Landroid/graphics/Rect;

    .line 36
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    :goto_2
    return-void
.end method
