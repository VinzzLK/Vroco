.class public interface abstract Lcom/xiaomi/mimotion/IMimotionModeCallback;
.super Ljava/lang/Object;
.source "IMimotionModeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mimotion/IMimotionModeCallback$Stub;,
        Lcom/xiaomi/mimotion/IMimotionModeCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mimotion.IMimotionModeCallback"


# virtual methods
.method public abstract onUpdateMimotionMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
