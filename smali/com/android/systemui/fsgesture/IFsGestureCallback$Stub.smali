.class public abstract Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;
.super Landroid/os/Binder;
.source "IFsGestureCallback.java"

# interfaces
.implements Lcom/android/systemui/fsgesture/IFsGestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/IFsGestureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    .line 38
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.android.systemui.fsgesture.IFsGestureCallback"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 63
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 117
    :cond_1
    invoke-interface {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->notifyHomeModeFsGestureStart()V

    goto :goto_1

    .line 112
    :cond_2
    invoke-interface {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->notifyMiuiAnimationEnd()V

    goto :goto_1

    .line 107
    :cond_3
    invoke-interface {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->notifyMiuiAnimationStart()V

    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 100
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object p0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-static {p3, p0, v0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 78
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v8, v0

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    move v8, p1

    :goto_0
    move-object v1, p0

    .line 91
    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->changeAlphaScale(FFIIIIZ)V

    :goto_1
    return v0

    .line 69
    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
