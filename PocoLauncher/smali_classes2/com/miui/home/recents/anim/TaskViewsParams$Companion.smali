.class public final Lcom/miui/home/recents/anim/TaskViewsParams$Companion;
.super Ljava/lang/Object;
.source "TaskViewsElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/TaskViewsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsParams$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildAppToHomeTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;
    .locals 6

    .line 68
    new-instance p0, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final buildAppToRecentTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;
    .locals 6

    .line 72
    new-instance p0, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
