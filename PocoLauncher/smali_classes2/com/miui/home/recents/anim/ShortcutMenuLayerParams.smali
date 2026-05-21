.class public final Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
.super Lcom/miui/home/recents/event/EventInfo;
.source "ShortcutMenuLayerElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;


# instance fields
.field private final alpha:F

.field private final dampingRation:F

.field private final response:F

.field private final scaleX:F

.field private final scaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 8

    .line 28
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getDefaultDampingResponse()[Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 29
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getDefaultDampingResponse()[Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 27
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 24
    iput p1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->alpha:F

    iput p2, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleX:F

    iput p3, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleY:F

    .line 25
    iput p4, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->dampingRation:F

    iput p5, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->response:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->alpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->dampingRation:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->dampingRation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->response:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->response:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAlpha()F
    .locals 0

    .line 24
    iget p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->alpha:F

    return p0
.end method

.method public final getDampingRation()F
    .locals 0

    .line 25
    iget p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->dampingRation:F

    return p0
.end method

.method public final getResponse()F
    .locals 0

    .line 25
    iget p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->response:F

    return p0
.end method

.method public final getScaleX()F
    .locals 0

    .line 24
    iget p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleX:F

    return p0
.end method

.method public final getScaleY()F
    .locals 0

    .line 24
    iget p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleY:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->alpha:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->dampingRation:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->response:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutMenuLayerParams(alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->scaleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dampingRation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->dampingRation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->response:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
