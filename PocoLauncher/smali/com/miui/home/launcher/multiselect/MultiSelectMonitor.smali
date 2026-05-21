.class public Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;
    }
.end annotation


# static fields
.field private static volatile sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# instance fields
.field private mCellLayoutMessageHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

.field private mCheckedShortcutIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/DragSource;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentScreenIdHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

.field private mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

.field private mEditModeState:I

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mFolderStateChangedHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

.field private mIsDefaultScreenPreviewVisible:Z

.field private mIsDragging:Z

.field private mIsMenuVisible:Z

.field private mIsWidgetsPreviewLayoutVisible:Z

.field private mLauncherBottomMenuHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

.field private mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

.field private mWidgetsPreviewHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;


# direct methods
.method public static synthetic $r8$lambda$hWNwZAy3ABikEaRAGRpY_xk0Ti4(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->lambda$registerEventBusHandler$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mfTp4VEFW1nl62tHNQ4isRmdigI(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->lambda$unregisterEventBusHandler$1(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    .line 62
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCurrentScreenIdHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

    .line 63
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCellLayoutMessageHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

    .line 64
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mFolderStateChangedHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

    .line 65
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mLauncherBottomMenuHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

    .line 66
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

    .line 67
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mWidgetsPreviewHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;

    .line 298
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->registerEventBusHandler()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unregisterEventBusHandler()V

    return-void
.end method

.method static synthetic access$1202(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDefaultScreenPreviewVisible:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;ZZ)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    return p0
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateLayoutPreviewTopMenuContainerState()V

    return-void
.end method

.method private canShowGroupContainer()Z
    .locals 1

    .line 369
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_1

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private clearAllCheckedItemsOnDrag()V
    .locals 2

    .line 250
    new-instance v0, Lcom/miui/home/icon/CheckedStateChangeReason;

    const-string v1, "event_drag"

    invoke-direct {v0, v1}, Lcom/miui/home/icon/CheckedStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems(Lcom/miui/home/icon/CheckedStateChangeReason;)V

    return-void
.end method

.method private forEachHandler(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mFolderStateChangedHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCellLayoutMessageHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCurrentScreenIdHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mLauncherBottomMenuHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mWidgetsPreviewHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 295
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
    .locals 2

    .line 70
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    .line 75
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 75
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 81
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    return-object v0
.end method

.method private isGroupContainerEnable(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->checkedAllItemsInOneFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->canScreenMakeRom()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->canShowGroupContainer()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$registerEventBusHandler$0(Ljava/lang/Object;)V
    .locals 1

    .line 277
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$unregisterEventBusHandler$1(Ljava/lang/Object;)V
    .locals 1

    .line 285
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private needShowGroupContainerOrFinishContainer(Lcom/miui/home/launcher/Launcher;)Z
    .locals 4

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needShowGroupContainerOrFinishContainer, mEditModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsWidgetsPreviewLayoutVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDefaultScreenPreviewVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDefaultScreenPreviewVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMenuVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsMenuVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUninstallDialogShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDragging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.MultiSelectMonitor"

    .line 372
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getEditingEntryView()Lcom/miui/home/launcher/EditingEntryThumbnailView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->wallpaperEffectIsShow()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 383
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDefaultScreenPreviewVisible:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsMenuVisible:Z

    if-eqz v2, :cond_2

    .line 386
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isLauncherMenuShowing()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 387
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 388
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogAnimShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private needShowLayoutPreviewMenu()Z
    .locals 1

    .line 411
    iget p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerEventBusHandler()V
    .locals 1

    .line 276
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->forEachHandler(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private unregisterEventBusHandler()V
    .locals 1

    .line 284
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->forEachHandler(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateFinishContainerState(ZZ)V
    .locals 1

    .line 415
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->needShowGroupContainerOrFinishContainer(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeFinishContainerToNormalState(ZZ)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p1, p0, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeFinishContainerToGoneState(ZZZ)V

    :goto_0
    return-void
.end method

.method private updateGroupContainerState(Z)V
    .locals 2

    .line 350
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->needShowGroupContainerOrFinishContainer(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isGroupContainerEnable(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeGroupContainerToNormalState(ZZ)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeGroupContainerToGoneState(ZZ)V

    :goto_0
    return-void
.end method

.method private updateLayoutPreviewTopMenuContainerState()V
    .locals 2

    .line 399
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->needShowLayoutPreviewMenu()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 404
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeLayoutPreviewToNormalState(Z)V

    goto :goto_0

    .line 406
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeLayoutPreviewToGoneState(Z)V

    :goto_0
    return-void
.end method

.method private updateTopMenuContainerState(ZZ)V
    .locals 0

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateFinishContainerState(ZZ)V

    .line 395
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState(Z)V

    return-void
.end method


# virtual methods
.method public clearAllCheckedItems()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems(Lcom/miui/home/icon/CheckedStateChangeReason;)V

    return-void
.end method

.method public clearAllCheckedItems(Lcom/miui/home/icon/CheckedStateChangeReason;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/icon/CheckedStateChangeReason;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 209
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public forceReload()V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    return-void
.end method

.method public getCheckedDragSources()[Lcom/miui/home/launcher/DragSource;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/home/launcher/DragSource;

    .line 142
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/home/launcher/ShortcutInfo;

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 428
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSelectCount()I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public moveDragViewToFirst(Landroid/view/View;)V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    if-eqz p1, :cond_4

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    goto :goto_2

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragSource;

    if-nez v0, :cond_1

    return-void

    .line 157
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 165
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 166
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragSource;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public onAppsAdded()V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 453
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unregisterEventBusHandler()V

    const/4 p0, 0x0

    .line 454
    sput-object p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    .line 264
    invoke-direct {p0, p1, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState(ZZ)V

    return-void
.end method

.method public onDragItem(Landroid/view/View;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItemsOnDrag()V

    :cond_0
    return-void
.end method

.method public onDragMultiItems()V
    .locals 2

    const-string v0, "Launcher.MultiSelectMonitor"

    const-string v1, "onDragMultiItems"

    .line 245
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItemsOnDrag()V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x1

    .line 257
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    const/4 p1, 0x0

    .line 258
    invoke-direct {p0, p1, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState(ZZ)V

    return-void
.end method

.method public onShortCutIconChecked(ZLcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4

    if-eqz p2, :cond_4

    .line 114
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 119
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->resetIconDragSourceExcludeHotSeats(Lcom/miui/home/launcher/Launcher;ZLcom/miui/home/launcher/ShortcutInfo;)V

    const/4 p1, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState(Z)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    const/16 p0, 0xa

    .line 123
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 124
    :cond_2
    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    if-nez p0, :cond_3

    .line 125
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    .line 127
    :cond_3
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/ShortcutIconCheckChangedMessage;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/messages/ShortcutIconCheckChangedMessage;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onShowOrHideUninstallDialog(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 272
    invoke-direct {p0, p1, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState(ZZ)V

    return-void
.end method

.method public resetIconDragSourceExcludeHotSeats(Lcom/miui/home/launcher/Launcher;ZLcom/miui/home/launcher/ShortcutInfo;)V
    .locals 5

    if-eqz p3, :cond_6

    .line 89
    iget-wide v0, p3, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v3, -0x64

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-wide/16 v3, -0x65

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v2

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    .line 106
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 p1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState(Z)V

    return-void

    .line 103
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "can only check icon from workspace or folder"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public resetMultiSelectMonitor()V
    .locals 0

    const/4 p0, 0x0

    .line 458
    sput-object p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    return-void
.end method

.method public setTopMenu(Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    return-void
.end method

.method public unCheckShortcut(Ljava/lang/String;)V
    .locals 2

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$3;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$2;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    .line 222
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    .line 234
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
