.class public interface abstract Lcom/xiaomi/mimotion/IMimotionModeService;
.super Ljava/lang/Object;
.source "IMimotionModeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mimotion/IMimotionModeService$Stub;,
        Lcom/xiaomi/mimotion/IMimotionModeService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mimotion.IMimotionModeService"


# virtual methods
.method public abstract getRefreshRateSpeedLimitsDp()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isMimotionEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerMimotionModeListener(Lcom/xiaomi/mimotion/IMimotionModeCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterMimotionModeListener(Lcom/xiaomi/mimotion/IMimotionModeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
