.class public Lmiuix/container/ExtraPaddingPolicy$Builder;
.super Ljava/lang/Object;
.source "ExtraPaddingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/container/ExtraPaddingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mPolicy:Lmiuix/container/ExtraPaddingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lmiuix/container/ExtraPaddingPolicy;

    invoke-direct {v0}, Lmiuix/container/ExtraPaddingPolicy;-><init>()V

    iput-object v0, p0, Lmiuix/container/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/container/ExtraPaddingPolicy;

    return-void
.end method

.method public static createDefault(III)Lmiuix/container/ExtraPaddingPolicy;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_1
    :goto_0
    new-instance p0, Lmiuix/container/ExtraPaddingPolicy$Builder;

    invoke-direct {p0}, Lmiuix/container/ExtraPaddingPolicy$Builder;-><init>()V

    .line 212
    invoke-virtual {p0, p2}, Lmiuix/container/ExtraPaddingPolicy$Builder;->setPaddingHorizontalCommonDp(I)Lmiuix/container/ExtraPaddingPolicy$Builder;

    move-result-object p0

    new-array p2, v0, [I

    fill-array-data p2, :array_0

    .line 213
    invoke-virtual {p0, p2}, Lmiuix/container/ExtraPaddingPolicy$Builder;->setThresholds([I)Lmiuix/container/ExtraPaddingPolicy$Builder;

    move-result-object p0

    const/4 p2, 0x4

    new-array p2, p2, [I

    const/4 v2, 0x0

    aput v2, p2, v2

    const/4 v2, 0x1

    mul-int/lit8 v3, p1, 0x2

    aput v3, p2, v2

    mul-int/lit8 v2, p1, 0x4

    aput v2, p2, v1

    mul-int/lit8 p1, p1, 0xb

    aput p1, p2, v0

    .line 218
    invoke-virtual {p0, p2}, Lmiuix/container/ExtraPaddingPolicy$Builder;->setPaddingsDp([I)Lmiuix/container/ExtraPaddingPolicy$Builder;

    move-result-object p0

    const/16 p1, 0x44c

    .line 224
    invoke-virtual {p0, p1}, Lmiuix/container/ExtraPaddingPolicy$Builder;->setWidthLimitedThreshold(I)Lmiuix/container/ExtraPaddingPolicy$Builder;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Lmiuix/container/ExtraPaddingPolicy$Builder;->create()Lmiuix/container/ExtraPaddingPolicy;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x1a4
        0x280
        0x320
    .end array-data
.end method


# virtual methods
.method public create()Lmiuix/container/ExtraPaddingPolicy;
    .locals 0

    .line 205
    iget-object p0, p0, Lmiuix/container/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/container/ExtraPaddingPolicy;

    return-object p0
.end method

.method public setPaddingHorizontalCommonDp(I)Lmiuix/container/ExtraPaddingPolicy$Builder;
    .locals 1

    .line 175
    iget-object v0, p0, Lmiuix/container/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/container/ExtraPaddingPolicy;->access$002(Lmiuix/container/ExtraPaddingPolicy;I)I

    return-object p0
.end method

.method public varargs setPaddingsDp([I)Lmiuix/container/ExtraPaddingPolicy$Builder;
    .locals 1

    .line 185
    iget-object v0, p0, Lmiuix/container/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/container/ExtraPaddingPolicy;->access$202(Lmiuix/container/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method

.method public varargs setThresholds([I)Lmiuix/container/ExtraPaddingPolicy$Builder;
    .locals 1

    .line 180
    iget-object v0, p0, Lmiuix/container/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/container/ExtraPaddingPolicy;->access$102(Lmiuix/container/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method

.method public setWidthLimitedThreshold(I)Lmiuix/container/ExtraPaddingPolicy$Builder;
    .locals 1

    .line 200
    iget-object v0, p0, Lmiuix/container/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/container/ExtraPaddingPolicy;->access$502(Lmiuix/container/ExtraPaddingPolicy;I)I

    return-object p0
.end method
