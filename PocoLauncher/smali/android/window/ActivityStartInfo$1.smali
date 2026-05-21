.class Landroid/window/ActivityStartInfo$1;
.super Ljava/lang/Object;
.source "ActivityStartInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ActivityStartInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/ActivityStartInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/window/ActivityStartInfo;
    .locals 0

    .line 107
    new-instance p0, Landroid/window/ActivityStartInfo;

    invoke-direct {p0, p1}, Landroid/window/ActivityStartInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Landroid/window/ActivityStartInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/ActivityStartInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/window/ActivityStartInfo;
    .locals 0

    .line 111
    new-array p0, p1, [Landroid/window/ActivityStartInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Landroid/window/ActivityStartInfo$1;->newArray(I)[Landroid/window/ActivityStartInfo;

    move-result-object p0

    return-object p0
.end method
