.class public final Lcom/miui/home/recents/anim/TaskViewsParams;
.super Lcom/miui/home/recents/event/EventInfo;
.source "TaskViewsElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/TaskViewsParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/TaskViewsParams$Companion;


# instance fields
.field private final mode:I

.field private final targetView:Lcom/miui/home/recents/views/TaskView;

.field private final taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/TaskViewsParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/TaskViewsParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/TaskViewsParams;->Companion:Lcom/miui/home/recents/anim/TaskViewsParams$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 43
    iput p1, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->mode:I

    .line 44
    iput-object p2, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    .line 45
    iput-object p3, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->targetView:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 42
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/anim/TaskViewsParams;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->mode:I

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewsParams;->mode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    iget-object v3, p1, Lcom/miui/home/recents/anim/TaskViewsParams;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->targetView:Lcom/miui/home/recents/views/TaskView;

    iget-object p1, p1, Lcom/miui/home/recents/anim/TaskViewsParams;->targetView:Lcom/miui/home/recents/views/TaskView;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMode()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->mode:I

    return p0
.end method

.method public final getTargetView()Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->targetView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method public final getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->targetView:Lcom/miui/home/recents/views/TaskView;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskViewsParams(mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskViewParamsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsParams;->targetView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
