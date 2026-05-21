.class Lcom/miui/home/launcher/DragView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragView;->fadeOut()Z
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

    .line 1235
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$8;->this$0:Lcom/miui/home/launcher/DragView;

    iput-boolean p2, p0, Lcom/miui/home/launcher/DragView$8;->val$isInShortcutMenuState:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1237
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$8;->this$0:Lcom/miui/home/launcher/DragView;

    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView$8;->val$isInShortcutMenuState:Z

    invoke-static {p1, p0}, Lcom/miui/home/launcher/DragView;->access$500(Lcom/miui/home/launcher/DragView;Z)V

    return-void
.end method
