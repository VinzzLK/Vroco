.class public interface abstract Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.super Ljava/lang/Object;
.source "AutoLayoutAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/AutoLayoutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HostView"
.end annotation


# virtual methods
.method public animator()Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 2

    const v0, 0x7f0a01f1

    .line 45
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    .line 48
    invoke-interface {p0, v0, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setTag(ILjava/lang/Object;)V

    .line 50
    :cond_0
    check-cast v1, Lcom/miui/home/launcher/animate/SpringAnimator;

    return-object v1
.end method

.method public abstract getBottom()I
.end method

.method public abstract getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
.end method

.method public abstract getLeft()I
.end method

.method public abstract getRight()I
.end method

.method public abstract getSkipNextAutoLayoutAnimation()Z
.end method

.method public abstract getTag(I)Ljava/lang/Object;
.end method

.method public abstract getTop()I
.end method

.method public abstract getTranslationX()F
.end method

.method public abstract getTranslationY()F
.end method

.method public abstract getVisibility()I
.end method

.method public abstract getZ()F
.end method

.method public abstract isAutoLayoutAnimating()Z
.end method

.method public abstract isEnableAutoLayoutAnimation()Z
.end method

.method public isIgnoreAnimationForOnce()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setEnableAutoLayoutAnimation(Z)V
.end method

.method public abstract setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
.end method

.method public setIgnoreAnimationForOnce(Z)V
    .locals 0

    return-void
.end method

.method public abstract setIsAutoLayoutAnimating(Z)V
.end method

.method public abstract setSkipNextAutoLayoutAnimation(Z)V
.end method

.method public abstract setTag(ILjava/lang/Object;)V
.end method

.method public abstract setTranslationX(F)V
.end method

.method public abstract setTranslationY(F)V
.end method

.method public abstract setZ(F)V
.end method

.method public abstract superSetFrame(IIII)Z
.end method
