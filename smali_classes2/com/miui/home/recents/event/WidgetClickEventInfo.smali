.class public final Lcom/miui/home/recents/event/WidgetClickEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "WidgetClickEvent.kt"


# instance fields
.field private final extraFlags:I

.field private final fillInIntent:Landroid/content/Intent;

.field private final flagsMask:I

.field private final flagsValues:I

.field private intent:Landroid/content/IntentSender;

.field private launchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

.field private final options:Landroid/os/Bundle;

.field private rect:Landroid/graphics/Rect;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "fillInIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1fc

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v12}, Lcom/miui/home/recents/event/WidgetClickEventInfo;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/view/View;Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;Landroid/content/IntentSender;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/view/View;Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;Landroid/content/IntentSender;III)V
    .locals 1

    const-string v0, "fillInIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->fillInIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->options:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->rect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->view:Landroid/view/View;

    .line 11
    iput-object p5, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->launchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iput-object p6, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->intent:Landroid/content/IntentSender;

    iput p7, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsMask:I

    iput p8, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsValues:I

    iput p9, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->extraFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/view/View;Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;Landroid/content/IntentSender;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move v10, v2

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move v11, v2

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move v12, v2

    goto :goto_6

    :cond_6
    move/from16 v12, p9

    :goto_6
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 10
    invoke-direct/range {v3 .. v12}, Lcom/miui/home/recents/event/WidgetClickEventInfo;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/view/View;Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;Landroid/content/IntentSender;III)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->fillInIntent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;->fillInIntent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->options:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;->options:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->rect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;->rect:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->view:Landroid/view/View;

    iget-object v3, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;->view:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->launchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    iget-object v3, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;->launchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->intent:Landroid/content/IntentSender;

    iget-object v3, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;->intent:Landroid/content/IntentSender;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsMask:I

    iget v3, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsMask:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsValues:I

    iget v3, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsValues:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->extraFlags:I

    iget p1, p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;->extraFlags:I

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getExtraFlags()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->extraFlags:I

    return p0
.end method

.method public final getFillInIntent()Landroid/content/Intent;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->fillInIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getFlagsMask()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsMask:I

    return p0
.end method

.method public final getFlagsValues()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsValues:I

    return p0
.end method

.method public final getIntent()Landroid/content/IntentSender;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->intent:Landroid/content/IntentSender;

    return-object p0
.end method

.method public final getLaunchAppWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->launchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    return-object p0
.end method

.method public final getOptions()Landroid/os/Bundle;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->options:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->view:Landroid/view/View;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->options:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Bundle;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->view:Landroid/view/View;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->launchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->intent:Landroid/content/IntentSender;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Landroid/content/IntentSender;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsMask:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsValues:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->extraFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setLaunchAppWidgetViewInfo(Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->launchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    return-void
.end method

.method public final setRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->view:Landroid/view/View;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetClickEventInfo(fillInIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->options:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", launchAppWidgetViewInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->launchAppWidgetViewInfo:Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->intent:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flagsMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flagsValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->flagsValues:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extraFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/event/WidgetClickEventInfo;->extraFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
