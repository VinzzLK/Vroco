.class Lcom/android/wm/shell/util/SplitBoundsV$1;
.super Ljava/lang/Object;
.source "SplitBoundsV.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/util/SplitBoundsV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/wm/shell/util/SplitBoundsV;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/wm/shell/util/SplitBoundsV;
    .locals 0

    .line 127
    new-instance p0, Lcom/android/wm/shell/util/SplitBoundsV;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/util/SplitBoundsV;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/util/SplitBoundsV$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/wm/shell/util/SplitBoundsV;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/wm/shell/util/SplitBoundsV;
    .locals 0

    .line 132
    new-array p0, p1, [Lcom/android/wm/shell/util/SplitBoundsV;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/util/SplitBoundsV$1;->newArray(I)[Lcom/android/wm/shell/util/SplitBoundsV;

    move-result-object p0

    return-object p0
.end method
