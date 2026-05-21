.class public interface abstract Lcom/miui/home/launcher/HostViewContainer;
.super Ljava/lang/Object;
.source "HostViewContainer.java"


# virtual methods
.method public abstract clear()V
.end method

.method public getCornerRadius()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getHostView()Landroid/view/View;
.end method

.method public getHostViewBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 3

    .line 29
    invoke-interface {p0}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    .line 35
    iput v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget v0, v0, v2

    .line 36
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 38
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public abstract getWidgetContainer()Landroid/view/View;
.end method

.method public abstract getWidgetId()I
.end method
