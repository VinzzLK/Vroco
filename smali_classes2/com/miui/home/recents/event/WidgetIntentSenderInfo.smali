.class public final Lcom/miui/home/recents/event/WidgetIntentSenderInfo;
.super Ljava/lang/Object;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private final extraFlags:I

.field private final fillInIntent:Landroid/content/Intent;

.field private final flagsMask:I

.field private final flagsValues:I

.field private final intent:Landroid/content/IntentSender;

.field private final launcher:Lcom/miui/home/launcher/Launcher;

.field private final options:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fillInIntent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->intent:Landroid/content/IntentSender;

    iput-object p3, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->fillInIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsMask:I

    iput p5, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsValues:I

    iput p6, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->extraFlags:I

    iput-object p7, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->options:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p1, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->intent:Landroid/content/IntentSender;

    iget-object v3, p1, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->intent:Landroid/content/IntentSender;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->fillInIntent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->fillInIntent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsMask:I

    iget v3, p1, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsMask:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsValues:I

    iget v3, p1, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsValues:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->extraFlags:I

    iget v3, p1, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->extraFlags:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->options:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->options:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getExtraFlags()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->extraFlags:I

    return p0
.end method

.method public final getFillInIntent()Landroid/content/Intent;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->fillInIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getFlagsMask()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsMask:I

    return p0
.end method

.method public final getFlagsValues()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsValues:I

    return p0
.end method

.method public final getIntent()Landroid/content/IntentSender;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->intent:Landroid/content/IntentSender;

    return-object p0
.end method

.method public final getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public final getOptions()Landroid/os/Bundle;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->options:Landroid/os/Bundle;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->intent:Landroid/content/IntentSender;

    invoke-virtual {v1}, Landroid/content/IntentSender;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsMask:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsValues:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->extraFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->options:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetIntentSenderInfo(launcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->intent:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fillInIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flagsMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flagsValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->flagsValues:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extraFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->extraFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->options:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
