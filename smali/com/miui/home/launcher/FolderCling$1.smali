.class Lcom/miui/home/launcher/FolderCling$1;
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

    .line 373
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->setContentAlpha(F)V

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderClingBlurView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    .line 380
    invoke-static {v3}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$200(Lcom/miui/home/launcher/FolderCling;)I

    move-result p0

    .line 379
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
