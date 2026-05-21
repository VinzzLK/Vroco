.class Lcom/miui/home/launcher/AutoLayoutAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
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

    .line 110
    iput-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$1;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    iput p2, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$1;->val$z:F

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$1;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIsAutoLayoutAnimating(Z)V

    .line 115
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$1;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    iget p0, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$1;->val$z:F

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setZ(F)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 121
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$1;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIsAutoLayoutAnimating(Z)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$1;->val$hv:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    iget p0, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$1;->val$z:F

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setZ(F)V

    return-void
.end method
