.class public final Lcom/miui/home/recents/event/DrawerScrollInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "DrawerScrollEvent.kt"


# instance fields
.field private final bottom:I

.field private final forceStop:Z

.field private final top:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->top:I

    iput p2, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->bottom:I

    iput-boolean p3, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->forceStop:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/DrawerScrollInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/DrawerScrollInfo;

    iget v1, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->top:I

    iget v3, p1, Lcom/miui/home/recents/event/DrawerScrollInfo;->top:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->bottom:I

    iget v3, p1, Lcom/miui/home/recents/event/DrawerScrollInfo;->bottom:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->forceStop:Z

    iget-boolean p1, p1, Lcom/miui/home/recents/event/DrawerScrollInfo;->forceStop:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBottom()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->bottom:I

    return p0
.end method

.method public final getForceStop()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->forceStop:Z

    return p0
.end method

.method public final getTop()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->top:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->forceStop:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawerScrollInfo(top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forceStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/event/DrawerScrollInfo;->forceStop:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
