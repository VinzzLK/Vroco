.class public Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolderAnimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/FolderAnimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GridItemTransitionListener"
.end annotation


# instance fields
.field item:Lcom/miui/home/launcher/IShortcutIcon;

.field itemView:Landroid/view/View;

.field mIsOpen:Z

.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderAnimController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/folder/FolderAnimController;Landroid/view/View;Z)V
    .locals 1

    .line 638
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->this$0:Lcom/miui/home/launcher/folder/FolderAnimController;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 639
    instance-of v0, p2, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v0, :cond_0

    .line 640
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/IShortcutIcon;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->item:Lcom/miui/home/launcher/IShortcutIcon;

    .line 642
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$000(Lcom/miui/home/launcher/folder/FolderAnimController;)Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p2, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$100()Ljava/util/List;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 643
    invoke-static {}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$100()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_1
    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->itemView:Landroid/view/View;

    .line 646
    iput-boolean p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->mIsOpen:Z

    return-void
.end method

.method private handleEnd()V
    .locals 4

    .line 684
    invoke-static {}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$310()I

    .line 685
    invoke-static {}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$300()I

    move-result v0

    if-nez v0, :cond_1

    .line 686
    invoke-static {}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 687
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->this$0:Lcom/miui/home/launcher/folder/FolderAnimController;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$400(Lcom/miui/home/launcher/folder/FolderAnimController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$500(Lcom/miui/home/launcher/folder/FolderAnimController;Z)V

    const/4 v0, 0x0

    move v1, v0

    .line 688
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->this$0:Lcom/miui/home/launcher/folder/FolderAnimController;

    invoke-static {v2}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$600(Lcom/miui/home/launcher/folder/FolderAnimController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 689
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->this$0:Lcom/miui/home/launcher/folder/FolderAnimController;

    invoke-static {v2}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$600(Lcom/miui/home/launcher/folder/FolderAnimController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-virtual {v2}, Lcom/miui/home/launcher/anim/FolmeAnimation;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lmiuix/animation/listener/TransitionListener;

    aput-object p0, v3, v0

    .line 690
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->this$0:Lcom/miui/home/launcher/folder/FolderAnimController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetGridViewSimpleStatus()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 2

    .line 651
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 652
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->item:Lcom/miui/home/launcher/IShortcutIcon;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/IShortcutIcon;->setIsAnimating(Z)V

    .line 653
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->this$0:Lcom/miui/home/launcher/folder/FolderAnimController;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$000(Lcom/miui/home/launcher/folder/FolderAnimController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 655
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->item:Lcom/miui/home/launcher/IShortcutIcon;

    iget-boolean v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->mIsOpen:Z

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/IShortcutIcon;->setInRunningFolderSimpleCloseAnimStatus(Z)V

    .line 657
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->item:Lcom/miui/home/launcher/IShortcutIcon;

    instance-of v0, p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz v0, :cond_1

    .line 658
    check-cast p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->this$0:Lcom/miui/home/launcher/folder/FolderAnimController;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$000(Lcom/miui/home/launcher/folder/FolderAnimController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setInRunningFolderSimpleOpenCloseAnimStatus(Z)V

    .line 660
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->this$0:Lcom/miui/home/launcher/folder/FolderAnimController;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$000(Lcom/miui/home/launcher/folder/FolderAnimController;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->mIsOpen:Z

    if-eqz p1, :cond_2

    .line 661
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->this$0:Lcom/miui/home/launcher/folder/FolderAnimController;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->access$200(Lcom/miui/home/launcher/folder/FolderAnimController;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    :cond_2
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 674
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 675
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Has Canceled Grid Item Anim: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->item:Lcom/miui/home/launcher/IShortcutIcon;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FolderAnimController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->item:Lcom/miui/home/launcher/IShortcutIcon;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/IShortcutIcon;->setIsAnimating(Z)V

    .line 677
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->item:Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz p1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/IShortcutIcon;->resetIShortcutIcon(Landroid/view/View;)V

    .line 680
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->handleEnd()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 667
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 668
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->item:Lcom/miui/home/launcher/IShortcutIcon;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/IShortcutIcon;->setIsAnimating(Z)V

    .line 669
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;->handleEnd()V

    return-void
.end method
