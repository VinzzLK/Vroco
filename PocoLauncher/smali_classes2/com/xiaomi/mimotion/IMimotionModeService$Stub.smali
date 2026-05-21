.class public abstract Lcom/xiaomi/mimotion/IMimotionModeService$Stub;
.super Landroid/os/Binder;
.source "IMimotionModeService.java"

# interfaces
.implements Lcom/xiaomi/mimotion/IMimotionModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mimotion/IMimotionModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mimotion/IMimotionModeService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getRefreshRateSpeedLimitsDp:I = 0x4

.field static final TRANSACTION_isMimotionEnabled:I = 0x1

.field static final TRANSACTION_registerMimotionModeListener:I = 0x2

.field static final TRANSACTION_unRegisterMimotionModeListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.mimotion.IMimotionModeService"

    .line 35
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mimotion/IMimotionModeService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.mimotion.IMimotionModeService"

    .line 46
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    instance-of v1, v0, Lcom/xiaomi/mimotion/IMimotionModeService;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Lcom/xiaomi/mimotion/IMimotionModeService;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lcom/xiaomi/mimotion/IMimotionModeService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/mimotion/IMimotionModeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaomi.mimotion.IMimotionModeService"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 60
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 97
    :cond_1
    invoke-interface {p0}, Lcom/xiaomi/mimotion/IMimotionModeService;->getRefreshRateSpeedLimitsDp()[I

    move-result-object p0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mimotion/IMimotionModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mimotion/IMimotionModeCallback;

    move-result-object p1

    .line 92
    invoke-interface {p0, p1}, Lcom/xiaomi/mimotion/IMimotionModeService;->unRegisterMimotionModeListener(Lcom/xiaomi/mimotion/IMimotionModeCallback;)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mimotion/IMimotionModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mimotion/IMimotionModeCallback;

    move-result-object p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 85
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mimotion/IMimotionModeService;->registerMimotionModeListener(Lcom/xiaomi/mimotion/IMimotionModeCallback;I)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-interface {p0}, Lcom/xiaomi/mimotion/IMimotionModeService;->isMimotionEnabled()Z

    move-result p0

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 66
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
