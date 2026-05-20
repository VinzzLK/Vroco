.class Lcom/miui/home/launcher/Launcher$53$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$53;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$53;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$53;)V
    .locals 0

    .line 6457
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$53$1;->this$1:Lcom/miui/home/launcher/Launcher$53;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 6460
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53$1;->this$1:Lcom/miui/home/launcher/Launcher$53;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$7402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 6461
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53$1;->this$1:Lcom/miui/home/launcher/Launcher$53;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$7502(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 6462
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53$1;->this$1:Lcom/miui/home/launcher/Launcher$53;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6463
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53$1;->this$1:Lcom/miui/home/launcher/Launcher$53;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$7100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/folder/FolderAnimController;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$53$1;->this$1:Lcom/miui/home/launcher/Launcher$53;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$53;->val$folderIcon:Landroid/view/View;

    check-cast v2, Lcom/miui/home/launcher/FolderIcon;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->locIcon:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/miui/home/launcher/folder/FolderAnimController;->startFolderAnim(ZLcom/miui/home/launcher/FolderIcon;[IZ)V

    return-void
.end method
