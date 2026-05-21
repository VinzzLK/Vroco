.class public Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;
.super Lcom/miui/home/launcher/UninstallDropTargetMode;
.source "UninstallDropTargetMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDropTargetMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uninstall"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$AQTtWoiZvxVt9lwSAaBvVCPsBbo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;->lambda$onClick$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDropTargetMode;-><init>()V

    return-void
.end method

.method private bindHybirdApp(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 134
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/UninstallDialog;->bindItem(Lcom/miui/home/launcher/DragObject;)Z

    .line 135
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->removeDragItem(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onClick$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 1

    .line 94
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

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


# virtual methods
.method public getIconBackgroundResId()I
    .locals 0

    .line 73
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

    const p0, 0x7f080309

    return p0
.end method

.method public getIconResIdLightWallpaper()I
    .locals 0

    const p0, 0x7f080309

    return p0
.end method

.method public getLabelResId()I
    .locals 0

    const p0, 0x7f100195

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

    .line 93
    new-instance p0, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p2, p0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->filterValidatedInfos(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->showDialog(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z
    .locals 5

    .line 100
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 101
    iput-boolean v1, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mNeedSetTitle:Z

    .line 103
    :cond_0
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->canBeDrop()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 105
    invoke-static {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez v2, :cond_2

    .line 113
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1, p3, v0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->bindApplication(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v3

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/hybrid/HybridController;->trackDelete(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 116
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;->bindHybirdApp(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;)Z

    move-result v3

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    .line 122
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->dropEnd(Lcom/miui/home/launcher/Launcher;)V

    if-nez v3, :cond_4

    .line 125
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 128
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 129
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 106
    :cond_5
    :goto_1
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragView;->setForceFadeOut()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->dropEnd(Lcom/miui/home/launcher/Launcher;)V

    return v3
.end method
