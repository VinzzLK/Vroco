.class Lmiuix/appcompat/widget/HyperPopupWindow$SecondaryPopupWindowStrategy;
.super Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecondaryPopupWindowStrategy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 854
    invoke-direct {p0}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .locals 4

    .line 857
    iget-object p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 858
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 859
    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 860
    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int v2, p0, v1

    .line 862
    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_0

    sub-int p0, v3, v1

    move v2, v3

    .line 866
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ge p0, v0, :cond_1

    move p0, v0

    :cond_1
    sub-int/2addr v2, p0

    .line 869
    iput v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    return p0
.end method

.method public getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .locals 4

    .line 875
    iget-object p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 876
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 877
    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 878
    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int v2, p0, v1

    .line 879
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    return p0

    :cond_0
    sub-int p0, v3, v1

    .line 884
    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p0, v0, :cond_1

    sub-int/2addr v3, v0

    .line 886
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    move p0, v0

    :cond_1
    return p0
.end method
