.class Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator$1;
.super Ljava/lang/Object;
.source "FolderGridView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;->clipListenerIfNeeded(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;

.field final synthetic val$folderBackground:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator$1;->this$0:Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator$1;->val$folderBackground:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1117
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator$1;->val$folderBackground:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 p0, 0x0

    .line 1118
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1112
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$FolderLayoutAnimator$1;->val$folderBackground:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method
