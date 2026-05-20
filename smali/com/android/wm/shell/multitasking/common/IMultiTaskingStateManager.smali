.class public interface abstract Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;
.super Ljava/lang/Object;
.source "IMultiTaskingStateManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager$_Parcel;,
        Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerMultiTaskingStateListener(Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSmallFreeformFromRecent(Landroid/app/ActivityManager$RunningTaskInfo;I)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
