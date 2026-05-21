.class public Lcom/miui/launcher/views/LauncherViewGroup;
.super Landroid/view/ViewGroup;
.source "LauncherViewGroup.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/miui/launcher/views/LauncherViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/launcher/views/LauncherViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 29
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 30
    iput-object p1, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected correctFrame(IIII)Landroid/graphics/Rect;
    .locals 0

    .line 59
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->ensureChildrenVisibility()V

    .line 86
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchGetDisplayList()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->ensureChildrenVisibility()V

    .line 80
    invoke-super {p0}, Landroid/view/ViewGroup;->dispatchGetDisplayList()V

    return-void
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method protected ensureChildrenVisibility()V
    .locals 0

    return-void
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    .line 15
    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onSetFrame(IIII)V
    .locals 0

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected setFrame(IIII)Z
    .locals 5

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->correctFrame(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 48
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/launcher/views/LauncherViewGroup;->onSetFrame(IIII)V

    .line 49
    invoke-virtual {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->overrideSetFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->doSetFrame(IIII)Z

    move-result p0

    return p0

    .line 52
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setFrame(IIII)Z

    move-result p0

    return p0
.end method
