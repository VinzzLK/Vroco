.class public final Lcom/miui/home/recents/anim/WallpaperParam;
.super Ljava/lang/Object;
.source "WallpaperElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/WallpaperParam$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

.field private static defaultScale:F


# instance fields
.field private final dampingRatio:F

.field private final response:F

.field private final zoomOut:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    sput v0, Lcom/miui/home/recents/anim/WallpaperParam;->defaultScale:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/anim/WallpaperParam;->zoomOut:F

    iput p2, p0, Lcom/miui/home/recents/anim/WallpaperParam;->dampingRatio:F

    iput p3, p0, Lcom/miui/home/recents/anim/WallpaperParam;->response:F

    return-void
.end method

.method public static final synthetic access$getDefaultScale$cp()F
    .locals 1

    .line 27
    sget v0, Lcom/miui/home/recents/anim/WallpaperParam;->defaultScale:F

    return v0
.end method

.method public static final synthetic access$setDefaultScale$cp(F)V
    .locals 0

    .line 27
    sput p0, Lcom/miui/home/recents/anim/WallpaperParam;->defaultScale:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/anim/WallpaperParam;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/anim/WallpaperParam;

    iget v1, p0, Lcom/miui/home/recents/anim/WallpaperParam;->zoomOut:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/WallpaperParam;->zoomOut:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/anim/WallpaperParam;->dampingRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/WallpaperParam;->dampingRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/miui/home/recents/anim/WallpaperParam;->response:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/miui/home/recents/anim/WallpaperParam;->response:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDampingRatio()F
    .locals 0

    .line 27
    iget p0, p0, Lcom/miui/home/recents/anim/WallpaperParam;->dampingRatio:F

    return p0
.end method

.method public final getResponse()F
    .locals 0

    .line 27
    iget p0, p0, Lcom/miui/home/recents/anim/WallpaperParam;->response:F

    return p0
.end method

.method public final getZoomOut()F
    .locals 0

    .line 27
    iget p0, p0, Lcom/miui/home/recents/anim/WallpaperParam;->zoomOut:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/anim/WallpaperParam;->zoomOut:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/WallpaperParam;->dampingRatio:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/recents/anim/WallpaperParam;->response:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WallpaperParam(zoomOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/WallpaperParam;->zoomOut:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dampingRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/WallpaperParam;->dampingRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/anim/WallpaperParam;->response:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
