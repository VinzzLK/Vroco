.class public final Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "GestureEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/event/GestureHomeMoveEventInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/event/GestureHomeMoveEventInfo$Companion;


# instance fields
.field private final mode:I

.field private final params:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

.field private final per:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->Companion:Lcom/miui/home/recents/event/GestureHomeMoveEventInfo$Companion;

    return-void
.end method

.method public constructor <init>(IFLcom/miui/home/recents/anim/TaskViewParamsInfo;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 135
    iput p1, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->mode:I

    .line 136
    iput p2, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->per:F

    .line 137
    iput-object p3, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->params:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

    iget v1, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->mode:I

    iget v3, p1, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->mode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->per:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->per:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->params:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    iget-object p1, p1, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->params:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMode()I
    .locals 0

    .line 135
    iget p0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->mode:I

    return p0
.end method

.method public final getParams()Lcom/miui/home/recents/anim/TaskViewParamsInfo;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->params:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    return-object p0
.end method

.method public final getPer()F
    .locals 0

    .line 136
    iget p0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->per:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->per:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->params:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureHomeMoveEventInfo(mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", per="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->per:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->params:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
