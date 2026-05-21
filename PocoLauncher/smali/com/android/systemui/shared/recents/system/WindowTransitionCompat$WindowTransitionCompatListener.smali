.class public interface abstract Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;
.super Ljava/lang/Object;
.source "WindowTransitionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowTransitionCompatListener"
.end annotation


# virtual methods
.method public abstract onAnimCancelByShellFinished(Z)V
.end method

.method public abstract onClosingWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
.end method

.method public abstract onFinishCompleted()V
.end method

.method public abstract onOpeningWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;I)V
.end method

.method public abstract onPairTaskOpeningWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
.end method

.method public abstract onTransitionMerged(ZZ)V
.end method
