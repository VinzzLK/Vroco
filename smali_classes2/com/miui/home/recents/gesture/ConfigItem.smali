.class public final Lcom/miui/home/recents/gesture/ConfigItem;
.super Ljava/lang/Object;
.source "ConfigItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    }
.end annotation


# instance fields
.field private final actionName:Ljava/lang/String;

.field private final clazzName:Ljava/lang/String;

.field private final entityType:Ljava/lang/String;

.field private final functionName:Ljava/lang/String;

.field private final functionType:Ljava/lang/String;

.field private final isSelected:Z

.field private final launchType:Ljava/lang/String;

.field private final methodName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final regionType:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final triggerType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "entityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->entityType:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/miui/home/recents/gesture/ConfigItem;->triggerType:I

    .line 16
    iput-object p3, p0, Lcom/miui/home/recents/gesture/ConfigItem;->title:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionType:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionName:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lcom/miui/home/recents/gesture/ConfigItem;->regionType:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/miui/home/recents/gesture/ConfigItem;->launchType:Ljava/lang/String;

    .line 21
    iput-boolean p8, p0, Lcom/miui/home/recents/gesture/ConfigItem;->isSelected:Z

    .line 22
    iput-object p9, p0, Lcom/miui/home/recents/gesture/ConfigItem;->packageName:Ljava/lang/String;

    .line 23
    iput-object p10, p0, Lcom/miui/home/recents/gesture/ConfigItem;->clazzName:Ljava/lang/String;

    .line 24
    iput-object p11, p0, Lcom/miui/home/recents/gesture/ConfigItem;->actionName:Ljava/lang/String;

    .line 25
    iput-object p12, p0, Lcom/miui/home/recents/gesture/ConfigItem;->methodName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/miui/home/recents/gesture/ConfigItem;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/home/recents/gesture/ConfigItem;->entityType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/miui/home/recents/gesture/ConfigItem;->triggerType:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/miui/home/recents/gesture/ConfigItem;->title:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/miui/home/recents/gesture/ConfigItem;->functionType:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/miui/home/recents/gesture/ConfigItem;->functionName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/miui/home/recents/gesture/ConfigItem;->regionType:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/miui/home/recents/gesture/ConfigItem;->launchType:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/miui/home/recents/gesture/ConfigItem;->isSelected:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/miui/home/recents/gesture/ConfigItem;->packageName:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/miui/home/recents/gesture/ConfigItem;->clazzName:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/miui/home/recents/gesture/ConfigItem;->actionName:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/miui/home/recents/gesture/ConfigItem;->methodName:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v1, p12

    :goto_b
    move-object p1, v2

    move p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/miui/home/recents/gesture/ConfigItem;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem;
    .locals 14

    const-string v0, "entityType"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/home/recents/gesture/ConfigItem;

    move-object v1, v0

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/miui/home/recents/gesture/ConfigItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/gesture/ConfigItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/gesture/ConfigItem;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->entityType:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->entityType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->triggerType:I

    iget v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->triggerType:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionType:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->functionType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->functionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->regionType:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->regionType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->launchType:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->launchType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->isSelected:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->isSelected:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->clazzName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->clazzName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->actionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/gesture/ConfigItem;->actionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->methodName:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/home/recents/gesture/ConfigItem;->methodName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getActionName()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->actionName:Ljava/lang/String;

    return-object p0
.end method

.method public final getClazzName()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->clazzName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEntityType()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->entityType:Ljava/lang/String;

    return-object p0
.end method

.method public final getFunctionName()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFunctionType()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionType:Ljava/lang/String;

    return-object p0
.end method

.method public final getLaunchType()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->launchType:Ljava/lang/String;

    return-object p0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRegionType()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->regionType:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTriggerType()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->triggerType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->entityType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->triggerType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionName:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->regionType:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->launchType:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->isSelected:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->packageName:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->clazzName:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->actionName:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->methodName:Ljava/lang/String;

    if-nez p0, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSelected()Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->isSelected:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigItem(entityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->entityType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", triggerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->triggerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", functionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", functionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->regionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", launchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->launchType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clazzName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->clazzName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", methodName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/gesture/ConfigItem;->methodName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
