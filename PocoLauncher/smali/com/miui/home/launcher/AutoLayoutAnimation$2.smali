.class Lcom/miui/home/launcher/AutoLayoutAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AutoLayoutAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIIILcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

.field final synthetic val$z:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;F)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$2;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    iput p2, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$2;->val$z:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 145
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$2;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIsAutoLayoutAnimating(Z)V

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$2;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    iget p0, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$2;->val$z:F

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setZ(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 152
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$2;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIsAutoLayoutAnimating(Z)V

    .line 153
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$2;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    iget p0, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$2;->val$z:F

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setZ(F)V

    return-void
.end method
