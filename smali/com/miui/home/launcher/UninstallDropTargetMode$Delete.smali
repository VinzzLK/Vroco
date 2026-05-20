.class public Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;
.super Lcom/miui/home/launcher/UninstallDropTargetMode;
.source "UninstallDropTargetMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDropTargetMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delete"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$DY_MLDUteF6jTWIG_7nx2e1xVFU(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;->lambda$onClick$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDropTargetMode;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onClick$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 167
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getIconBackgroundResId()I
    .locals 0

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080307

    goto :goto_0

    :cond_0
    const p0, 0x7f080308

    :goto_0
    return p0
.end method

.method public getIconResId()I
    .locals 0

    const p0, 0x7f080303

    return p0
.end method

.method public getIconResIdLightWallpaper()I
    .locals 0

    const p0, 0x7f080303

    return p0
.end method

.method public getLabelResId()I
    .locals 0

    const p0, 0x7f1004d7

    return p0
.end method

.method public onClick(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 165
    new-instance p0, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 166
    invoke-static {p2, p0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->filterValidatedInfos(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    .line 165
    invoke-static {p1, p0, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteWithBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Z)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z
    .locals 8

    .line 172
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 173
    iput-boolean v1, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mNeedSetTitle:Z

    .line 175
    :cond_0
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 176
    invoke-static {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 177
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->setIgnoreSearchLayoutTranY()V

    .line 178
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragView;->setForceFadeOut()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->dropEnd(Lcom/miui/home/launcher/Launcher;)V

    return v3

    .line 182
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v2

    .line 183
    instance-of v4, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v4, :cond_3

    .line 184
    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 185
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 186
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ShortcutInfo;

    .line 187
    invoke-virtual {p1, v5}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 188
    invoke-static {p1, v5}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_2
    const-string v4, "folder"

    .line 191
    invoke-static {v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDelete(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "shortcut"

    .line 193
    invoke-static {v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDelete(Ljava/lang/String;)V

    .line 196
    :goto_1
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    xor-int/2addr v4, v1

    .line 197
    invoke-static {v0, p1, v4}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1, p3, v2}, Lcom/miui/home/launcher/UninstallDropTargetMode;->bindApplication(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v3

    goto :goto_2

    .line 199
    :cond_4
    instance-of v4, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v5, v4, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v5, :cond_5

    const/4 v2, 0x2

    new-array v5, v2, [I

    .line 201
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p3

    .line 202
    invoke-virtual {p3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v5, v3

    .line 203
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v2

    add-int/2addr v6, v7

    aput v6, v5, v3

    aget v6, v5, v1

    .line 204
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/2addr p3, v2

    add-int/2addr v6, p3

    aput v6, v5, v1

    .line 205
    iput v1, v4, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->deleteWidgetWay:I

    .line 206
    invoke-static {p1, v4, v5, v3}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteMiuiWidgetWithBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;[IZ)V

    goto :goto_2

    .line 208
    :cond_5
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    .line 210
    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->dropEnd(Lcom/miui/home/launcher/Launcher;)V

    if-nez v3, :cond_6

    .line 213
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 216
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return v1
.end method
