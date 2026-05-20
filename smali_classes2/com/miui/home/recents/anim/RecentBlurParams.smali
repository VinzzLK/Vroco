.class public final Lcom/miui/home/recents/anim/RecentBlurParams;
.super Ljava/lang/Object;
.source "RecentBlurViewElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/RecentBlurParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;


# instance fields
.field private final blurRadius:F

.field private final dampingRatio:F

.field private final dimming:F

.field private final response:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->blurRadius:F

    iput p2, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dimming:F

    iput p3, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dampingRatio:F

    iput p4, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->response:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const p3, 0x3f666666    # 0.9f

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const p4, 0x3e99999a    # 0.3f

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/anim/RecentBlurParams;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/anim/RecentBlurParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/anim/RecentBlurParams;

    iget v1, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->blurRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/RecentBlurParams;->blurRadius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dimming:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/RecentBlurParams;->dimming:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dampingRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/RecentBlurParams;->dampingRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->response:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/miui/home/recents/anim/RecentBlurParams;->response:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBlurRadius()F
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->blurRadius:F

    return p0
.end method

.method public final getDampingRatio()F
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dampingRatio:F

    return p0
.end method

.method public final getDimming()F
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dimming:F

    return p0
.end method

.method public final getResponse()F
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->response:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->blurRadius:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dimming:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dampingRatio:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->response:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentBlurParams(blurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->blurRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dimming:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dampingRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->dampingRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/anim/RecentBlurParams;->response:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
