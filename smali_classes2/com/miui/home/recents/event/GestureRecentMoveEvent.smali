.class public final Lcom/miui/home/recents/event/GestureRecentMoveEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/event/GestureRecentMoveEvent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/event/GestureRecentMoveEvent$Companion;


# instance fields
.field private final info:Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;

.field private final mode:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/event/GestureRecentMoveEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/event/GestureRecentMoveEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/event/GestureRecentMoveEvent;->Companion:Lcom/miui/home/recents/event/GestureRecentMoveEvent$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/miui/home/recents/event/GestureRecentMoveEventInfo;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/event/GestureRecentMoveEvent;->mode:I

    iput-object p2, p0, Lcom/miui/home/recents/event/GestureRecentMoveEvent;->info:Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;

    const/16 p1, 0x183a

    .line 187
    iput p1, p0, Lcom/miui/home/recents/event/GestureRecentMoveEvent;->type:I

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureRecentMoveEvent;->info:Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;

    return-object p0
.end method

.method public final getMode()I
    .locals 0

    .line 186
    iget p0, p0, Lcom/miui/home/recents/event/GestureRecentMoveEvent;->mode:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/miui/home/recents/event/GestureRecentMoveEvent;->type:I

    return p0
.end method
