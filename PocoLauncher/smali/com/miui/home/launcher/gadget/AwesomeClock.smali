.class public Lcom/miui/home/launcher/gadget/AwesomeClock;
.super Lcom/miui/home/launcher/gadget/AdvancedGadget;
.source "AwesomeClock.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/Clock$ClockStyle;
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;


# instance fields
.field private mAwesomeView:Landroid/view/View;

.field private mComponentCode:Ljava/lang/String;

.field private mElementContext:Ljava/lang/Object;

.field private mIsAutoLayoutAnimating:Z

.field private mMamlConfig:Ljava/lang/String;

.field private mMamlPath:Ljava/lang/String;

.field private mRoot:Ljava/lang/Object;

.field private mUpdateInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private setResizeRadio()V
    .locals 4

    .line 192
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_0

    const-string v0, "AwesomeClock"

    const-string/jumbo v1, "tag is not item info"

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 196
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 197
    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v2

    mul-int/2addr v2, v1

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v3

    mul-int/2addr v3, v0

    .line 200
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMamlWidgetScaleRatio(IIII)F

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MamlUtils;->setResizeRadio(Ljava/lang/Object;F)V

    return-void
.end method

.method private updateCellInfo()V
    .locals 4

    .line 259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 264
    iget-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 265
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "screenIndex"

    invoke-static {v2, v3, v0}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cellX"

    invoke-static {v0, v3, v2}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget v0, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cellY"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->cleanUpView(Ljava/lang/Object;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setClockButtonListener(Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    return-void
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateInterval()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    iget p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0x3e8

    :goto_1
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

.method public initConfig(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/launcher/utils/MamlUtils;->createScreenContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    return-void
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 280
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public notifyColorChanged()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 245
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    .line 246
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->updateCellInfo()V

    :cond_0
    return-void
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->getManifestRoot(Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 152
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    :try_start_0
    const-string/jumbo v1, "update_interval"

    .line 157
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v1, 0xea60

    .line 159
    iput v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    .line 162
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :catch_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->createScreenElementRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 167
    iget v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setDefaultFramerate(Ljava/lang/Object;F)V

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlConfig:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setConfig(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setScaleByDensity(Ljava/lang/Object;Z)V

    .line 170
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setResizeRadio()V

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->load(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    const/4 v1, 0x0

    .line 176
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setFocusable(Landroid/view/View;Z)V

    .line 177
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 180
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mComponentCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "__config_code"

    invoke-static {v1, v2, v0}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlPath:Ljava/lang/String;

    const-string v2, "__config_path"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v1, "ro.miui.region"

    invoke-static {v1}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__rom_region"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->notifyColorChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onEditDisable()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    const-string v1, "is_editing_mode"

    const-wide/16 v2, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method

.method public onEditNormal()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    const-string v1, "is_editing_mode"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, p0, v1, v2, v3}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 58
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 64
    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "resume"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->loadConfig(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 66
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 69
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 90
    iget-object p3, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string p4, "pivotX"

    invoke-static {p3, p4}, Lcom/miui/launcher/utils/MamlUtils;->getRawAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 91
    iget-object p4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v0, "pivotY"

    invoke-static {p4, v0}, Lcom/miui/launcher/utils/MamlUtils;->getRawAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    .line 95
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move p3, v0

    .line 96
    :goto_0
    :try_start_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    move-object v3, p4

    move p4, p3

    move-object p3, v3

    goto :goto_1

    :catch_1
    move-exception p3

    move p4, v0

    .line 98
    :goto_1
    invoke-virtual {p3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move p3, p4

    :cond_1
    move p4, v0

    .line 100
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    cmpl-float v2, p3, v0

    if-eqz v2, :cond_2

    int-to-float p1, p1

    mul-float/2addr p1, p3

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-virtual {v1, p1}, Landroid/view/View;->setPivotX(F)V

    :cond_2
    cmpl-float p1, p4, v0

    if-eqz p1, :cond_3

    int-to-float p1, p2

    mul-float/2addr p1, p4

    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-virtual {v1, p0}, Landroid/view/View;->setPivotY(F)V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 0

    const/4 p0, 0x0

    .line 220
    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->setRenderThreadPause(Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    const/4 p0, 0x1

    .line 225
    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->setRenderThreadPause(Z)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->notifyColorChanged()V

    return-void
.end method

.method public setClockButtonListener(Lcom/miui/launcher/views/MamlButtonActionListener;)Z
    .locals 1

    .line 204
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "clock_button"

    .line 207
    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MamlUtils;->addListenerOnElement(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    move-result p0

    return p0
.end method

.method public setConfigParas(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mComponentCode:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlPath:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setIsAutoLayoutAnimating(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setMamlConfigPath(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlConfig:Ljava/lang/String;

    return-void
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->requestUpdate(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateColor(I)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string p1, "applied_light_wallpaper"

    .line 253
    invoke-static {v0, p0, p1, v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    :cond_1
    return-void
.end method
