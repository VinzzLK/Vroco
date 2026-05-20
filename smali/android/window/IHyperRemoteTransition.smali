.class public interface abstract Landroid/window/IHyperRemoteTransition;
.super Ljava/lang/Object;
.source "IHyperRemoteTransition.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IHyperRemoteTransition$_Parcel;,
        Landroid/window/IHyperRemoteTransition$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTransitionAbort(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startActivityFinished(Landroid/window/ActivityStartInfo;Landroid/window/IHyperRemoteTransitionFinishedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
