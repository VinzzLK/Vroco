.class public Lcom/miui/home/launcher/ThumbnailContainerBorder;
.super Lcom/miui/home/launcher/AutoLayoutThumbnailItem;
.source "ThumbnailContainerBorder.java"

# interfaces
.implements Lcom/miui/home/launcher/anim/IBackgroundController;


# instance fields
.field private final mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

.field private mThumbnailContainer:Lcom/miui/home/launcher/ThumbnailContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->drawBackground(Landroid/graphics/Canvas;)V

    .line 36
    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getBackgroundAnimController()Lcom/miui/home/launcher/anim/BackgroundAnimController;
    .locals 4

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0606b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;-><init>(II)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070751

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->setBgRadius(F)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumbnailContainer()Lcom/miui/home/launcher/ThumbnailContainer;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mThumbnailContainer:Lcom/miui/home/launcher/ThumbnailContainer;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->onFinishInflate()V

    const v0, 0x7f0a03b6

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ThumbnailContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mThumbnailContainer:Lcom/miui/home/launcher/ThumbnailContainer;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->updateColor()V

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

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    :cond_0
    return-void
.end method
