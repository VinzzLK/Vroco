.class public final Lcom/miui/home/recents/event/SuperStartActivityInfo;
.super Ljava/lang/Object;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final isWidget:Z

.field private final launcher:Lcom/miui/home/launcher/Launcher;

.field private final options:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->options:Landroid/os/Bundle;

    iput-boolean p4, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->isWidget:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/SuperStartActivityInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/SuperStartActivityInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p1, Lcom/miui/home/recents/event/SuperStartActivityInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->intent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/miui/home/recents/event/SuperStartActivityInfo;->intent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->options:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/miui/home/recents/event/SuperStartActivityInfo;->options:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->isWidget:Z

    iget-boolean p1, p1, Lcom/miui/home/recents/event/SuperStartActivityInfo;->isWidget:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public final getOptions()Landroid/os/Bundle;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->options:Landroid/os/Bundle;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->options:Landroid/os/Bundle;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/os/Bundle;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->isWidget:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    :cond_2
    add-int/2addr v0, p0

    return v0
.end method

.method public final isWidget()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->isWidget:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuperStartActivityInfo(launcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->options:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/event/SuperStartActivityInfo;->isWidget:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
