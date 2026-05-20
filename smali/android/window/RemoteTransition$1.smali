.class Landroid/window/RemoteTransition$1;
.super Ljava/lang/Object;
.source "RemoteTransition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/RemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/RemoteTransition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/window/RemoteTransition;
    .locals 0

    .line 156
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no implementation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Landroid/window/RemoteTransition$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/RemoteTransition;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/window/RemoteTransition;
    .locals 0

    .line 151
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no implementation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Landroid/window/RemoteTransition$1;->newArray(I)[Landroid/window/RemoteTransition;

    move-result-object p0

    return-object p0
.end method
