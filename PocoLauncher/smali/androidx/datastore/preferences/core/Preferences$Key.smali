.class public final Landroidx/datastore/preferences/core/Preferences$Key;
.super Ljava/lang/Object;
.source "Preferences.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/core/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/datastore/preferences/core/Preferences$Key;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 47
    instance-of v0, p1, Landroidx/datastore/preferences/core/Preferences$Key;

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Landroidx/datastore/preferences/core/Preferences$Key;->name:Ljava/lang/String;

    check-cast p1, Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object p1, p1, Landroidx/datastore/preferences/core/Preferences$Key;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/datastore/preferences/core/Preferences$Key;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/datastore/preferences/core/Preferences$Key;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Landroidx/datastore/preferences/core/Preferences$Key;->name:Ljava/lang/String;

    return-object p0
.end method
