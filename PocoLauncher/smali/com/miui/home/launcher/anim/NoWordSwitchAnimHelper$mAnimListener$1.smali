.class public final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mAnimListener$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "NoWordSwitchAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "toTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 62
    instance-of p0, p1, Landroid/view/View;

    if-eqz p0, :cond_0

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$getMScheduledWorkspaceDisappearAnim$p()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 64
    check-cast p1, Landroid/view/View;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$getMAnimEndAction$p()Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 57
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$setMAnimEndAction$p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$getMAnimEndAction$p()Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 51
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$setMAnimEndAction$p(Ljava/lang/Runnable;)V

    return-void
.end method
