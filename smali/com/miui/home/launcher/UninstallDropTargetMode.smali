.class public abstract Lcom/miui/home/launcher/UninstallDropTargetMode;
.super Ljava/lang/Object;
.source "UninstallDropTargetMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;,
        Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;
    }
.end annotation


# instance fields
.field protected mNeedSetTitle:Z

.field mStartUninstallDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$_E_R9Gi-j3UoyFZHXP43IlFibFo()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/UninstallDropTargetMode;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mNeedSetTitle:Z

    .line 31
    sget-object v0, Lcom/miui/home/launcher/UninstallDropTargetMode$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/UninstallDropTargetMode$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static filterValidatedInfos(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 65
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 66
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$new$0()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->startUninstallDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindApplication(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 3

    .line 39
    iget-object p0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p0

    iget-object v1, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p0

    invoke-virtual {p0, p2, p3, v1}, Lcom/miui/home/launcher/UninstallDialog;->removeDragItem(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;Z)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p0

    invoke-virtual {p0, p2, p3, v0}, Lcom/miui/home/launcher/UninstallDialog;->removeDragItem(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/UninstallDialog;->bindItem(Lcom/miui/home/launcher/DragObject;)Z

    return v1

    .line 40
    :cond_2
    :goto_0
    invoke-static {p1, p3}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :goto_1
    return v0
.end method

.method public dropEnd(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mNeedSetTitle:Z

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialog;->setTitle()V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDropTargetMode;->mNeedSetTitle:Z

    return-void
.end method

.method public abstract getIconBackgroundResId()I
.end method

.method public abstract getIconResId()I
.end method

.method public abstract getIconResIdLightWallpaper()I
.end method

.method public abstract getLabelResId()I
.end method

.method public abstract onClick(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z
.end method
