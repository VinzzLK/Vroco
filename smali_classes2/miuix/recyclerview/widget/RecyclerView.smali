.class public Lmiuix/recyclerview/widget/RecyclerView;
.super Landroidx/recyclerview/widget/SpringRecyclerView;
.source "RecyclerView.java"


# instance fields
.field private final mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    sget v0, Landroidx/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    invoke-direct {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 32
    new-instance p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    invoke-direct {p1, p0}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;-><init>(Lmiuix/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->touchEvent(Landroid/view/MotionEvent;)V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public fling(II)Z
    .locals 3

    .line 40
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    move p1, v2

    .line 43
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    move p2, v2

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    return v2

    .line 50
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p0

    return p0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 82
    iget-object p0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->onFocusChange(Z)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onScrollStateChanged(I)V

    .line 74
    iget-object v0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->scrollState(Lmiuix/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 3

    .line 63
    iget-object v0, p0, Lmiuix/recyclerview/widget/RecyclerView;->mGetSpeedForDynamicRefreshRate:Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->getDragFlingVelocityX()I

    move-result v1

    .line 66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->getDragFlingVelocityY()I

    move-result v2

    .line 64
    invoke-virtual {v0, p1, p2, v1, v2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->calculateSpeed(IIII)V

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    return-void
.end method
