.class public Lcom/miui/home/recents/event/Event;
.super Ljava/lang/Object;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/event/Event$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/event/Event$Companion;


# instance fields
.field private info:Lcom/miui/home/recents/event/EventInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/event/Event$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/event/Event$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/event/Event;->Companion:Lcom/miui/home/recents/event/Event$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/recents/event/Event;->info:Lcom/miui/home/recents/event/EventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
