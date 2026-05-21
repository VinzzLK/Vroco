.class public Lcom/miui/home/launcher/LayoutPreviewBorder;
.super Lcom/miui/home/launcher/ThumbnailContainerBorder;
.source "LayoutPreviewBorder.java"


# instance fields
.field private mButtonBg:Landroid/widget/ImageView;

.field private mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

.field private mLayoutPreviewBgAnim:Lcom/miui/home/launcher/LayoutPreviewBgAnim;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ThumbnailContainerBorder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public autoChangeBgView()Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewBorder;->mButtonBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LayoutPreviewBorder;->drawBackground(Landroid/graphics/Canvas;)V

    .line 35
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewBorder;->mLayoutPreviewBgAnim:Lcom/miui/home/launcher/LayoutPreviewBgAnim;

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getCurType()Lcom/miui/home/launcher/anim/BackgroundType;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewBorder;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->onFinishInflate()V

    const v0, 0x7f0a00d0

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBorder;->mButtonBg:Landroid/widget/ImageView;

    .line 25
    new-instance v0, Lcom/miui/home/launcher/LayoutPreviewBgAnim;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;-><init>(Lcom/miui/home/launcher/LayoutPreviewBorder;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewBorder;->mLayoutPreviewBgAnim:Lcom/miui/home/launcher/LayoutPreviewBgAnim;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewBorder;->mLayoutPreviewBgAnim:Lcom/miui/home/launcher/LayoutPreviewBgAnim;

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->updateColor()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewBorder;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewBorder;->mLayoutPreviewBgAnim:Lcom/miui/home/launcher/LayoutPreviewBgAnim;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LayoutPreviewBgAnim;->updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    :cond_0
    return-void
.end method
