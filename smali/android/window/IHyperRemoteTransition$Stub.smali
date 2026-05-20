.class public abstract Landroid/window/IHyperRemoteTransition$Stub;
.super Landroid/os/Binder;
.source "IHyperRemoteTransition.java"

# interfaces
.implements Landroid/window/IHyperRemoteTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IHyperRemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IHyperRemoteTransition$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onTransitionAbort:I = 0x2

.field static final TRANSACTION_startActivityFinished:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.window.IHyperRemoteTransition"

    .line 27
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IHyperRemoteTransition;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.window.IHyperRemoteTransition"

    .line 38
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    instance-of v1, v0, Landroid/window/IHyperRemoteTransition;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Landroid/window/IHyperRemoteTransition;

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Landroid/window/IHyperRemoteTransition$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/IHyperRemoteTransition$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "android.window.IHyperRemoteTransition"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 77
    invoke-interface {p0, p1}, Landroid/window/IHyperRemoteTransition;->onTransitionAbort(I)V

    goto :goto_0

    .line 67
    :cond_2
    sget-object p1, Landroid/window/ActivityStartInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroid/window/IHyperRemoteTransition$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/ActivityStartInfo;

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/window/IHyperRemoteTransitionFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IHyperRemoteTransitionFinishedCallback;

    move-result-object p2

    .line 70
    invoke-interface {p0, p1, p2}, Landroid/window/IHyperRemoteTransition;->startActivityFinished(Landroid/window/ActivityStartInfo;Landroid/window/IHyperRemoteTransitionFinishedCallback;)V

    :goto_0
    return v0

    .line 58
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
