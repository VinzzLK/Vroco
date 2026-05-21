.class Lcom/miui/home/launcher/FolderCling$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderCling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderCling;->startFolderClipRectAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;

.field final synthetic val$endPadding:I

.field final synthetic val$folder:Lcom/miui/home/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/Folder;I)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderCling$3;->val$folder:Lcom/miui/home/launcher/Folder;

    iput p3, p0, Lcom/miui/home/launcher/FolderCling$3;->val$endPadding:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 712
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 713
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$3;->val$folder:Lcom/miui/home/launcher/Folder;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$300(Lcom/miui/home/launcher/FolderCling;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    .line 714
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$3;->val$folder:Lcom/miui/home/launcher/Folder;

    iget p0, p0, Lcom/miui/home/launcher/FolderCling$3;->val$endPadding:I

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method
