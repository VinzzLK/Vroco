.class public Lcom/miui/home/launcher/search/ContentSearchEdgeEffect;
.super Lcom/miui/home/launcher/search/SearchEdgeEffect;
.source "ContentSearchEdgeEffect.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/search/SearchEdgeEffect;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V

    const p2, 0x7f0600f1

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setIconColor(I)V

    return-void
.end method

.method private launchGlobalBrowser(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 49
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->openContentCenterBySlideUp(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method canShowEffect()Z
    .locals 1

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)Z
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method getDrawableResource()I
    .locals 0

    const p0, 0x7f080285

    return p0
.end method

.method public bridge synthetic getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isRunningInSoscSplitOrSmallWindow()Z
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->isRunningInSoscSplitOrSmallWindow()Z

    move-result p0

    return p0
.end method

.method public onDarkModeChanged(Z)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setIconColor(I)V

    return-void
.end method

.method public bridge synthetic onPull(FI)V
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onPull(FI)V

    return-void
.end method

.method public bridge synthetic onRelease(I)Z
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onRelease(I)Z

    move-result p0

    return p0
.end method

.method open()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/ContentSearchEdgeEffect;->launchGlobalBrowser(Lcom/miui/home/launcher/Launcher;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic setCurveBottom(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 13
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setCurveBottom(F)V

    return-void
.end method

.method public bridge synthetic setCurveTop(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 13
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setCurveTop(F)V

    return-void
.end method
