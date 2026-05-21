.class Lcom/miui/home/launcher/DragView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragView;

.field final synthetic val$isInShortcutMenuState:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;Z)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$7;->this$0:Lcom/miui/home/launcher/DragView;

    iput-boolean p2, p0, Lcom/miui/home/launcher/DragView$7;->val$isInShortcutMenuState:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1136
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$7;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$400(Lcom/miui/home/launcher/DragView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1137
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$7;->this$0:Lcom/miui/home/launcher/DragView;

    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView$7;->val$isInShortcutMenuState:Z

    invoke-static {p1, p0}, Lcom/miui/home/launcher/DragView;->access$500(Lcom/miui/home/launcher/DragView;Z)V

    :cond_0
    return-void
.end method
