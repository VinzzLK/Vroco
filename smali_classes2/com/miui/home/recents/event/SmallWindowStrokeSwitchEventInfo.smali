.class public final Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "SmallWindowStrokeSwitchEvent.kt"


# instance fields
.field private final freeformAlpha:F

.field private final freeformColor:[F

.field private final freeformLeash:Landroid/view/SurfaceControl;

.field private final freeformStroke:F

.field private final smallWindow:Lcom/miui/home/recents/views/SmallWindowCrop;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/views/SmallWindowCrop;Landroid/view/SurfaceControl;[FFF)V
    .locals 1

    const-string v0, "smallWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeformLeash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeformColor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->smallWindow:Lcom/miui/home/recents/views/SmallWindowCrop;

    .line 8
    iput-object p2, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformLeash:Landroid/view/SurfaceControl;

    .line 9
    iput-object p3, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformColor:[F

    .line 10
    iput p4, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformAlpha:F

    .line 11
    iput p5, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformStroke:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->smallWindow:Lcom/miui/home/recents/views/SmallWindowCrop;

    iget-object v3, p1, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->smallWindow:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformLeash:Landroid/view/SurfaceControl;

    iget-object v3, p1, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformLeash:Landroid/view/SurfaceControl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformColor:[F

    iget-object v3, p1, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformColor:[F

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformStroke:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformStroke:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFreeformAlpha()F
    .locals 0

    .line 10
    iget p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformAlpha:F

    return p0
.end method

.method public final getFreeformColor()[F
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformColor:[F

    return-object p0
.end method

.method public final getFreeformLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final getFreeformStroke()F
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformStroke:F

    return p0
.end method

.method public final getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->smallWindow:Lcom/miui/home/recents/views/SmallWindowCrop;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->smallWindow:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformColor:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformStroke:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmallWindowStrokeSwitchEventInfo(smallWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->smallWindow:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", freeformLeash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", freeformColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformColor:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", freeformAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freeformStroke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->freeformStroke:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
