.class Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;
.super Ljava/lang/Object;
.source "SpringAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/animate/SpringAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndAnimationMessageHandler"
.end annotation


# instance fields
.field private mWkAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/animate/SpringAnimator;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;->mWkAnimator:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->skipToEnd()V

    :cond_0
    return-void
.end method
