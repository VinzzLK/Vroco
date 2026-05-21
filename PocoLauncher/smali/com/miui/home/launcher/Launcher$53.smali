.class Lcom/miui/home/launcher/Launcher$53;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$folderIcon:Landroid/view/View;

.field final synthetic val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

.field final synthetic val$isDragOpen:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;ZLandroid/view/View;)V
    .locals 0

    .line 6414
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$53;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    iput-boolean p3, p0, Lcom/miui/home/launcher/Launcher$53;->val$isDragOpen:Z

    iput-object p4, p0, Lcom/miui/home/launcher/Launcher$53;->val$folderIcon:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Fluency_Test:ignore_range"

    const/16 v1, 0x2766

    .line 6417
    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 6418
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelTouchEvent(Landroid/view/View;)V

    .line 6419
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$6800(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 6420
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6421
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x7

    new-instance v1, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v2, "click_outside_of_menu"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void

    .line 6424
    :cond_1
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/OpenFolderEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/OpenFolderEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 6425
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 6426
    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "action_open_folder"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6427
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$6900(Lcom/miui/home/launcher/Launcher;)V

    .line 6428
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 6429
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$7002(Lcom/miui/home/launcher/Launcher;Z)Z

    const/4 v0, 0x1

    .line 6430
    invoke-static {v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setEnableLoadingAnim(Z)V

    .line 6431
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$7100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/folder/FolderAnimController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6432
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$7100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/folder/FolderAnimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderAnimController;->skipToEnd()V

    .line 6434
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$53;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderCling;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    .line 6435
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher$53;->val$isDragOpen:Z

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderCling;->open(Z)V

    .line 6436
    sput-boolean v1, Lcom/miui/home/launcher/Launcher;->IS_NEED_ALPHA:Z

    .line 6437
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/Launcher;->access$7202(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 6438
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/Launcher;->access$7302(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 6439
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/Launcher;->access$7402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 6440
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/Launcher;->announceFolderOpenOrClose(Lcom/miui/home/launcher/FolderInfo;Z)V

    .line 6441
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6442
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher;->access$7402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 6443
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    .line 6444
    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->resetFolder()V

    .line 6445
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2700(Lcom/miui/home/launcher/Launcher;)V

    .line 6446
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher;->access$7102(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/folder/FolderAnimController;)Lcom/miui/home/launcher/folder/FolderAnimController;

    goto :goto_2

    .line 6448
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->val$folderIcon:Landroid/view/View;

    check-cast v1, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher;->locIcon:[I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 6449
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->initAnimFolderIcon(Lcom/miui/home/launcher/FolderInfo;)V

    .line 6450
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$7100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/folder/FolderAnimController;

    move-result-object v1

    if-nez v1, :cond_6

    .line 6451
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->isBeteOs:Z

    if-nez v1, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 6454
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/launcher/folder/FolderAnimController;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v2, v3, v4}, Lcom/miui/home/launcher/folder/FolderAnimController;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher;->access$7102(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/folder/FolderAnimController;)Lcom/miui/home/launcher/folder/FolderAnimController;

    goto :goto_1

    .line 6452
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v2, v3, v4}, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher;->access$7102(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/folder/FolderAnimController;)Lcom/miui/home/launcher/folder/FolderAnimController;

    .line 6457
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/Launcher$53$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$53$1;-><init>(Lcom/miui/home/launcher/Launcher$53;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6466
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v1

    if-nez v1, :cond_7

    .line 6467
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher;->access$7600(Lcom/miui/home/launcher/Launcher;Z)V

    .line 6470
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0, v0}, Lcom/miui/home/launcher/Launcher;->access$7700(Lcom/miui/home/launcher/Launcher;ZZ)V

    .line 6471
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 6472
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->onLaunch()V

    .line 6473
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$53;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateItemFlagAndLaunchCount(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    .line 6475
    :cond_8
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_9
    :goto_3
    return-void
.end method
