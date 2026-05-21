.class public interface abstract Lcom/xiaomi/mirror/IMirrorShareCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorShareCallback$Stub;,
        Lcom/xiaomi/mirror/IMirrorShareCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onStateChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
