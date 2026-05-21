.class public abstract Lcom/miui/home/launcher/gadget/Gadget;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "Gadget.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/common/ViewPropertyBackuper;
.implements Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;
.implements Lcom/miui/home/launcher/interfaces/IEditable;
.implements Lcom/miui/home/launcher/WidgetSizeUpdater;
.implements Lcom/miui/home/launcher/IItemInfo;
.implements Lcom/miui/home/launcher/UpdateIconSize;


# instance fields
.field private mIsCanNotChangeCanvasAlpha:Z

.field private mIsDrawingInThumbnailView:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field protected mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTrackViewRunnable:Ljava/lang/Runnable;

.field private mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mSkipNextAutoLayoutAnimation:Z

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsEnableAutoLayoutAnimation:Z

    .line 36
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsDrawingInThumbnailView:Z

    .line 37
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsCanNotChangeCanvasAlpha:Z

    .line 38
    new-instance p1, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;-><init>(Lcom/miui/home/launcher/gadget/Gadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    .line 40
    new-instance p1, Lcom/miui/home/launcher/gadget/Gadget$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/gadget/Gadget$1;-><init>(Lcom/miui/home/launcher/gadget/Gadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mTrackViewRunnable:Ljava/lang/Runnable;

    .line 49
    new-instance p1, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsEnableAutoLayoutAnimation:Z

    .line 36
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsDrawingInThumbnailView:Z

    .line 37
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsCanNotChangeCanvasAlpha:Z

    .line 38
    new-instance p1, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;-><init>(Lcom/miui/home/launcher/gadget/Gadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    .line 40
    new-instance p1, Lcom/miui/home/launcher/gadget/Gadget$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/gadget/Gadget$1;-><init>(Lcom/miui/home/launcher/gadget/Gadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mTrackViewRunnable:Ljava/lang/Runnable;

    .line 54
    new-instance p1, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 107
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public backupProperty()V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->backupProperty()V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->buildDrawingCache(Z)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsCanNotChangeCanvasAlpha:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    goto :goto_0

    .line 118
    :cond_0
    instance-of v0, p2, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptViewGroup;

    if-eqz v0, :cond_1

    .line 120
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptViewGroup;->setNoWordAdapter(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)V

    .line 121
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsDrawingInThumbnailView:Z

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/util/noword/NoWordAutoAdaptViewGroup;->setIsDrawingInThumbnailView(Z)V

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isSkipDraw(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 238
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 239
    instance-of v0, p0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    .line 240
    check-cast p0, Lcom/miui/home/launcher/gadget/GadgetInfo;

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

    .line 153
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mSkipNextAutoLayoutAnimation:Z

    return p0
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

.method public invalidateViewWhenEditModeChange()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method public abstract onAdded()V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDeleted()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onEditDisable()V
.end method

.method public abstract onEditNormal()V
.end method

.method public onPause()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mTrackViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mTrackViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public performHapticFeedback(II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 139
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z

    move-result p0

    return p0
.end method

.method public restoreProperty()V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->restoreProperty()V

    return-void
.end method

.method public setCanNotChangeCanvasAlpha(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsCanNotChangeCanvasAlpha:Z

    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 162
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    return p0
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

.method public abstract synthetic setIsAutoLayoutAnimating(Z)V
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Gadget;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method protected trackClick()V
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 193
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackGadgetClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected trackView()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackGadgetView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 0

    .line 233
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public updateWidgetSize()V
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    return-void
.end method
