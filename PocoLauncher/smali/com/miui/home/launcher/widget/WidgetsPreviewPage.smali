.class public Lcom/miui/home/launcher/widget/WidgetsPreviewPage;
.super Landroid/widget/LinearLayout;
.source "WidgetsPreviewPage.java"


# instance fields
.field private mBgMask:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

.field private mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

.field private widgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0606d7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result p1

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    .line 35
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)Lcom/miui/home/launcher/widget/WidgetDetailsView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-object p0
.end method


# virtual methods
.method public onExitAnimationEnd()V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAddWidgetEnable(Z)V

    :cond_0
    return-void
.end method

.method public onExitAnimationStart()V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAddWidgetEnable(Z)V

    .line 111
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInLayoutPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingEntryView()Lcom/miui/home/launcher/EditingEntryThumbnailView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->hideAllOutLine()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a042e

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    const v0, 0x7f0a0426

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetDetailsView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    .line 45
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;-><init>(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->widgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    .line 59
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->widgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V

    const v0, 0x7f0a042c

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/view/LauncherActionBar;

    const v0, 0x7f10054a

    .line 63
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/LauncherActionBar;->setTitle(I)V

    return-void
.end method

.method public resetAdapter()V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->resetAdapter()V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setDragController(Lcom/miui/home/launcher/DragController;)V

    return-void
.end method

.method public setScreenType(I)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setScreenType(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    goto :goto_1

    .line 80
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getFastBlurColor(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->addTwoColor(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 86
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAddWidgetEnable(Z)V

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 93
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->releaseMemory()V

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
