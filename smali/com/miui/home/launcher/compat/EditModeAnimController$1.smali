.class Lcom/miui/home/launcher/compat/EditModeAnimController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditModeAnimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/compat/EditModeAnimController;->showEditModeAnimation(Landroid/view/View;ZFFFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$show:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$1;->val$view:Landroid/view/View;

    iput-boolean p2, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$1;->val$view:Landroid/view/View;

    iget-boolean p0, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$1;->val$show:Z

    invoke-static {p1, p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->access$000(Landroid/view/View;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$1;->val$view:Landroid/view/View;

    iget-boolean p0, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$1;->val$show:Z

    invoke-static {p1, p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->access$000(Landroid/view/View;Z)V

    return-void
.end method
