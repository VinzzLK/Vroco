.class Lcom/miui/home/launcher/Folder$8;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Folder;->sendFolderScrollEventIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$8;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 560
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/FolderScrollEvent;

    new-instance v2, Lcom/miui/home/recents/event/FolderScrollEventInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder$8;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object v3, v3, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    .line 561
    invoke-virtual {v3}, Landroid/widget/GridView;->getTop()I

    move-result v3

    iget-object p0, p0, Lcom/miui/home/launcher/Folder$8;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->getBottom()I

    move-result p0

    invoke-direct {v2, v3, p0}, Lcom/miui/home/recents/event/FolderScrollEventInfo;-><init>(II)V

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/FolderScrollEvent;-><init>(Lcom/miui/home/recents/event/FolderScrollEventInfo;)V

    .line 560
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method
