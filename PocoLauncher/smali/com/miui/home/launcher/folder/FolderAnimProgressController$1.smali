.class Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolderAnimProgressController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderAnimProgressController;->setListenerAnimParams(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

.field final synthetic val$isOpen:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderAnimProgressController;Z)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    iput-boolean p2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->val$isOpen:Z

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    const-string p1, "folderAnimProgress"

    .line 123
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 126
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    invoke-static {p2}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->access$000(Lcom/miui/home/launcher/folder/FolderAnimProgressController;)Lcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    invoke-static {p2}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->access$000(Lcom/miui/home/launcher/folder/FolderAnimProgressController;)Lcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;->onUpdate(F)V

    .line 129
    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->val$isOpen:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    invoke-static {p2}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->access$100(Lcom/miui/home/launcher/folder/FolderAnimProgressController;)F

    move-result p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_1

    .line 130
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->access$200(Lcom/miui/home/launcher/folder/FolderAnimProgressController;Z)V

    new-array p1, v1, [Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;

    aput-object p0, p1, v0

    .line 131
    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-boolean p2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->val$isOpen:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    invoke-static {p2}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->access$100(Lcom/miui/home/launcher/folder/FolderAnimProgressController;)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;->this$0:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->access$200(Lcom/miui/home/launcher/folder/FolderAnimProgressController;Z)V

    new-array p1, v1, [Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;

    aput-object p0, p1, v0

    .line 134
    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
