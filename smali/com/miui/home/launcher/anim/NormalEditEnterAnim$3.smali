.class Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NormalEditEnterAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startEditModeOutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iget-object p1, p1, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationExitEnd()V

    .line 313
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->access$002(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 306
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iget-object p1, p1, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationExitEnd()V

    .line 307
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->access$002(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationStart()V

    return-void
.end method
