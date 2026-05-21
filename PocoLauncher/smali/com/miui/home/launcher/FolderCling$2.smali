.class Lcom/miui/home/launcher/FolderCling$2;
.super Ljava/lang/Object;
.source "FolderCling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 467
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Folder;->removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    if-eqz v1, :cond_0

    .line 470
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result p0

    if-nez p0, :cond_0

    .line 471
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ItemInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 472
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->finishPending()V

    .line 473
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    .line 474
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->saveCheckedStatus()V

    .line 475
    iget-object p0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {p0}, Lcom/miui/home/launcher/Folder$FolderCallback;->deleteSelf()V

    :cond_0
    return-void
.end method
