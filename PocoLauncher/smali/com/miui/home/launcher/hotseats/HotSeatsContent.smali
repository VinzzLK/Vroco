.class public interface abstract Lcom/miui/home/launcher/hotseats/HotSeatsContent;
.super Ljava/lang/Object;
.source "HotSeatsContent.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/IconContainer;
.implements Lcom/miui/home/launcher/IShortcutIcon$ShortcutIconContainer;


# virtual methods
.method public acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 40
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->canAcceptByHotSeats()Z

    move-result p0

    return p0
.end method

.method public abstract addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
.end method

.method public findViewWithTag(Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;
    .locals 1

    .line 96
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract finishLoading()V
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x65

    return-wide v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getRebindTargetView(Landroid/view/View;)Landroid/view/View;
.end method

.method public getTagAs(Landroid/view/View;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 120
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getUserPresentAnimationChildList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public isDropEnabled()Z
    .locals 0

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShow()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isIgnorableViewType(Landroid/view/View;)Z
    .locals 0

    .line 129
    instance-of p0, p1, Lcom/miui/home/launcher/hotseats/HotSeatsViewRebindInfo;

    if-eqz p0, :cond_1

    instance-of p0, p1, Lcom/miui/home/launcher/PairShortcutIcon;

    if-nez p0, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNeedBlockLongPress(Landroid/view/View;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/hotseats/HotSeats;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->isClosingAnimRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 141
    :cond_1
    invoke-virtual {p3}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    .line 145
    :cond_2
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result p3

    if-eqz p3, :cond_3

    return v1

    .line 148
    :cond_3
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p3

    if-eqz p3, :cond_4

    return v1

    .line 151
    :cond_4
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result p3

    if-eqz p3, :cond_5

    return v1

    .line 154
    :cond_5
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isQuickCallScreenShowing()Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    .line 157
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p2, :cond_7

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 160
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->shouldDisableLongPressInHotSeat()Z

    move-result p1

    if-eqz p1, :cond_7

    move p0, v1

    :cond_7
    :goto_0
    return p0
.end method

.method public abstract isSeatsFull()Z
.end method

.method public abstract keepDataConsistent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public rebindItemInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 100
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 102
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 104
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getRebindTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    const-class v3, Lcom/miui/home/launcher/ItemInfo;

    invoke-interface {p0, v2, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getTagAs(Landroid/view/View;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 109
    invoke-interface {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->isIgnorableViewType(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 112
    :cond_3
    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/hotseats/HotSeatsViewRebindInfo;

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v4, v3, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsViewRebindInfo;->rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public abstract refreshSearchIcon()V
.end method

.method public abstract removeAllDesktopIcons()V
.end method

.method public abstract removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
.end method

.method public abstract removeShortcuts(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 0

    return-void
.end method

.method public abstract startLoading()V
.end method

.method public updateFolderMessageWhenDrag(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 90
    instance-of p0, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    :cond_0
    return-void
.end method

.method public abstract updateHotSeatsListIconSize()V
.end method

.method public abstract updateIconSize()V
.end method
