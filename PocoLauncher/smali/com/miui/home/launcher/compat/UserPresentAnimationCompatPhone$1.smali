.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserPresentAnimationCompatPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 270
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 271
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;

    iget v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    if-gtz v0, :cond_0

    .line 273
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetAnimationViewNum()V

    .line 274
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetAnimationViewLayerType()V

    .line 275
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->access$002(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;Z)Z

    const-string p0, "Launcher.UserPresentAnimation"

    const-string/jumbo p1, "unlock_animation_complete"

    .line 276
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
