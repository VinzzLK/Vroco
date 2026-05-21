.class Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;-><init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;Landroid/view/View;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 272
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 273
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim$1;->val$target:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
