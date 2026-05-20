.class public interface abstract Lcom/xiaomi/mirror/IMirrorDeviceStatusCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorDeviceStatusCallback$Stub;,
        Lcom/xiaomi/mirror/IMirrorDeviceStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onRemoteDeviceStatus(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
