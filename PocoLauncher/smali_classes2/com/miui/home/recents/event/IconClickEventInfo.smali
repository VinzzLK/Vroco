.class public final Lcom/miui/home/recents/event/IconClickEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "IconClickEvent.kt"


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final tag:Ljava/lang/Object;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->tag:Ljava/lang/Object;

    iput-object p3, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/IconClickEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/IconClickEventInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->intent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/miui/home/recents/event/IconClickEventInfo;->intent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->tag:Ljava/lang/Object;

    iget-object v3, p1, Lcom/miui/home/recents/event/IconClickEventInfo;->tag:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->view:Landroid/view/View;

    iget-object p1, p1, Lcom/miui/home/recents/event/IconClickEventInfo;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->view:Landroid/view/View;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->tag:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconClickEventInfo(intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/IconClickEventInfo;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
