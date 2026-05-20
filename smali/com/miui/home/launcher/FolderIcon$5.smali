.class Lcom/miui/home/launcher/FolderIcon$5;
.super Lcom/miui/home/library/mirror/MirrorDragListener;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0}, Lcom/miui/home/library/mirror/MirrorDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragEnter(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 2

    .line 610
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDragExit(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 620
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragOver(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDrop(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
