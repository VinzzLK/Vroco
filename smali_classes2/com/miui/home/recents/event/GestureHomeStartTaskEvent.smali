.class public final Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private final rectFParams:Lcom/miui/home/recents/anim/RectFParams;

.field private final taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/anim/RectFParams;Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V
    .locals 1

    const-string v0, "rectFParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskViewParamsInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    .line 178
    iput-object p2, p0, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    const/16 p1, 0x17d9

    .line 179
    iput p1, p0, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;->type:I

    return-void
.end method


# virtual methods
.method public final getRectFParams()Lcom/miui/home/recents/anim/RectFParams;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-object p0
.end method

.method public final getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;->type:I

    return p0
.end method
