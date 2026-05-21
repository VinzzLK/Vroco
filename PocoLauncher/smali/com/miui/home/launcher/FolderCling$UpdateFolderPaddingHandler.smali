.class Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;
.super Ljava/lang/Object;
.source "FolderCling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateFolderPaddingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    .line 755
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->getMessage()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    move p0, v2

    move v3, p0

    goto/16 :goto_1

    .line 783
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v3}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result v3

    .line 784
    iget-object v4, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v4, v2}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v4

    .line 785
    iget-object v5, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v5, v2}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v5

    .line 786
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0, v2}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)V

    .line 787
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->exitEditState()V

    move v2, v4

    move p0, v5

    goto/16 :goto_1

    .line 777
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result v2

    .line 778
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v3, v1}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v3

    .line 779
    iget-object v4, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v4, v1}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v4

    .line 780
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0, v1}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)V

    move p0, v4

    goto :goto_0

    .line 767
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result v2

    .line 768
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v3}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v3

    .line 769
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    invoke-static {p0, v4}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p0

    :goto_0
    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1

    .line 772
    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result v3

    .line 773
    iget-object v4, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v4, v2}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v4

    .line 774
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0, v2}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v2

    move p0, v2

    move v2, v4

    goto :goto_1

    .line 761
    :cond_5
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v3}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->isRecommendScreenShow()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v3}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v3

    if-nez v3, :cond_6

    move v2, v1

    .line 762
    :cond_6
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result v2

    .line 763
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v3}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v3

    .line 764
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    invoke-static {p0, v4}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p0

    goto :goto_0

    .line 790
    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Folder;->setFolderBackgroundViewMarginTop(I)V

    .line 791
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Folder;->setFolderHeaderMarginTop(I)V

    if-ne p1, v1, :cond_7

    .line 792
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 793
    :cond_7
    invoke-static {v0, v3}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    :cond_8
    return-void
.end method
