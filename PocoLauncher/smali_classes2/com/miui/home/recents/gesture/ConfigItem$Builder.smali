.class public final Lcom/miui/home/recents/gesture/ConfigItem$Builder;
.super Ljava/lang/Object;
.source "ConfigItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/gesture/ConfigItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private actionName:Ljava/lang/String;

.field private clazzName:Ljava/lang/String;

.field private entityType:Ljava/lang/String;

.field private functionName:Ljava/lang/String;

.field private functionType:Ljava/lang/String;

.field private isSelected:Z

.field private launchType:Ljava/lang/String;

.field private methodName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private regionType:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private triggerType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "entityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->entityType:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->triggerType:I

    .line 30
    iput-object p3, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->title:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->functionType:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->functionName:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->regionType:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->launchType:Ljava/lang/String;

    .line 35
    iput-boolean p8, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->isSelected:Z

    .line 36
    iput-object p9, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->packageName:Ljava/lang/String;

    .line 37
    iput-object p10, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->clazzName:Ljava/lang/String;

    .line 38
    iput-object p11, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->actionName:Ljava/lang/String;

    .line 39
    iput-object p12, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->methodName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v2, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v6

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v6

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v6

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v4, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v6

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v6

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v6

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v6, p12

    :goto_b
    move-object p1, v1

    move p2, v3

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move/from16 p8, v4

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v6

    .line 27
    invoke-direct/range {p0 .. p12}, Lcom/miui/home/recents/gesture/ConfigItem$Builder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final actionName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->actionName:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/miui/home/recents/gesture/ConfigItem;
    .locals 14

    .line 102
    new-instance v13, Lcom/miui/home/recents/gesture/ConfigItem;

    .line 103
    iget-object v1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->entityType:Ljava/lang/String;

    .line 104
    iget v2, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->triggerType:I

    .line 105
    iget-object v3, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->title:Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->functionType:Ljava/lang/String;

    .line 107
    iget-object v5, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->functionName:Ljava/lang/String;

    .line 108
    iget-object v6, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->regionType:Ljava/lang/String;

    .line 109
    iget-object v7, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->launchType:Ljava/lang/String;

    .line 110
    iget-boolean v8, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->isSelected:Z

    .line 111
    iget-object v9, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->packageName:Ljava/lang/String;

    .line 112
    iget-object v10, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->clazzName:Ljava/lang/String;

    .line 113
    iget-object v11, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->actionName:Ljava/lang/String;

    .line 114
    iget-object v12, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->methodName:Ljava/lang/String;

    move-object v0, v13

    .line 102
    invoke-direct/range {v0 .. v12}, Lcom/miui/home/recents/gesture/ConfigItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method

.method public final clazzName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->clazzName:Ljava/lang/String;

    return-object p0
.end method

.method public final entityType(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 1

    const-string v0, "entityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->entityType:Ljava/lang/String;

    return-object p0
.end method

.method public final functionName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->functionName:Ljava/lang/String;

    return-object p0
.end method

.method public final functionType(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->functionType:Ljava/lang/String;

    return-object p0
.end method

.method public final isSelected(Z)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->isSelected:Z

    return-object p0
.end method

.method public final launchType(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->launchType:Ljava/lang/String;

    return-object p0
.end method

.method public final methodName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method public final packageName(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final regionType(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->regionType:Ljava/lang/String;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final triggerType(I)Lcom/miui/home/recents/gesture/ConfigItem$Builder;
    .locals 0

    .line 47
    iput p1, p0, Lcom/miui/home/recents/gesture/ConfigItem$Builder;->triggerType:I

    return-object p0
.end method
