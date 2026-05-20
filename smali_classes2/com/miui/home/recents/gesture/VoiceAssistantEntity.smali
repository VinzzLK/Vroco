.class public final Lcom/miui/home/recents/gesture/VoiceAssistantEntity;
.super Lcom/miui/home/recents/gesture/BaseEntity;
.source "NavStubEventEntity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavStubEventEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavStubEventEntity.kt\ncom/miui/home/recents/gesture/VoiceAssistantEntity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,305:1\n1851#2,2:306\n*S KotlinDebug\n*F\n+ 1 NavStubEventEntity.kt\ncom/miui/home/recents/gesture/VoiceAssistantEntity\n*L\n299#1:306,2\n*E\n"
.end annotation


# instance fields
.field private final DOUBLE_CLICK_AND_LONG_PRESS_FULLSCREEN_GESTURE_LINE:Ljava/lang/String;

.field private final DOUBLE_CLICK_FULLSCREEN_GESTURE_LINE:Ljava/lang/String;

.field private final LONG_PRESS_FULLSCREEN_GESTURE_LINE:Ljava/lang/String;

.field private final NONE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field public clazzName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clazzName"
    .end annotation
.end field

.field public pkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pkgName"
    .end annotation
.end field

.field public startFromValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startFromValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 252
    invoke-direct {p0}, Lcom/miui/home/recents/gesture/BaseEntity;-><init>()V

    const-string v0, "VoiceAssistantEntity"

    .line 253
    iput-object v0, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->TAG:Ljava/lang/String;

    const-string v0, "long_press_fullscreen_gesture_line"

    .line 264
    iput-object v0, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->LONG_PRESS_FULLSCREEN_GESTURE_LINE:Ljava/lang/String;

    const-string v0, "double_click_fullscreen_gesture_line"

    .line 265
    iput-object v0, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->DOUBLE_CLICK_FULLSCREEN_GESTURE_LINE:Ljava/lang/String;

    const-string v0, "double_click_and_long_press_fullscreen_gesture_line"

    .line 266
    iput-object v0, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->DOUBLE_CLICK_AND_LONG_PRESS_FULLSCREEN_GESTURE_LINE:Ljava/lang/String;

    const-string v0, "none"

    .line 267
    iput-object v0, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->NONE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asConfigItemList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/gesture/ConfigItem;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getStartFromValue()Ljava/lang/String;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->LONG_PRESS_FULLSCREEN_GESTURE_LINE:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/BaseEntity;->getTriggerType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 274
    new-instance v1, Lcom/miui/home/recents/gesture/ConfigItem;

    const/4 v4, 0x2

    const/4 v10, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getClazzName()Ljava/lang/String;

    move-result-object v12

    const-string v3, "VoiceAssistantScreenRecognizer"

    const-string v5, "VoiceAssistantScreenRecognizer"

    const-string v6, ""

    const-string v7, ""

    const-string v8, "cn"

    const-string v9, "Service"

    const-string v13, "android.intent.action.ASSIST"

    const-string v14, ""

    move-object v2, v1

    .line 274
    invoke-direct/range {v2 .. v14}, Lcom/miui/home/recents/gesture/ConfigItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->DOUBLE_CLICK_FULLSCREEN_GESTURE_LINE:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/BaseEntity;->getTriggerType()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 280
    new-instance v1, Lcom/miui/home/recents/gesture/ConfigItem;

    const/4 v4, 0x4

    const/4 v10, 0x1

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getClazzName()Ljava/lang/String;

    move-result-object v12

    const-string v3, "VoiceAssistant"

    const-string v5, "VoiceAssistant"

    const-string v6, ""

    const-string v7, ""

    const-string v8, "cn"

    const-string v9, "Service"

    const-string v13, "android.intent.action.ASSIST"

    const-string v14, ""

    move-object v2, v1

    .line 280
    invoke-direct/range {v2 .. v14}, Lcom/miui/home/recents/gesture/ConfigItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->NONE:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 288
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/BaseEntity;->getTriggerType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 289
    new-instance v1, Lcom/miui/home/recents/gesture/ConfigItem;

    const/4 v4, 0x2

    const/4 v10, 0x1

    .line 290
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getClazzName()Ljava/lang/String;

    move-result-object v12

    const-string v3, "VoiceAssistantScreenRecognizer"

    const-string v5, "VoiceAssistantScreenRecognizer"

    const-string v6, ""

    const-string v7, ""

    const-string v8, "cn"

    const-string v9, "Service"

    const-string v13, "android.intent.action.ASSIST"

    const-string v14, ""

    move-object v2, v1

    .line 289
    invoke-direct/range {v2 .. v14}, Lcom/miui/home/recents/gesture/ConfigItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/BaseEntity;->getTriggerType()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 293
    new-instance v1, Lcom/miui/home/recents/gesture/ConfigItem;

    const/4 v4, 0x4

    const/4 v10, 0x1

    .line 294
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getClazzName()Ljava/lang/String;

    move-result-object v12

    const-string v3, "VoiceAssistant"

    const-string v5, "VoiceAssistant"

    const-string v6, ""

    const-string v7, ""

    const-string v8, "cn"

    const-string v9, "Service"

    const-string v13, "android.intent.action.ASSIST"

    const-string v14, ""

    move-object v2, v1

    .line 293
    invoke-direct/range {v2 .. v14}, Lcom/miui/home/recents/gesture/ConfigItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/gesture/ConfigItem;

    .line 300
    iget-object v3, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asConfigItemList startFromValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->getStartFromValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", item\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final getClazzName()Ljava/lang/String;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->clazzName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "clazzName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPkgName()Ljava/lang/String;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->pkgName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pkgName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStartFromValue()Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/miui/home/recents/gesture/VoiceAssistantEntity;->startFromValue:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "startFromValue"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
