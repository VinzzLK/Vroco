.class Lcom/miui/home/launcher/FolderCling$4;
.super Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;
.source "FolderCling.java"


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

    .line 819
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 822
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result v0

    .line 823
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getLastEditState()I

    move-result p1

    .line 824
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    if-ne p1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-ne v0, v2, :cond_2

    .line 827
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v4

    .line 828
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v1, :cond_3

    if-eqz p1, :cond_7

    .line 830
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)V

    .line 831
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    .line 832
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 833
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 834
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/FolderCling;->access$800(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderGridView;Z)V

    .line 835
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 836
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 838
    :cond_5
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    :cond_6
    const/4 v1, 0x5

    .line 839
    :goto_2
    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;-><init>(I)V

    .line 838
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 840
    :cond_7
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->setFolderTitleBackground()V

    goto :goto_3

    .line 842
    :cond_8
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$4;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$800(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderGridView;Z)V

    :goto_3
    return-void
.end method
