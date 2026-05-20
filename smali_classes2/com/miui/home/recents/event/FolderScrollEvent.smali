.class public final Lcom/miui/home/recents/event/FolderScrollEvent;
.super Lcom/miui/home/recents/event/Event;
.source "FolderScrollEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/FolderScrollEventInfo;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x7db

    .line 13
    iput v0, p0, Lcom/miui/home/recents/event/FolderScrollEvent;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/event/FolderScrollEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/miui/home/recents/event/FolderScrollEvent;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/home/recents/event/FolderScrollEvent;->info:Lcom/miui/home/recents/event/FolderScrollEventInfo;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/recents/event/FolderScrollEvent;->info:Lcom/miui/home/recents/event/FolderScrollEventInfo;

    if-nez p0, :cond_0

    const-string p0, "info"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 13
    iget p0, p0, Lcom/miui/home/recents/event/FolderScrollEvent;->type:I

    return p0
.end method
