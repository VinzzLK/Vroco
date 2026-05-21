.class public interface abstract Lcom/miui/home/launcher/overlay/LauncherOverlay;
.super Ljava/lang/Object;
.source "LauncherOverlay.java"


# virtual methods
.method public abstract hideOverlay(Z)V
.end method

.method public abstract isGoogleOverlay()Z
.end method

.method public isOverlayAttached()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onScrollChange(FZ)V
.end method

.method public abstract onScrollInteractionBegin()V
.end method

.method public abstract onScrollInteractionEnd(FZ)V
.end method

.method public requestInstallApp(Lcom/miui/home/launcher/ItemInfo;ZLandroid/os/Bundle;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setAlphaAndScale(FF)V
.end method

.method public abstract setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V
.end method

.method public abstract setSwipeDirection(I)V
.end method

.method public abstract showOverlay(Z)V
.end method
