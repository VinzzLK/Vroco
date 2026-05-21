.class Lcom/miui/home/launcher/FolderClingBlurController$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolderClingBlurController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderClingBlurController;->startFolderClingBlurAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderClingBlurController;

.field final synthetic val$isOpen:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderClingBlurController;Z)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/miui/home/launcher/FolderClingBlurController$1;->this$0:Lcom/miui/home/launcher/FolderClingBlurController;

    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderClingBlurController$1;->val$isOpen:Z

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/miui/home/launcher/FolderClingBlurController$1;->this$0:Lcom/miui/home/launcher/FolderClingBlurController;

    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderClingBlurController$1;->val$isOpen:Z

    invoke-static {p1, p0}, Lcom/miui/home/launcher/FolderClingBlurController;->access$200(Lcom/miui/home/launcher/FolderClingBlurController;Z)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/miui/home/launcher/FolderClingBlurController$1;->this$0:Lcom/miui/home/launcher/FolderClingBlurController;

    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderClingBlurController$1;->val$isOpen:Z

    invoke-static {p1, p0}, Lcom/miui/home/launcher/FolderClingBlurController;->access$200(Lcom/miui/home/launcher/FolderClingBlurController;Z)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    const-string p1, "folder_cling_blur"

    .line 68
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const v0, 0x3f19999a    # 0.6f

    .line 72
    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->valFromPer(FFF)F

    move-result p2

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/FolderClingBlurController$1;->this$0:Lcom/miui/home/launcher/FolderClingBlurController;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderClingBlurController;->access$000(Lcom/miui/home/launcher/FolderClingBlurController;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 74
    iget-object p2, p0, Lcom/miui/home/launcher/FolderClingBlurController$1;->this$0:Lcom/miui/home/launcher/FolderClingBlurController;

    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderClingBlurController$1;->val$isOpen:Z

    invoke-static {p2, p0, p1}, Lcom/miui/home/launcher/FolderClingBlurController;->access$100(Lcom/miui/home/launcher/FolderClingBlurController;ZF)V

    :cond_0
    return-void
.end method
