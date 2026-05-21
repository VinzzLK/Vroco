.class public abstract Landroid/view/IBarFollowAnimationRunner$Stub;
.super Landroid/os/Binder;
.source "IBarFollowAnimationRunner.java"

# interfaces
.implements Landroid/view/IBarFollowAnimationRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IBarFollowAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IBarFollowAnimationRunner$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerBarFollowCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IBarFollowAnimationRunner"

    .line 29
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IBarFollowAnimationRunner;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.view.IBarFollowAnimationRunner"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    instance-of v1, v0, Landroid/view/IBarFollowAnimationRunner;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Landroid/view/IBarFollowAnimationRunner;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Landroid/view/IBarFollowAnimationRunner$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IBarFollowAnimationRunner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "android.view.IBarFollowAnimationRunner"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/IGestureStateUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IGestureStateUpdateCallback;

    move-result-object p1

    .line 70
    invoke-interface {p0, p1}, Landroid/view/IBarFollowAnimationRunner;->registerBarFollowCallback(Landroid/window/IGestureStateUpdateCallback;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 60
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
