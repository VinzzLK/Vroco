.class Lmiuix/internal/util/ParcelableSparseArray$1;
.super Ljava/lang/Object;
.source "ParcelableSparseArray.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/util/ParcelableSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lmiuix/internal/util/ParcelableSparseArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/internal/util/ParcelableSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lmiuix/internal/util/ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/internal/util/ParcelableSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/internal/util/ParcelableSparseArray;
    .locals 1

    .line 63
    new-instance p0, Lmiuix/internal/util/ParcelableSparseArray;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/internal/util/ParcelableSparseArray;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/internal/util/ParcelableSparseArray;
    .locals 0

    .line 57
    new-instance p0, Lmiuix/internal/util/ParcelableSparseArray;

    invoke-direct {p0, p1, p2}, Lmiuix/internal/util/ParcelableSparseArray;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ParcelableSparseArray$1;->newArray(I)[Lmiuix/internal/util/ParcelableSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiuix/internal/util/ParcelableSparseArray;
    .locals 0

    .line 69
    new-array p0, p1, [Lmiuix/internal/util/ParcelableSparseArray;

    return-object p0
.end method
