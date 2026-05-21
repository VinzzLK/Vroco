.class public abstract Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;
.super Landroid/os/Binder;
.source "IMiuiAppTransitionAnimationHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    .line 31
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
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

    const-string v1, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 56
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 86
    :cond_1
    invoke-interface {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationEnd()V

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationStart()V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 74
    invoke-interface {p0, p1, p2}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object p0

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-static {p3, p0, v0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_0
    return v0

    .line 62
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
