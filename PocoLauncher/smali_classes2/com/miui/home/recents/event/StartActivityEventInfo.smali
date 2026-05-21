.class public final Lcom/miui/home/recents/event/StartActivityEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private final applicationStart:Lcom/miui/home/recents/event/ApplicationStartActivityInfo;

.field private final common:Lcom/miui/home/recents/event/CommonStartActivityInfo;

.field private final intentSender:Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

.field private final launcher:Lcom/miui/home/recents/event/LauncherStartActivityInfo;

.field private final superStart:Lcom/miui/home/recents/event/SuperStartActivityInfo;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;Lcom/miui/home/recents/event/ApplicationStartActivityInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;Lcom/miui/home/recents/event/ApplicationStartActivityInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;Lcom/miui/home/recents/event/ApplicationStartActivityInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;Lcom/miui/home/recents/event/ApplicationStartActivityInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;)V
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;Lcom/miui/home/recents/event/ApplicationStartActivityInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;Lcom/miui/home/recents/event/ApplicationStartActivityInfo;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->common:Lcom/miui/home/recents/event/CommonStartActivityInfo;

    .line 81
    iput-object p2, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->launcher:Lcom/miui/home/recents/event/LauncherStartActivityInfo;

    .line 82
    iput-object p3, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->superStart:Lcom/miui/home/recents/event/SuperStartActivityInfo;

    .line 83
    iput-object p4, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->intentSender:Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

    .line 84
    iput-object p5, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->applicationStart:Lcom/miui/home/recents/event/ApplicationStartActivityInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;Lcom/miui/home/recents/event/ApplicationStartActivityInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    .line 79
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;Lcom/miui/home/recents/event/ApplicationStartActivityInfo;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/StartActivityEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/StartActivityEventInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->common:Lcom/miui/home/recents/event/CommonStartActivityInfo;

    iget-object v3, p1, Lcom/miui/home/recents/event/StartActivityEventInfo;->common:Lcom/miui/home/recents/event/CommonStartActivityInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->launcher:Lcom/miui/home/recents/event/LauncherStartActivityInfo;

    iget-object v3, p1, Lcom/miui/home/recents/event/StartActivityEventInfo;->launcher:Lcom/miui/home/recents/event/LauncherStartActivityInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->superStart:Lcom/miui/home/recents/event/SuperStartActivityInfo;

    iget-object v3, p1, Lcom/miui/home/recents/event/StartActivityEventInfo;->superStart:Lcom/miui/home/recents/event/SuperStartActivityInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->intentSender:Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

    iget-object v3, p1, Lcom/miui/home/recents/event/StartActivityEventInfo;->intentSender:Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->applicationStart:Lcom/miui/home/recents/event/ApplicationStartActivityInfo;

    iget-object p1, p1, Lcom/miui/home/recents/event/StartActivityEventInfo;->applicationStart:Lcom/miui/home/recents/event/ApplicationStartActivityInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getApplicationStart()Lcom/miui/home/recents/event/ApplicationStartActivityInfo;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->applicationStart:Lcom/miui/home/recents/event/ApplicationStartActivityInfo;

    return-object p0
.end method

.method public final getCommon()Lcom/miui/home/recents/event/CommonStartActivityInfo;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->common:Lcom/miui/home/recents/event/CommonStartActivityInfo;

    return-object p0
.end method

.method public final getIntentSender()Lcom/miui/home/recents/event/WidgetIntentSenderInfo;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->intentSender:Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

    return-object p0
.end method

.method public final getLauncher()Lcom/miui/home/recents/event/LauncherStartActivityInfo;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->launcher:Lcom/miui/home/recents/event/LauncherStartActivityInfo;

    return-object p0
.end method

.method public final getSuperStart()Lcom/miui/home/recents/event/SuperStartActivityInfo;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->superStart:Lcom/miui/home/recents/event/SuperStartActivityInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->common:Lcom/miui/home/recents/event/CommonStartActivityInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/recents/event/CommonStartActivityInfo;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->launcher:Lcom/miui/home/recents/event/LauncherStartActivityInfo;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/recents/event/LauncherStartActivityInfo;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->superStart:Lcom/miui/home/recents/event/SuperStartActivityInfo;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/recents/event/SuperStartActivityInfo;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->intentSender:Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->applicationStart:Lcom/miui/home/recents/event/ApplicationStartActivityInfo;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/recents/event/ApplicationStartActivityInfo;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartActivityEventInfo(common="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->common:Lcom/miui/home/recents/event/CommonStartActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", launcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->launcher:Lcom/miui/home/recents/event/LauncherStartActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", superStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->superStart:Lcom/miui/home/recents/event/SuperStartActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intentSender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->intentSender:Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/StartActivityEventInfo;->applicationStart:Lcom/miui/home/recents/event/ApplicationStartActivityInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
