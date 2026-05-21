.class public Lcom/miui/home/launcher/AutoLayoutThumbnailItem;
.super Lcom/miui/home/launcher/OnLongClickWrapper;
.source "AutoLayoutThumbnailItem.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field public contentTitle:Landroid/widget/TextView;

.field public editMenuContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public icon:Lcom/miui/home/launcher/ThumbnailIcon;

.field private mBackgroundAnimController:Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;

.field private mContext:Landroid/content/Context;

.field private mIsAutoLayoutAnimating:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mSkipNextAutoLayoutAnimation:Z

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/OnLongClickWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mIsEnableAutoLayoutAnimation:Z

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public autoChangeBgView()Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->editMenuContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->drawBackground(Landroid/graphics/Canvas;)V

    .line 60
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 109
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    return p0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01f8

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ThumbnailIcon;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->icon:Lcom/miui/home/launcher/ThumbnailIcon;

    const v0, 0x7f0a03ba

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0110

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    const v0, 0x7f0a016b

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->editMenuContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    new-instance v0, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;-><init>(Lcom/miui/home/launcher/AutoLayoutThumbnailItem;)V

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->onWallpaperColorChanged()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 134
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setTitleColorMode(ZLandroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setTitleColorMode(ZLandroid/widget/TextView;)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setIsAutoLayoutAnimating(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTitleColorMode(ZLandroid/widget/TextView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mContext:Landroid/content/Context;

    const v1, 0x7f1103ca

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    .line 147
    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowDy()F

    move-result p2

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f060126

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 146
    invoke-virtual {p1, v0, v1, p2, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mContext:Landroid/content/Context;

    const v0, 0x7f1103c9

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 151
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result p2

    iget-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    .line 152
    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 153
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f060125

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 151
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method public updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/anim/EditingEntryThumbnailBgAnim;->updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    :cond_0
    return-void
.end method
