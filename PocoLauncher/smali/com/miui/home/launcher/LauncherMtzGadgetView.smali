.class public Lcom/miui/home/launcher/LauncherMtzGadgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "LauncherMtzGadgetView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;


# instance fields
.field private mIsAutoLayoutAnimating:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mMtzGadget:Lcom/miui/home/launcher/gadget/Gadget;

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method


# virtual methods
.method public doSetFrame(IIII)Z
    .locals 0

    .line 81
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    return p0
.end method

.method public getContainer()Lcom/miui/home/launcher/LauncherWidgetContainerView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    return-object p0
.end method

.method getGadget()Lcom/miui/home/launcher/gadget/Gadget;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mMtzGadget:Lcom/miui/home/launcher/gadget/Gadget;

    return-object p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 136
    instance-of v0, p0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 137
    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object p0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a0425

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a0203

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onWallpaperColorChanged()V

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mMtzGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onWallpaperColorChanged()V

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method setGadget(Lcom/miui/home/launcher/gadget/Gadget;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mMtzGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    :cond_1
    :goto_0
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

    .line 97
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->updateSizeOnIconSizeChanged()V

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->updateSizeOnIconSizeChanged()V

    :cond_0
    return-void
.end method
